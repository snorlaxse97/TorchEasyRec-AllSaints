CREATE TABLE IF NOT EXISTS common_feat_dwd_rec_user_song_behavior_dip_1001_preprocess
(
    request_id       STRING
    ,identity_id     STRING
    ,item_id         STRING
    ,event           STRING
    ,event_scene_id  STRING
    ,event_value     DOUBLE
    ,event_unix_time BIGINT
    ,day_h           BIGINT COMMENT 'event_timestamp在当天的第几小时'
    ,week_day        BIGINT COMMENT 'event_timestamp在一周得第几天'
)
PARTITIONED BY 
(
    p_date           STRING
)
LIFECYCLE 100
;

INSERT OVERWRITE TABLE common_feat_dwd_rec_user_song_behavior_dip_1001_preprocess PARTITION (p_date = '${bdp.system.bizdate}')
SELECT  request_id
        ,identity_id
        ,item_id
        ,event
        ,CASE   WHEN event_scene_id = 'musicModelDefault' THEN 'music_model_default'
                WHEN event_scene_id = 'musicModelAttuned' THEN 'music_model_attuned'
                WHEN event_scene_id = 'musicModelNew' THEN 'music_model_new'
                ELSE event_scene_id
        END AS event_scene_id
        ,event_value
        ,event_timestamp event_unix_time
        ,DATEPART(FROM_UNIXTIME(event_timestamp),'hh') day_h
        ,WEEKDAY(FROM_UNIXTIME(event_timestamp)) week_day
FROM    dws_rec.dwd_rec_user_item_behavior_dip_1001
WHERE   p_date = '${bdp.system.bizdate}'
;