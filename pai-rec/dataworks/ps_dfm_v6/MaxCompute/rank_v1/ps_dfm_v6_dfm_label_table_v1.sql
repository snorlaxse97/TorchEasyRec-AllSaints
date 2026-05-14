CREATE TABLE IF NOT EXISTS ps_dfm_v6_dfm_label_table_v1
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
            ,event_scene_id
            ,TO_CHAR(FROM_UNIXTIME(MIN(event_unix_time)),'yyyymmddhhmi') day_min
            ,MIN(event_unix_time) event_unix_time
            ,MAX(day_h) day_h
            ,MAX(week_day) week_day
            ,MAX(IF(event = 'click',1,0)) is_click
    FROM    common_feat_dwd_rec_user_song_behavior_dip_1001_preprocess
    WHERE   p_date = '${bdp.system.bizdate}'
    AND     event_scene_id = '58463'
    GROUP BY request_id
             ,identity_id
             ,item_id
             ,event_scene_id
)
INSERT OVERWRITE TABLE ps_dfm_v6_dfm_label_table_v1 PARTITION (p_date = '${bdp.system.bizdate}')
SELECT  t2.*
FROM    (
            SELECT  DISTINCT identity_id
            FROM    temp
            WHERE   is_click = 1
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
            FROM    temp
        ) t2
ON      t1.identity_id = t2.identity_id
;