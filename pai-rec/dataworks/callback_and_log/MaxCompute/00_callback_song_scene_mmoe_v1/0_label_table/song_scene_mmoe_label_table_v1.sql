CREATE TABLE IF NOT EXISTS song_scene_mmoe_label_table_v1
(
    request_id       STRING
    ,__identity_id__ STRING
    ,identity_id     STRING
    ,__item_id__     STRING
    ,item_id         STRING
    ,event_scene_id  STRING
    ,day_min         STRING
    ,event_unix_time BIGINT
    ,day_h           BIGINT COMMENT 'event_timestamp在当天的第几小时'
    ,week_day        BIGINT COMMENT 'event_timestamp在一周得第几天'
    ,is_click        BIGINT
    ,is_valid        BIGINT
    ,is_full         BIGINT
    ,play_duration   BIGINT
)
PARTITIONED BY 
(
    p_date           STRING
)
LIFECYCLE 60
;

WITH temp AS 
(
    SELECT  request_id
            ,identity_id
            ,identity_id __identity_id__
            ,item_id
            ,item_id __item_id__
            ,CASE   WHEN event_scene_id = '58463' THEN 'personalSong'
                    WHEN event_scene_id = 'daily_recommend' THEN 'dailyReco'
                    WHEN event_scene_id = 'music_model_default' THEN 'musicModelDefault'
                    ELSE event_scene_id
            END event_scene_id
            ,TO_CHAR(FROM_UNIXTIME(MIN(event_unix_time)),'yyyymmddhhmi') day_min
            ,MIN(event_unix_time) event_unix_time
            ,MAX(day_h) day_h
            ,MAX(week_day) week_day
            ,MAX(IF(event = 'click',1,0)) is_click
            ,MAX(IF(event = 'valid_play',1,0)) is_valid
            ,MAX(if(event='full_play', 1, 0)) is_full
            ,MAX(event_value) event_value
    FROM    dws_rec.common_feat_dwd_rec_user_song_behavior_dip_1001_preprocess
    WHERE   p_date = '${bdp.system.bizdate}'
    AND     event_scene_id IN ('58463','daily_recommend','music_model_default')
    GROUP BY request_id
             ,identity_id
             ,item_id
             ,event_scene_id
)
INSERT OVERWRITE TABLE dws_rec.song_scene_mmoe_label_table_v1 PARTITION (p_date = '${bdp.system.bizdate}')
SELECT  request_id
        ,t2.identity_id
        ,__identity_id__
        ,item_id
        ,__item_id__
        ,event_scene_id
        ,day_min
        ,event_unix_time
        ,day_h
        ,week_day
        ,is_click
        ,is_valid
        ,is_full
        ,CASE   WHEN event_value <= 340 THEN CEIL(event_value / 10) - 1
                ELSE 34
        END AS play_duration
FROM    (
            SELECT  DISTINCT identity_id
            FROM    temp
            WHERE   is_click = 1 OR is_valid = 1
        ) t1
JOIN    (
            SELECT  request_id
                    ,identity_id
                    ,__identity_id__
                    ,item_id
                    ,__item_id__
                    ,event_scene_id
                    ,day_min
                    ,event_unix_time
                    ,day_h
                    ,week_day
                    ,is_click
                    ,is_valid
                    ,is_full
                    ,event_value
            FROM    temp
        ) t2
ON      t1.identity_id = t2.identity_id
;

