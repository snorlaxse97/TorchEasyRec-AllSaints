CREATE TABLE IF NOT EXISTS mmd_dfm_v1_dwd_rec_user_item_behavior_dip_1001_wide_v1 
(
    request_id string
    ,identity_id string
    ,item_id string
    ,event string
    ,event_scene_id string
    ,event_value double
    ,event_unix_time bigint
    ,day_h bigint COMMENT 'event_timestamp在当天的第几小时'
    ,week_day bigint COMMENT 'event_timestamp在一周得第几天'
    ,user_type bigint
    ,terminal_model string
    ,age_group bigint
    ,gender bigint
    ,music_vip_type bigint
    ,used_competitors_last_7d string
    ,user_register_date bigint COMMENT 'user侧register_date距今多天'
    ,singer_id string
    ,composer string
    ,lyric_writer string
    ,language_tag_id_lv2 string
    ,language_tag_id_lv3 string
    ,style_tag_id_lv2 string
    ,style_tag_id_lv3 string
    ,age_tag_id_lv2 string
    ,age_tag_id_lv3 string
    ,song_business_model string
    ,song_length double
    ,song_name_purified string
    ,item_listing_time bigint COMMENT 'item侧publish_date距今多天'
)
PARTITIONED BY 
(
    p_date string
)
LIFECYCLE 60
;
INSERT OVERWRITE TABLE mmd_dfm_v1_dwd_rec_user_item_behavior_dip_1001_wide_v1 PARTITION(p_date='${bdp.system.bizdate}')
SELECT  sq0.request_id
        ,sq0.identity_id
        ,sq0.item_id
        ,sq0.event
        ,sq0.event_scene_id
        ,sq0.event_value
        ,sq0.event_unix_time
        ,sq0.day_h
        ,sq0.week_day
        ,sq1.user_type
        ,sq1.terminal_model
        ,sq1.age_group
        ,sq1.gender
        ,sq1.music_vip_type
        ,sq1.used_competitors_last_7d
        ,sq1.user_register_date
        ,sq2.singer_id
        ,sq2.composer
        ,sq2.lyric_writer
        ,sq2.language_tag_id_lv2
        ,sq2.language_tag_id_lv3
        ,sq2.style_tag_id_lv2
        ,sq2.style_tag_id_lv3
        ,sq2.age_tag_id_lv2
        ,sq2.age_tag_id_lv3
        ,sq2.song_business_model
        ,sq2.song_length
        ,sq2.song_name_purified
        ,sq2.item_listing_time
FROM    (
            SELECT  *
            FROM    mmd_dfm_v1_dwd_rec_user_item_behavior_dip_1001_preprocess_v1
            WHERE   p_date = '${bdp.system.bizdate}'
        ) sq0
LEFT JOIN (
              SELECT  *
              FROM    mmd_dfm_v1_dim_rec_user_info_dfp_1001_preprocess_v1
              WHERE   p_date = '${bdp.system.bizdate}'
          ) sq1
ON      sq0.identity_id = sq1.identity_id LEFT
JOIN    (
            SELECT  *
            FROM    mmd_dfm_v1_dim_rec_item_song_info_dfp_1001_preprocess_v1
            WHERE   p_date = '${bdp.system.bizdate}'
        ) sq2
ON      sq0.item_id = sq2.item_id
;
