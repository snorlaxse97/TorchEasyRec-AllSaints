CREATE TABLE IF NOT EXISTS ps_dfm_v6_dim_rec_user_info_dfp_1001_all_feat_v1
(
    identity_id                                                           STRING
    ,user_type                                                            BIGINT
    ,terminal_model                                                       STRING
    ,age_group                                                            BIGINT
    ,gender                                                               BIGINT
    ,music_vip_type                                                       BIGINT
    ,used_competitors_last_7d                                             STRING
    ,user_register_date                                                   BIGINT COMMENT 'user侧register_date距今多天'
    ,user__cnt_play_30d                                                   BIGINT
    ,user__cnt_valid_play_30d                                             BIGINT
    ,user__cnt_full_play_30d                                              BIGINT
    ,user__cnt_collect_30d                                                BIGINT
    ,user__cnt_download_30d                                               BIGINT
    ,user__cnt_comment_30d                                                BIGINT
    ,user__cnt_share_30d                                                  BIGINT
    ,user__cnt_play_15d                                                   BIGINT
    ,user__cnt_valid_play_15d                                             BIGINT
    ,user__cnt_full_play_15d                                              BIGINT
    ,user__cnt_collect_15d                                                BIGINT
    ,user__cnt_download_15d                                               BIGINT
    ,user__cnt_comment_15d                                                BIGINT
    ,user__cnt_share_15d                                                  BIGINT
    ,user__cnt_play_3d                                                    BIGINT
    ,user__cnt_valid_play_3d                                              BIGINT
    ,user__cnt_full_play_3d                                               BIGINT
    ,user__cnt_collect_3d                                                 BIGINT
    ,user__cnt_download_3d                                                BIGINT
    ,user__cnt_comment_3d                                                 BIGINT
    ,user__cnt_share_3d                                                   BIGINT
    ,user__cnt_expose_58463_30d                                           BIGINT
    ,user__cnt_click_58463_30d                                            BIGINT
    ,user__cnt_play_58463_30d                                             BIGINT
    ,user__cnt_valid_play_58463_30d                                       BIGINT
    ,user__cnt_full_play_58463_30d                                        BIGINT
    ,user__cnt_expose_58463_15d                                           BIGINT
    ,user__cnt_click_58463_15d                                            BIGINT
    ,user__cnt_play_58463_15d                                             BIGINT
    ,user__cnt_valid_play_58463_15d                                       BIGINT
    ,user__cnt_full_play_58463_15d                                        BIGINT
    ,user__cnt_expose_58463_3d                                            BIGINT
    ,user__cnt_click_58463_3d                                             BIGINT
    ,user__cnt_play_58463_3d                                              BIGINT
    ,user__cnt_valid_play_58463_3d                                        BIGINT
    ,user__cnt_full_play_58463_3d                                         BIGINT
    ,user__num_play_sum_event_value_58463_30d                             DOUBLE
    ,user__num_play_sum_event_value_58463_15d                             DOUBLE
    ,user__num_play_sum_event_value_58463_3d                              DOUBLE
    ,user__num_play_avg_event_value_58463_30d                             DOUBLE
    ,user__num_play_avg_event_value_58463_15d                             DOUBLE
    ,user__num_play_avg_event_value_58463_3d                              DOUBLE
    ,user__ratio_click_expose_58463_30d                                   DOUBLE
    ,user__ratio_click_expose_58463_15d                                   DOUBLE
    ,user__ratio_click_expose_58463_3d                                    DOUBLE
    ,user__kv_num_full_play_song_business_model_sum_event_value_58463_30d STRING
    ,user__kv_num_full_play_song_business_model_sum_event_value_58463_15d STRING
    ,user__kv_num_full_play_song_business_model_sum_event_value_58463_3d  STRING
    ,user__kv_item_id_expose_58463_30d                                    STRING
    ,user__kv_singer_id_expose_58463_30d                                  STRING
    ,user__kv_style_tag_id_lv2_expose_58463_30d                           STRING
    ,user__kv_item_id_click_58463_30d                                     STRING
    ,user__kv_singer_id_click_58463_30d                                   STRING
    ,user__kv_style_tag_id_lv2_click_58463_30d                            STRING
    ,user__kv_item_id_play_58463_30d                                      STRING
    ,user__kv_singer_id_play_58463_30d                                    STRING
    ,user__kv_style_tag_id_lv2_play_58463_30d                             STRING
    ,user__kv_item_id_valid_play_58463_30d                                STRING
    ,user__kv_singer_id_valid_play_58463_30d                              STRING
    ,user__kv_style_tag_id_lv2_valid_play_58463_30d                       STRING
    ,user__kv_item_id_full_play_58463_30d                                 STRING
    ,user__kv_singer_id_full_play_58463_30d                               STRING
    ,user__kv_style_tag_id_lv2_full_play_58463_30d                        STRING
    ,user__kv_item_id_expose_58463_15d                                    STRING
    ,user__kv_singer_id_expose_58463_15d                                  STRING
    ,user__kv_style_tag_id_lv2_expose_58463_15d                           STRING
    ,user__kv_item_id_click_58463_15d                                     STRING
    ,user__kv_singer_id_click_58463_15d                                   STRING
    ,user__kv_style_tag_id_lv2_click_58463_15d                            STRING
    ,user__kv_item_id_play_58463_15d                                      STRING
    ,user__kv_singer_id_play_58463_15d                                    STRING
    ,user__kv_style_tag_id_lv2_play_58463_15d                             STRING
    ,user__kv_item_id_valid_play_58463_15d                                STRING
    ,user__kv_singer_id_valid_play_58463_15d                              STRING
    ,user__kv_style_tag_id_lv2_valid_play_58463_15d                       STRING
    ,user__kv_item_id_full_play_58463_15d                                 STRING
    ,user__kv_singer_id_full_play_58463_15d                               STRING
    ,user__kv_style_tag_id_lv2_full_play_58463_15d                        STRING
    ,user__kv_item_id_expose_58463_3d                                     STRING
    ,user__kv_singer_id_expose_58463_3d                                   STRING
    ,user__kv_style_tag_id_lv2_expose_58463_3d                            STRING
    ,user__kv_item_id_click_58463_3d                                      STRING
    ,user__kv_singer_id_click_58463_3d                                    STRING
    ,user__kv_style_tag_id_lv2_click_58463_3d                             STRING
    ,user__kv_item_id_play_58463_3d                                       STRING
    ,user__kv_singer_id_play_58463_3d                                     STRING
    ,user__kv_style_tag_id_lv2_play_58463_3d                              STRING
    ,user__kv_item_id_valid_play_58463_3d                                 STRING
    ,user__kv_singer_id_valid_play_58463_3d                               STRING
    ,user__kv_style_tag_id_lv2_valid_play_58463_3d                        STRING
    ,user__kv_item_id_full_play_58463_3d                                  STRING
    ,user__kv_singer_id_full_play_58463_3d                                STRING
    ,user__kv_style_tag_id_lv2_full_play_58463_3d                         STRING
    ,user__kv_item_id_valid_play_30d                                      STRING
    ,user__kv_style_tag_id_lv2_valid_play_30d                             STRING
    ,user__kv_singer_id_valid_play_30d                                    STRING
    ,user__kv_item_id_full_play_30d                                       STRING
    ,user__kv_style_tag_id_lv2_full_play_30d                              STRING
    ,user__kv_singer_id_full_play_30d                                     STRING
    ,user__kv_item_id_collect_30d                                         STRING
    ,user__kv_style_tag_id_lv2_collect_30d                                STRING
    ,user__kv_singer_id_collect_30d                                       STRING
    ,user__kv_item_id_download_30d                                        STRING
    ,user__kv_style_tag_id_lv2_download_30d                               STRING
    ,user__kv_singer_id_download_30d                                      STRING
    ,user__kv_item_id_share_30d                                           STRING
    ,user__kv_style_tag_id_lv2_share_30d                                  STRING
    ,user__kv_singer_id_share_30d                                         STRING
    ,user__kv_item_id_valid_play_15d                                      STRING
    ,user__kv_style_tag_id_lv2_valid_play_15d                             STRING
    ,user__kv_singer_id_valid_play_15d                                    STRING
    ,user__kv_item_id_full_play_15d                                       STRING
    ,user__kv_style_tag_id_lv2_full_play_15d                              STRING
    ,user__kv_singer_id_full_play_15d                                     STRING
    ,user__kv_item_id_collect_15d                                         STRING
    ,user__kv_style_tag_id_lv2_collect_15d                                STRING
    ,user__kv_singer_id_collect_15d                                       STRING
    ,user__kv_item_id_download_15d                                        STRING
    ,user__kv_style_tag_id_lv2_download_15d                               STRING
    ,user__kv_singer_id_download_15d                                      STRING
    ,user__kv_item_id_share_15d                                           STRING
    ,user__kv_style_tag_id_lv2_share_15d                                  STRING
    ,user__kv_singer_id_share_15d                                         STRING
    ,user__kv_item_id_valid_play_3d                                       STRING
    ,user__kv_style_tag_id_lv2_valid_play_3d                              STRING
    ,user__kv_singer_id_valid_play_3d                                     STRING
    ,user__kv_item_id_full_play_3d                                        STRING
    ,user__kv_style_tag_id_lv2_full_play_3d                               STRING
    ,user__kv_singer_id_full_play_3d                                      STRING
    ,user__kv_item_id_collect_3d                                          STRING
    ,user__kv_style_tag_id_lv2_collect_3d                                 STRING
    ,user__kv_singer_id_collect_3d                                        STRING
    ,user__kv_item_id_download_3d                                         STRING
    ,user__kv_style_tag_id_lv2_download_3d                                STRING
    ,user__kv_singer_id_download_3d                                       STRING
    ,user__kv_item_id_share_3d                                            STRING
    ,user__kv_style_tag_id_lv2_share_3d                                   STRING
    ,user__kv_singer_id_share_3d                                          STRING
    ,user__kv_ratio_item_id_click_expose_58463_30d                        STRING
    ,user__kv_ratio_style_tag_id_lv2_click_expose_58463_30d               STRING
    ,user__kv_ratio_singer_id_click_expose_58463_30d                      STRING
    ,user__kv_ratio_item_id_click_expose_58463_15d                        STRING
    ,user__kv_ratio_style_tag_id_lv2_click_expose_58463_15d               STRING
    ,user__kv_ratio_singer_id_click_expose_58463_15d                      STRING
    ,user__kv_ratio_item_id_click_expose_58463_3d                         STRING
    ,user__kv_ratio_style_tag_id_lv2_click_expose_58463_3d                STRING
    ,user__kv_ratio_singer_id_click_expose_58463_3d                       STRING
)
PARTITIONED BY 
(
    p_date                                                                STRING
)
LIFECYCLE 60
;

SET odps.stage.mapper.split.size = 8
;

INSERT OVERWRITE TABLE ps_dfm_v6_dim_rec_user_info_dfp_1001_all_feat_v1 PARTITION (p_date = '${bdp.system.bizdate}')
SELECT  sq0.identity_id
        ,sq0.user_type
        ,sq0.terminal_model
        ,sq0.age_group
        ,sq0.gender
        ,sq0.music_vip_type
        ,sq0.used_competitors_last_7d
        ,sq0.user_register_date
        ,sq1.user__cnt_play_30d
        ,sq1.user__cnt_valid_play_30d
        ,sq1.user__cnt_full_play_30d
        ,sq1.user__cnt_collect_30d
        ,sq1.user__cnt_download_30d
        ,sq1.user__cnt_comment_30d
        ,sq1.user__cnt_share_30d
        ,sq1.user__cnt_play_15d
        ,sq1.user__cnt_valid_play_15d
        ,sq1.user__cnt_full_play_15d
        ,sq1.user__cnt_collect_15d
        ,sq1.user__cnt_download_15d
        ,sq1.user__cnt_comment_15d
        ,sq1.user__cnt_share_15d
        ,sq1.user__cnt_play_3d
        ,sq1.user__cnt_valid_play_3d
        ,sq1.user__cnt_full_play_3d
        ,sq1.user__cnt_collect_3d
        ,sq1.user__cnt_download_3d
        ,sq1.user__cnt_comment_3d
        ,sq1.user__cnt_share_3d
        ,sq2.user__cnt_expose_58463_30d
        ,sq2.user__cnt_click_58463_30d
        ,sq2.user__cnt_play_58463_30d
        ,sq2.user__cnt_valid_play_58463_30d
        ,sq2.user__cnt_full_play_58463_30d
        ,sq2.user__cnt_expose_58463_15d
        ,sq2.user__cnt_click_58463_15d
        ,sq2.user__cnt_play_58463_15d
        ,sq2.user__cnt_valid_play_58463_15d
        ,sq2.user__cnt_full_play_58463_15d
        ,sq2.user__cnt_expose_58463_3d
        ,sq2.user__cnt_click_58463_3d
        ,sq2.user__cnt_play_58463_3d
        ,sq2.user__cnt_valid_play_58463_3d
        ,sq2.user__cnt_full_play_58463_3d
        ,sq2.user__num_play_sum_event_value_58463_30d
        ,sq2.user__num_play_sum_event_value_58463_15d
        ,sq2.user__num_play_sum_event_value_58463_3d
        ,sq2.user__num_play_avg_event_value_58463_30d
        ,sq2.user__num_play_avg_event_value_58463_15d
        ,sq2.user__num_play_avg_event_value_58463_3d
        ,sq2.user__ratio_click_expose_58463_30d
        ,sq2.user__ratio_click_expose_58463_15d
        ,sq2.user__ratio_click_expose_58463_3d
        ,sq2.user__kv_num_full_play_song_business_model_sum_event_value_58463_30d
        ,sq2.user__kv_num_full_play_song_business_model_sum_event_value_58463_15d
        ,sq2.user__kv_num_full_play_song_business_model_sum_event_value_58463_3d
        ,sq2.user__kv_item_id_expose_58463_30d
        ,sq2.user__kv_singer_id_expose_58463_30d
        ,sq2.user__kv_style_tag_id_lv2_expose_58463_30d
        ,sq2.user__kv_item_id_click_58463_30d
        ,sq2.user__kv_singer_id_click_58463_30d
        ,sq2.user__kv_style_tag_id_lv2_click_58463_30d
        ,sq2.user__kv_item_id_play_58463_30d
        ,sq2.user__kv_singer_id_play_58463_30d
        ,sq2.user__kv_style_tag_id_lv2_play_58463_30d
        ,sq2.user__kv_item_id_valid_play_58463_30d
        ,sq2.user__kv_singer_id_valid_play_58463_30d
        ,sq2.user__kv_style_tag_id_lv2_valid_play_58463_30d
        ,sq2.user__kv_item_id_full_play_58463_30d
        ,sq2.user__kv_singer_id_full_play_58463_30d
        ,sq2.user__kv_style_tag_id_lv2_full_play_58463_30d
        ,sq2.user__kv_item_id_expose_58463_15d
        ,sq2.user__kv_singer_id_expose_58463_15d
        ,sq2.user__kv_style_tag_id_lv2_expose_58463_15d
        ,sq2.user__kv_item_id_click_58463_15d
        ,sq2.user__kv_singer_id_click_58463_15d
        ,sq2.user__kv_style_tag_id_lv2_click_58463_15d
        ,sq2.user__kv_item_id_play_58463_15d
        ,sq2.user__kv_singer_id_play_58463_15d
        ,sq2.user__kv_style_tag_id_lv2_play_58463_15d
        ,sq2.user__kv_item_id_valid_play_58463_15d
        ,sq2.user__kv_singer_id_valid_play_58463_15d
        ,sq2.user__kv_style_tag_id_lv2_valid_play_58463_15d
        ,sq2.user__kv_item_id_full_play_58463_15d
        ,sq2.user__kv_singer_id_full_play_58463_15d
        ,sq2.user__kv_style_tag_id_lv2_full_play_58463_15d
        ,sq2.user__kv_item_id_expose_58463_3d
        ,sq2.user__kv_singer_id_expose_58463_3d
        ,sq2.user__kv_style_tag_id_lv2_expose_58463_3d
        ,sq2.user__kv_item_id_click_58463_3d
        ,sq2.user__kv_singer_id_click_58463_3d
        ,sq2.user__kv_style_tag_id_lv2_click_58463_3d
        ,sq2.user__kv_item_id_play_58463_3d
        ,sq2.user__kv_singer_id_play_58463_3d
        ,sq2.user__kv_style_tag_id_lv2_play_58463_3d
        ,sq2.user__kv_item_id_valid_play_58463_3d
        ,sq2.user__kv_singer_id_valid_play_58463_3d
        ,sq2.user__kv_style_tag_id_lv2_valid_play_58463_3d
        ,sq2.user__kv_item_id_full_play_58463_3d
        ,sq2.user__kv_singer_id_full_play_58463_3d
        ,sq2.user__kv_style_tag_id_lv2_full_play_58463_3d
        ,sq1.user__kv_item_id_valid_play_30d
        ,sq1.user__kv_style_tag_id_lv2_valid_play_30d
        ,sq1.user__kv_singer_id_valid_play_30d
        ,sq1.user__kv_item_id_full_play_30d
        ,sq1.user__kv_style_tag_id_lv2_full_play_30d
        ,sq1.user__kv_singer_id_full_play_30d
        ,sq1.user__kv_item_id_collect_30d
        ,sq1.user__kv_style_tag_id_lv2_collect_30d
        ,sq1.user__kv_singer_id_collect_30d
        ,sq1.user__kv_item_id_download_30d
        ,sq1.user__kv_style_tag_id_lv2_download_30d
        ,sq1.user__kv_singer_id_download_30d
        ,sq1.user__kv_item_id_share_30d
        ,sq1.user__kv_style_tag_id_lv2_share_30d
        ,sq1.user__kv_singer_id_share_30d
        ,sq1.user__kv_item_id_valid_play_15d
        ,sq1.user__kv_style_tag_id_lv2_valid_play_15d
        ,sq1.user__kv_singer_id_valid_play_15d
        ,sq1.user__kv_item_id_full_play_15d
        ,sq1.user__kv_style_tag_id_lv2_full_play_15d
        ,sq1.user__kv_singer_id_full_play_15d
        ,sq1.user__kv_item_id_collect_15d
        ,sq1.user__kv_style_tag_id_lv2_collect_15d
        ,sq1.user__kv_singer_id_collect_15d
        ,sq1.user__kv_item_id_download_15d
        ,sq1.user__kv_style_tag_id_lv2_download_15d
        ,sq1.user__kv_singer_id_download_15d
        ,sq1.user__kv_item_id_share_15d
        ,sq1.user__kv_style_tag_id_lv2_share_15d
        ,sq1.user__kv_singer_id_share_15d
        ,sq1.user__kv_item_id_valid_play_3d
        ,sq1.user__kv_style_tag_id_lv2_valid_play_3d
        ,sq1.user__kv_singer_id_valid_play_3d
        ,sq1.user__kv_item_id_full_play_3d
        ,sq1.user__kv_style_tag_id_lv2_full_play_3d
        ,sq1.user__kv_singer_id_full_play_3d
        ,sq1.user__kv_item_id_collect_3d
        ,sq1.user__kv_style_tag_id_lv2_collect_3d
        ,sq1.user__kv_singer_id_collect_3d
        ,sq1.user__kv_item_id_download_3d
        ,sq1.user__kv_style_tag_id_lv2_download_3d
        ,sq1.user__kv_singer_id_download_3d
        ,sq1.user__kv_item_id_share_3d
        ,sq1.user__kv_style_tag_id_lv2_share_3d
        ,sq1.user__kv_singer_id_share_3d
        ,sq2.user__kv_ratio_item_id_click_expose_58463_30d
        ,sq2.user__kv_ratio_style_tag_id_lv2_click_expose_58463_30d
        ,sq2.user__kv_ratio_singer_id_click_expose_58463_30d
        ,sq2.user__kv_ratio_item_id_click_expose_58463_15d
        ,sq2.user__kv_ratio_style_tag_id_lv2_click_expose_58463_15d
        ,sq2.user__kv_ratio_singer_id_click_expose_58463_15d
        ,sq2.user__kv_ratio_item_id_click_expose_58463_3d
        ,sq2.user__kv_ratio_style_tag_id_lv2_click_expose_58463_3d
        ,sq2.user__kv_ratio_singer_id_click_expose_58463_3d
FROM    (
            SELECT  *
            FROM    common_feat_dim_rec_user_info_dfp_1001_preprocess
            WHERE   p_date = '${bdp.system.bizdate}'
        ) sq0
LEFT JOIN   (
                SELECT  *
                FROM    common_feat_song_identity_id_static_feat_v1
                WHERE   p_date = '${bdp.system.bizdate}'
            ) sq1
ON      sq0.identity_id = sq1.identity_id
LEFT JOIN   (
                SELECT  *
                FROM    ps_dfm_v6_identity_id_static_feat_v1
                WHERE   p_date = '${bdp.system.bizdate}'
            ) sq2
ON      sq0.identity_id = sq2.identity_id
;