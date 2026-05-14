--odps sql 
--********************************************************************--
--author:吴一鸣
--create time:2026-04-12 10:34:20
--********************************************************************--
CREATE TABLE IF NOT EXISTS dws_rec.song_scene_config_pyfg_encoded_v1_handle_scene_weight
(
    request_id                                                                          STRING
    ,`__identity_id__`                                                                  STRING
    ,`__item_id__`                                                                      STRING
    ,is_click                                                                           BIGINT
    ,is_valid                                                                           BIGINT
    ,is_full                                                                            BIGINT
    ,play_duration                                                                      BIGINT
    ,is_click_weight                                                                    DOUBLE
    ,is_valid_weight                                                                    DOUBLE
    ,is_full_weight                                                                     DOUBLE
    ,play_duration_weight                                                               DOUBLE
    ,age_group                                                                          ARRAY<STRING>
    ,age_tag_id_lv2                                                                     ARRAY<STRING>
    ,age_tag_id_lv3                                                                     ARRAY<STRING>
    ,composer                                                                           ARRAY<STRING>
    ,day_h                                                                              ARRAY<STRING>
    ,event_scene_id                                                                     ARRAY<STRING>
    ,full_play_100_seq__item_id                                                         ARRAY<STRING>
    ,full_play_100_seq__ts                                                              ARRAY<FLOAT>
    ,gender                                                                             ARRAY<STRING>
    ,identity_id                                                                        ARRAY<STRING>
    ,item__cnt_click_58463_30d                                                          FLOAT
    ,item__cnt_click_58463_3d                                                           FLOAT
    ,item__cnt_click_58463_7d                                                           FLOAT
    ,item__cnt_click_daily_recommend_30d                                                FLOAT
    ,item__cnt_click_daily_recommend_3d                                                 FLOAT
    ,item__cnt_click_daily_recommend_7d                                                 FLOAT
    ,item__cnt_click_identity_id_58463_30d                                              FLOAT
    ,item__cnt_click_identity_id_58463_3d                                               FLOAT
    ,item__cnt_click_identity_id_58463_7d                                               FLOAT
    ,item__cnt_click_identity_id_daily_recommend_30d                                    FLOAT
    ,item__cnt_click_identity_id_daily_recommend_3d                                     FLOAT
    ,item__cnt_click_identity_id_daily_recommend_7d                                     FLOAT
    ,item__cnt_collect_30d                                                              FLOAT
    ,item__cnt_collect_3d                                                               FLOAT
    ,item__cnt_collect_7d                                                               FLOAT
    ,item__cnt_collect_identity_id_30d                                                  FLOAT
    ,item__cnt_collect_identity_id_3d                                                   FLOAT
    ,item__cnt_collect_identity_id_7d                                                   FLOAT
    ,item__cnt_comment_30d                                                              FLOAT
    ,item__cnt_comment_3d                                                               FLOAT
    ,item__cnt_comment_7d                                                               FLOAT
    ,item__cnt_comment_identity_id_30d                                                  FLOAT
    ,item__cnt_comment_identity_id_3d                                                   FLOAT
    ,item__cnt_comment_identity_id_7d                                                   FLOAT
    ,item__cnt_download_30d                                                             FLOAT
    ,item__cnt_download_3d                                                              FLOAT
    ,item__cnt_download_7d                                                              FLOAT
    ,item__cnt_download_identity_id_30d                                                 FLOAT
    ,item__cnt_download_identity_id_3d                                                  FLOAT
    ,item__cnt_download_identity_id_7d                                                  FLOAT
    ,item__cnt_expose_58463_30d                                                         FLOAT
    ,item__cnt_expose_58463_3d                                                          FLOAT
    ,item__cnt_expose_58463_7d                                                          FLOAT
    ,item__cnt_expose_daily_recommend_30d                                               FLOAT
    ,item__cnt_expose_daily_recommend_3d                                                FLOAT
    ,item__cnt_expose_daily_recommend_7d                                                FLOAT
    ,item__cnt_expose_identity_id_58463_30d                                             FLOAT
    ,item__cnt_expose_identity_id_58463_3d                                              FLOAT
    ,item__cnt_expose_identity_id_58463_7d                                              FLOAT
    ,item__cnt_expose_identity_id_daily_recommend_30d                                   FLOAT
    ,item__cnt_expose_identity_id_daily_recommend_3d                                    FLOAT
    ,item__cnt_expose_identity_id_daily_recommend_7d                                    FLOAT
    ,item__cnt_full_play_30d                                                            FLOAT
    ,item__cnt_full_play_3d                                                             FLOAT
    ,item__cnt_full_play_58463_30d                                                      FLOAT
    ,item__cnt_full_play_58463_3d                                                       FLOAT
    ,item__cnt_full_play_58463_7d                                                       FLOAT
    ,item__cnt_full_play_7d                                                             FLOAT
    ,item__cnt_full_play_daily_recommend_30d                                            FLOAT
    ,item__cnt_full_play_daily_recommend_3d                                             FLOAT
    ,item__cnt_full_play_daily_recommend_7d                                             FLOAT
    ,item__cnt_full_play_identity_id_30d                                                FLOAT
    ,item__cnt_full_play_identity_id_3d                                                 FLOAT
    ,item__cnt_full_play_identity_id_58463_30d                                          FLOAT
    ,item__cnt_full_play_identity_id_58463_3d                                           FLOAT
    ,item__cnt_full_play_identity_id_58463_7d                                           FLOAT
    ,item__cnt_full_play_identity_id_7d                                                 FLOAT
    ,item__cnt_full_play_identity_id_daily_recommend_30d                                FLOAT
    ,item__cnt_full_play_identity_id_daily_recommend_3d                                 FLOAT
    ,item__cnt_full_play_identity_id_daily_recommend_7d                                 FLOAT
    ,item__cnt_full_play_identity_id_music_model_default_30d                            FLOAT
    ,item__cnt_full_play_identity_id_music_model_default_3d                             FLOAT
    ,item__cnt_full_play_identity_id_music_model_default_7d                             FLOAT
    ,item__cnt_full_play_music_model_default_30d                                        FLOAT
    ,item__cnt_full_play_music_model_default_3d                                         FLOAT
    ,item__cnt_full_play_music_model_default_7d                                         FLOAT
    ,item__cnt_play_30d                                                                 FLOAT
    ,item__cnt_play_3d                                                                  FLOAT
    ,item__cnt_play_58463_30d                                                           FLOAT
    ,item__cnt_play_58463_3d                                                            FLOAT
    ,item__cnt_play_58463_7d                                                            FLOAT
    ,item__cnt_play_7d                                                                  FLOAT
    ,item__cnt_play_daily_recommend_30d                                                 FLOAT
    ,item__cnt_play_daily_recommend_3d                                                  FLOAT
    ,item__cnt_play_daily_recommend_7d                                                  FLOAT
    ,item__cnt_play_identity_id_30d                                                     FLOAT
    ,item__cnt_play_identity_id_3d                                                      FLOAT
    ,item__cnt_play_identity_id_58463_30d                                               FLOAT
    ,item__cnt_play_identity_id_58463_3d                                                FLOAT
    ,item__cnt_play_identity_id_58463_7d                                                FLOAT
    ,item__cnt_play_identity_id_7d                                                      FLOAT
    ,item__cnt_play_identity_id_daily_recommend_30d                                     FLOAT
    ,item__cnt_play_identity_id_daily_recommend_3d                                      FLOAT
    ,item__cnt_play_identity_id_daily_recommend_7d                                      FLOAT
    ,item__cnt_play_identity_id_music_model_default_30d                                 FLOAT
    ,item__cnt_play_identity_id_music_model_default_3d                                  FLOAT
    ,item__cnt_play_identity_id_music_model_default_7d                                  FLOAT
    ,item__cnt_play_music_model_default_30d                                             FLOAT
    ,item__cnt_play_music_model_default_3d                                              FLOAT
    ,item__cnt_play_music_model_default_7d                                              FLOAT
    ,item__cnt_share_30d                                                                FLOAT
    ,item__cnt_share_3d                                                                 FLOAT
    ,item__cnt_share_7d                                                                 FLOAT
    ,item__cnt_share_identity_id_30d                                                    FLOAT
    ,item__cnt_share_identity_id_3d                                                     FLOAT
    ,item__cnt_share_identity_id_7d                                                     FLOAT
    ,item__cnt_valid_play_30d                                                           FLOAT
    ,item__cnt_valid_play_3d                                                            FLOAT
    ,item__cnt_valid_play_58463_30d                                                     FLOAT
    ,item__cnt_valid_play_58463_3d                                                      FLOAT
    ,item__cnt_valid_play_58463_7d                                                      FLOAT
    ,item__cnt_valid_play_7d                                                            FLOAT
    ,item__cnt_valid_play_daily_recommend_30d                                           FLOAT
    ,item__cnt_valid_play_daily_recommend_3d                                            FLOAT
    ,item__cnt_valid_play_daily_recommend_7d                                            FLOAT
    ,item__cnt_valid_play_identity_id_30d                                               FLOAT
    ,item__cnt_valid_play_identity_id_3d                                                FLOAT
    ,item__cnt_valid_play_identity_id_58463_30d                                         FLOAT
    ,item__cnt_valid_play_identity_id_58463_3d                                          FLOAT
    ,item__cnt_valid_play_identity_id_58463_7d                                          FLOAT
    ,item__cnt_valid_play_identity_id_7d                                                FLOAT
    ,item__cnt_valid_play_identity_id_daily_recommend_30d                               FLOAT
    ,item__cnt_valid_play_identity_id_daily_recommend_3d                                FLOAT
    ,item__cnt_valid_play_identity_id_daily_recommend_7d                                FLOAT
    ,item__cnt_valid_play_identity_id_music_model_default_30d                           FLOAT
    ,item__cnt_valid_play_identity_id_music_model_default_3d                            FLOAT
    ,item__cnt_valid_play_identity_id_music_model_default_7d                            FLOAT
    ,item__cnt_valid_play_music_model_default_30d                                       FLOAT
    ,item__cnt_valid_play_music_model_default_3d                                        FLOAT
    ,item__cnt_valid_play_music_model_default_7d                                        FLOAT
    ,item__kv_age_group_collect_30d                                                     FLOAT
    ,item__kv_age_group_collect_3d                                                      FLOAT
    ,item__kv_age_group_collect_7d                                                      FLOAT
    ,item__kv_age_group_comment_30d                                                     FLOAT
    ,item__kv_age_group_comment_3d                                                      FLOAT
    ,item__kv_age_group_comment_7d                                                      FLOAT
    ,item__kv_age_group_download_30d                                                    FLOAT
    ,item__kv_age_group_download_3d                                                     FLOAT
    ,item__kv_age_group_download_7d                                                     FLOAT
    ,item__kv_age_group_full_play_30d                                                   FLOAT
    ,item__kv_age_group_full_play_3d                                                    FLOAT
    ,item__kv_age_group_full_play_7d                                                    FLOAT
    ,item__kv_age_group_share_30d                                                       FLOAT
    ,item__kv_age_group_share_3d                                                        FLOAT
    ,item__kv_age_group_share_7d                                                        FLOAT
    ,item__kv_age_group_valid_play_30d                                                  FLOAT
    ,item__kv_age_group_valid_play_3d                                                   FLOAT
    ,item__kv_age_group_valid_play_7d                                                   FLOAT
    ,item__kv_num_collect_age_group_sum_event_value_30d                                 FLOAT
    ,item__kv_num_collect_age_group_sum_event_value_3d                                  FLOAT
    ,item__kv_num_collect_age_group_sum_event_value_7d                                  FLOAT
    ,item__kv_num_full_play_age_group_sum_event_value_30d                               FLOAT
    ,item__kv_num_full_play_age_group_sum_event_value_3d                                FLOAT
    ,item__kv_num_full_play_age_group_sum_event_value_7d                                FLOAT
    ,item__kv_num_play_age_group_sum_event_value_30d                                    FLOAT
    ,item__kv_num_play_age_group_sum_event_value_3d                                     FLOAT
    ,item__kv_num_play_age_group_sum_event_value_7d                                     FLOAT
    ,item__kv_num_valid_play_age_group_sum_event_value_30d                              FLOAT
    ,item__kv_num_valid_play_age_group_sum_event_value_3d                               FLOAT
    ,item__kv_num_valid_play_age_group_sum_event_value_7d                               FLOAT
    ,item__kv_terminal_model_valid_play_30d                                             FLOAT
    ,item__kv_used_competitors_last_7d_collect_30d                                      FLOAT
    ,item__kv_used_competitors_last_7d_collect_3d                                       FLOAT
    ,item__kv_used_competitors_last_7d_collect_7d                                       FLOAT
    ,item__kv_used_competitors_last_7d_comment_30d                                      FLOAT
    ,item__kv_used_competitors_last_7d_comment_3d                                       FLOAT
    ,item__kv_used_competitors_last_7d_comment_7d                                       FLOAT
    ,item__kv_used_competitors_last_7d_download_30d                                     FLOAT
    ,item__kv_used_competitors_last_7d_download_3d                                      FLOAT
    ,item__kv_used_competitors_last_7d_download_7d                                      FLOAT
    ,item__kv_used_competitors_last_7d_full_play_30d                                    FLOAT
    ,item__kv_used_competitors_last_7d_full_play_3d                                     FLOAT
    ,item__kv_used_competitors_last_7d_full_play_7d                                     FLOAT
    ,item__kv_used_competitors_last_7d_share_30d                                        FLOAT
    ,item__kv_used_competitors_last_7d_share_3d                                         FLOAT
    ,item__kv_used_competitors_last_7d_share_7d                                         FLOAT
    ,item__kv_used_competitors_last_7d_valid_play_30d                                   FLOAT
    ,item__kv_used_competitors_last_7d_valid_play_3d                                    FLOAT
    ,item__kv_used_competitors_last_7d_valid_play_7d                                    FLOAT
    ,item__ratio_click_expose_58463_30d                                                 FLOAT
    ,item__ratio_click_expose_58463_3d                                                  FLOAT
    ,item__ratio_click_expose_58463_7d                                                  FLOAT
    ,item__ratio_click_expose_daily_recommend_30d                                       FLOAT
    ,item__ratio_click_expose_daily_recommend_3d                                        FLOAT
    ,item__ratio_click_expose_daily_recommend_7d                                        FLOAT
    ,item__ratio_valid_play_play_58463_30d                                              FLOAT
    ,item__ratio_valid_play_play_58463_3d                                               FLOAT
    ,item__ratio_valid_play_play_58463_7d                                               FLOAT
    ,item__ratio_valid_play_play_daily_recommend_30d                                    FLOAT
    ,item__ratio_valid_play_play_daily_recommend_3d                                     FLOAT
    ,item__ratio_valid_play_play_daily_recommend_7d                                     FLOAT
    ,item__ratio_valid_play_play_music_model_default_30d                                FLOAT
    ,item__ratio_valid_play_play_music_model_default_3d                                 FLOAT
    ,item__ratio_valid_play_play_music_model_default_7d                                 FLOAT
    ,item_id                                                                            ARRAY<STRING>
    ,item_publish_time                                                                  FLOAT
    ,language_tag_id_lv2                                                                ARRAY<STRING>
    ,language_tag_id_lv3                                                                ARRAY<STRING>
    ,lyric_writer                                                                       ARRAY<STRING>
    ,music_vip_type                                                                     ARRAY<STRING>
    ,singer_id                                                                          ARRAY<STRING>
    ,song_business_model                                                                ARRAY<STRING>
    ,song_length                                                                        FLOAT
    ,song_name_purified                                                                 ARRAY<STRING>
    ,style_tag_id_lv2                                                                   ARRAY<STRING>
    ,style_tag_id_lv3                                                                   ARRAY<STRING>
    ,terminal_model                                                                     ARRAY<STRING>
    ,used_competitors_last_7d                                                           ARRAY<STRING>
    ,user__cnt_click_58463_15d                                                          FLOAT
    ,user__cnt_click_58463_30d                                                          FLOAT
    ,user__cnt_click_58463_3d                                                           FLOAT
    ,user__cnt_click_daily_recommend_15d                                                FLOAT
    ,user__cnt_click_daily_recommend_30d                                                FLOAT
    ,user__cnt_click_daily_recommend_3d                                                 FLOAT
    ,user__cnt_collect_15d                                                              FLOAT
    ,user__cnt_collect_30d                                                              FLOAT
    ,user__cnt_collect_3d                                                               FLOAT
    ,user__cnt_comment_15d                                                              FLOAT
    ,user__cnt_comment_30d                                                              FLOAT
    ,user__cnt_comment_3d                                                               FLOAT
    ,user__cnt_download_15d                                                             FLOAT
    ,user__cnt_download_30d                                                             FLOAT
    ,user__cnt_download_3d                                                              FLOAT
    ,user__cnt_expose_58463_15d                                                         FLOAT
    ,user__cnt_expose_58463_30d                                                         FLOAT
    ,user__cnt_expose_58463_3d                                                          FLOAT
    ,user__cnt_expose_daily_recommend_15d                                               FLOAT
    ,user__cnt_expose_daily_recommend_30d                                               FLOAT
    ,user__cnt_expose_daily_recommend_3d                                                FLOAT
    ,user__cnt_full_play_15d                                                            FLOAT
    ,user__cnt_full_play_30d                                                            FLOAT
    ,user__cnt_full_play_3d                                                             FLOAT
    ,user__cnt_full_play_58463_15d                                                      FLOAT
    ,user__cnt_full_play_58463_30d                                                      FLOAT
    ,user__cnt_full_play_58463_3d                                                       FLOAT
    ,user__cnt_full_play_daily_recommend_15d                                            FLOAT
    ,user__cnt_full_play_daily_recommend_30d                                            FLOAT
    ,user__cnt_full_play_daily_recommend_3d                                             FLOAT
    ,user__cnt_full_play_music_model_default_15d                                        FLOAT
    ,user__cnt_full_play_music_model_default_30d                                        FLOAT
    ,user__cnt_full_play_music_model_default_3d                                         FLOAT
    ,user__cnt_play_15d                                                                 FLOAT
    ,user__cnt_play_30d                                                                 FLOAT
    ,user__cnt_play_3d                                                                  FLOAT
    ,user__cnt_play_58463_15d                                                           FLOAT
    ,user__cnt_play_58463_30d                                                           FLOAT
    ,user__cnt_play_58463_3d                                                            FLOAT
    ,user__cnt_play_daily_recommend_15d                                                 FLOAT
    ,user__cnt_play_daily_recommend_30d                                                 FLOAT
    ,user__cnt_play_daily_recommend_3d                                                  FLOAT
    ,user__cnt_play_music_model_default_15d                                             FLOAT
    ,user__cnt_play_music_model_default_30d                                             FLOAT
    ,user__cnt_play_music_model_default_3d                                              FLOAT
    ,user__cnt_share_15d                                                                FLOAT
    ,user__cnt_share_30d                                                                FLOAT
    ,user__cnt_share_3d                                                                 FLOAT
    ,user__cnt_valid_play_15d                                                           FLOAT
    ,user__cnt_valid_play_30d                                                           FLOAT
    ,user__cnt_valid_play_3d                                                            FLOAT
    ,user__cnt_valid_play_58463_15d                                                     FLOAT
    ,user__cnt_valid_play_58463_30d                                                     FLOAT
    ,user__cnt_valid_play_58463_3d                                                      FLOAT
    ,user__cnt_valid_play_daily_recommend_15d                                           FLOAT
    ,user__cnt_valid_play_daily_recommend_30d                                           FLOAT
    ,user__cnt_valid_play_daily_recommend_3d                                            FLOAT
    ,user__cnt_valid_play_music_model_default_15d                                       FLOAT
    ,user__cnt_valid_play_music_model_default_30d                                       FLOAT
    ,user__cnt_valid_play_music_model_default_3d                                        FLOAT
    ,user__kv_item_id_click_58463_15d                                                   FLOAT
    ,user__kv_item_id_click_58463_30d                                                   FLOAT
    ,user__kv_item_id_click_58463_3d                                                    FLOAT
    ,user__kv_item_id_click_daily_recommend_15d                                         FLOAT
    ,user__kv_item_id_click_daily_recommend_30d                                         FLOAT
    ,user__kv_item_id_click_daily_recommend_3d                                          FLOAT
    ,user__kv_item_id_collect_15d                                                       FLOAT
    ,user__kv_item_id_collect_30d                                                       FLOAT
    ,user__kv_item_id_collect_3d                                                        FLOAT
    ,user__kv_item_id_download_15d                                                      FLOAT
    ,user__kv_item_id_download_30d                                                      FLOAT
    ,user__kv_item_id_download_3d                                                       FLOAT
    ,user__kv_item_id_expose_58463_15d                                                  FLOAT
    ,user__kv_item_id_expose_58463_30d                                                  FLOAT
    ,user__kv_item_id_expose_58463_3d                                                   FLOAT
    ,user__kv_item_id_expose_daily_recommend_15d                                        FLOAT
    ,user__kv_item_id_expose_daily_recommend_30d                                        FLOAT
    ,user__kv_item_id_expose_daily_recommend_3d                                         FLOAT
    ,user__kv_item_id_full_play_15d                                                     FLOAT
    ,user__kv_item_id_full_play_30d                                                     FLOAT
    ,user__kv_item_id_full_play_3d                                                      FLOAT
    ,user__kv_item_id_full_play_58463_15d                                               FLOAT
    ,user__kv_item_id_full_play_58463_30d                                               FLOAT
    ,user__kv_item_id_full_play_58463_3d                                                FLOAT
    ,user__kv_item_id_full_play_daily_recommend_15d                                     FLOAT
    ,user__kv_item_id_full_play_daily_recommend_30d                                     FLOAT
    ,user__kv_item_id_full_play_daily_recommend_3d                                      FLOAT
    ,user__kv_item_id_full_play_music_model_default_15d                                 FLOAT
    ,user__kv_item_id_full_play_music_model_default_30d                                 FLOAT
    ,user__kv_item_id_full_play_music_model_default_3d                                  FLOAT
    ,user__kv_item_id_play_58463_15d                                                    FLOAT
    ,user__kv_item_id_play_58463_30d                                                    FLOAT
    ,user__kv_item_id_play_58463_3d                                                     FLOAT
    ,user__kv_item_id_play_daily_recommend_15d                                          FLOAT
    ,user__kv_item_id_play_daily_recommend_30d                                          FLOAT
    ,user__kv_item_id_play_daily_recommend_3d                                           FLOAT
    ,user__kv_item_id_play_music_model_default_15d                                      FLOAT
    ,user__kv_item_id_play_music_model_default_30d                                      FLOAT
    ,user__kv_item_id_play_music_model_default_3d                                       FLOAT
    ,user__kv_item_id_share_15d                                                         FLOAT
    ,user__kv_item_id_share_30d                                                         FLOAT
    ,user__kv_item_id_share_3d                                                          FLOAT
    ,user__kv_item_id_valid_play_15d                                                    FLOAT
    ,user__kv_item_id_valid_play_30d                                                    FLOAT
    ,user__kv_item_id_valid_play_3d                                                     FLOAT
    ,user__kv_item_id_valid_play_58463_15d                                              FLOAT
    ,user__kv_item_id_valid_play_58463_30d                                              FLOAT
    ,user__kv_item_id_valid_play_58463_3d                                               FLOAT
    ,user__kv_item_id_valid_play_daily_recommend_15d                                    FLOAT
    ,user__kv_item_id_valid_play_daily_recommend_30d                                    FLOAT
    ,user__kv_item_id_valid_play_daily_recommend_3d                                     FLOAT
    ,user__kv_item_id_valid_play_music_model_default_15d                                FLOAT
    ,user__kv_item_id_valid_play_music_model_default_30d                                FLOAT
    ,user__kv_item_id_valid_play_music_model_default_3d                                 FLOAT
    ,user__kv_num_full_play_song_business_model_sum_event_value_58463_15d               FLOAT
    ,user__kv_num_full_play_song_business_model_sum_event_value_58463_30d               FLOAT
    ,user__kv_num_full_play_song_business_model_sum_event_value_58463_3d                FLOAT
    ,user__kv_num_full_play_song_business_model_sum_event_value_daily_recommend_15d     FLOAT
    ,user__kv_num_full_play_song_business_model_sum_event_value_daily_recommend_30d     FLOAT
    ,user__kv_num_full_play_song_business_model_sum_event_value_daily_recommend_3d      FLOAT
    ,user__kv_num_full_play_song_business_model_sum_event_value_music_model_default_15d FLOAT
    ,user__kv_num_full_play_song_business_model_sum_event_value_music_model_default_30d FLOAT
    ,user__kv_num_full_play_song_business_model_sum_event_value_music_model_default_3d  FLOAT
    ,user__kv_ratio_item_id_click_expose_58463_15d                                      FLOAT
    ,user__kv_ratio_item_id_click_expose_58463_30d                                      FLOAT
    ,user__kv_ratio_item_id_click_expose_58463_3d                                       FLOAT
    ,user__kv_ratio_item_id_click_expose_daily_recommend_15d                            FLOAT
    ,user__kv_ratio_item_id_click_expose_daily_recommend_30d                            FLOAT
    ,user__kv_ratio_item_id_click_expose_daily_recommend_3d                             FLOAT
    ,user__kv_ratio_singer_id_click_expose_58463_15d                                    FLOAT
    ,user__kv_ratio_singer_id_click_expose_58463_30d                                    FLOAT
    ,user__kv_ratio_singer_id_click_expose_58463_3d                                     FLOAT
    ,user__kv_ratio_singer_id_click_expose_daily_recommend_15d                          FLOAT
    ,user__kv_ratio_singer_id_click_expose_daily_recommend_30d                          FLOAT
    ,user__kv_ratio_singer_id_click_expose_daily_recommend_3d                           FLOAT
    ,user__kv_ratio_style_tag_id_lv2_click_expose_58463_15d                             FLOAT
    ,user__kv_ratio_style_tag_id_lv2_click_expose_58463_30d                             FLOAT
    ,user__kv_ratio_style_tag_id_lv2_click_expose_58463_3d                              FLOAT
    ,user__kv_ratio_style_tag_id_lv2_click_expose_daily_recommend_15d                   FLOAT
    ,user__kv_ratio_style_tag_id_lv2_click_expose_daily_recommend_30d                   FLOAT
    ,user__kv_ratio_style_tag_id_lv2_click_expose_daily_recommend_3d                    FLOAT
    ,user__kv_singer_id_click_58463_15d                                                 FLOAT
    ,user__kv_singer_id_click_58463_30d                                                 FLOAT
    ,user__kv_singer_id_click_58463_3d                                                  FLOAT
    ,user__kv_singer_id_click_daily_recommend_15d                                       FLOAT
    ,user__kv_singer_id_click_daily_recommend_30d                                       FLOAT
    ,user__kv_singer_id_click_daily_recommend_3d                                        FLOAT
    ,user__kv_singer_id_collect_15d                                                     FLOAT
    ,user__kv_singer_id_collect_30d                                                     FLOAT
    ,user__kv_singer_id_collect_3d                                                      FLOAT
    ,user__kv_singer_id_download_15d                                                    FLOAT
    ,user__kv_singer_id_download_30d                                                    FLOAT
    ,user__kv_singer_id_download_3d                                                     FLOAT
    ,user__kv_singer_id_expose_58463_15d                                                FLOAT
    ,user__kv_singer_id_expose_58463_30d                                                FLOAT
    ,user__kv_singer_id_expose_58463_3d                                                 FLOAT
    ,user__kv_singer_id_expose_daily_recommend_15d                                      FLOAT
    ,user__kv_singer_id_expose_daily_recommend_30d                                      FLOAT
    ,user__kv_singer_id_expose_daily_recommend_3d                                       FLOAT
    ,user__kv_singer_id_full_play_15d                                                   FLOAT
    ,user__kv_singer_id_full_play_30d                                                   FLOAT
    ,user__kv_singer_id_full_play_3d                                                    FLOAT
    ,user__kv_singer_id_full_play_58463_15d                                             FLOAT
    ,user__kv_singer_id_full_play_58463_30d                                             FLOAT
    ,user__kv_singer_id_full_play_58463_3d                                              FLOAT
    ,user__kv_singer_id_full_play_daily_recommend_15d                                   FLOAT
    ,user__kv_singer_id_full_play_daily_recommend_30d                                   FLOAT
    ,user__kv_singer_id_full_play_daily_recommend_3d                                    FLOAT
    ,user__kv_singer_id_full_play_music_model_default_15d                               FLOAT
    ,user__kv_singer_id_full_play_music_model_default_30d                               FLOAT
    ,user__kv_singer_id_full_play_music_model_default_3d                                FLOAT
    ,user__kv_singer_id_play_58463_15d                                                  FLOAT
    ,user__kv_singer_id_play_58463_30d                                                  FLOAT
    ,user__kv_singer_id_play_58463_3d                                                   FLOAT
    ,user__kv_singer_id_play_daily_recommend_15d                                        FLOAT
    ,user__kv_singer_id_play_daily_recommend_30d                                        FLOAT
    ,user__kv_singer_id_play_daily_recommend_3d                                         FLOAT
    ,user__kv_singer_id_play_music_model_default_15d                                    FLOAT
    ,user__kv_singer_id_play_music_model_default_30d                                    FLOAT
    ,user__kv_singer_id_play_music_model_default_3d                                     FLOAT
    ,user__kv_singer_id_share_15d                                                       FLOAT
    ,user__kv_singer_id_share_30d                                                       FLOAT
    ,user__kv_singer_id_share_3d                                                        FLOAT
    ,user__kv_singer_id_valid_play_15d                                                  FLOAT
    ,user__kv_singer_id_valid_play_30d                                                  FLOAT
    ,user__kv_singer_id_valid_play_3d                                                   FLOAT
    ,user__kv_singer_id_valid_play_58463_15d                                            FLOAT
    ,user__kv_singer_id_valid_play_58463_30d                                            FLOAT
    ,user__kv_singer_id_valid_play_58463_3d                                             FLOAT
    ,user__kv_singer_id_valid_play_daily_recommend_15d                                  FLOAT
    ,user__kv_singer_id_valid_play_daily_recommend_30d                                  FLOAT
    ,user__kv_singer_id_valid_play_daily_recommend_3d                                   FLOAT
    ,user__kv_singer_id_valid_play_music_model_default_15d                              FLOAT
    ,user__kv_singer_id_valid_play_music_model_default_30d                              FLOAT
    ,user__kv_singer_id_valid_play_music_model_default_3d                               FLOAT
    ,user__kv_style_tag_id_lv2_click_58463_15d                                          FLOAT
    ,user__kv_style_tag_id_lv2_click_58463_30d                                          FLOAT
    ,user__kv_style_tag_id_lv2_click_58463_3d                                           FLOAT
    ,user__kv_style_tag_id_lv2_click_daily_recommend_15d                                FLOAT
    ,user__kv_style_tag_id_lv2_click_daily_recommend_30d                                FLOAT
    ,user__kv_style_tag_id_lv2_click_daily_recommend_3d                                 FLOAT
    ,user__kv_style_tag_id_lv2_collect_15d                                              FLOAT
    ,user__kv_style_tag_id_lv2_collect_30d                                              FLOAT
    ,user__kv_style_tag_id_lv2_collect_3d                                               FLOAT
    ,user__kv_style_tag_id_lv2_download_15d                                             FLOAT
    ,user__kv_style_tag_id_lv2_download_30d                                             FLOAT
    ,user__kv_style_tag_id_lv2_download_3d                                              FLOAT
    ,user__kv_style_tag_id_lv2_expose_58463_15d                                         FLOAT
    ,user__kv_style_tag_id_lv2_expose_58463_30d                                         FLOAT
    ,user__kv_style_tag_id_lv2_expose_58463_3d                                          FLOAT
    ,user__kv_style_tag_id_lv2_expose_daily_recommend_15d                               FLOAT
    ,user__kv_style_tag_id_lv2_expose_daily_recommend_30d                               FLOAT
    ,user__kv_style_tag_id_lv2_expose_daily_recommend_3d                                FLOAT
    ,user__kv_style_tag_id_lv2_full_play_15d                                            FLOAT
    ,user__kv_style_tag_id_lv2_full_play_30d                                            FLOAT
    ,user__kv_style_tag_id_lv2_full_play_3d                                             FLOAT
    ,user__kv_style_tag_id_lv2_full_play_58463_15d                                      FLOAT
    ,user__kv_style_tag_id_lv2_full_play_58463_30d                                      FLOAT
    ,user__kv_style_tag_id_lv2_full_play_58463_3d                                       FLOAT
    ,user__kv_style_tag_id_lv2_full_play_daily_recommend_15d                            FLOAT
    ,user__kv_style_tag_id_lv2_full_play_daily_recommend_30d                            FLOAT
    ,user__kv_style_tag_id_lv2_full_play_daily_recommend_3d                             FLOAT
    ,user__kv_style_tag_id_lv2_full_play_music_model_default_15d                        FLOAT
    ,user__kv_style_tag_id_lv2_full_play_music_model_default_30d                        FLOAT
    ,user__kv_style_tag_id_lv2_full_play_music_model_default_3d                         FLOAT
    ,user__kv_style_tag_id_lv2_play_58463_15d                                           FLOAT
    ,user__kv_style_tag_id_lv2_play_58463_30d                                           FLOAT
    ,user__kv_style_tag_id_lv2_play_58463_3d                                            FLOAT
    ,user__kv_style_tag_id_lv2_play_daily_recommend_15d                                 FLOAT
    ,user__kv_style_tag_id_lv2_play_daily_recommend_30d                                 FLOAT
    ,user__kv_style_tag_id_lv2_play_daily_recommend_3d                                  FLOAT
    ,user__kv_style_tag_id_lv2_play_music_model_default_15d                             FLOAT
    ,user__kv_style_tag_id_lv2_play_music_model_default_30d                             FLOAT
    ,user__kv_style_tag_id_lv2_play_music_model_default_3d                              FLOAT
    ,user__kv_style_tag_id_lv2_share_15d                                                FLOAT
    ,user__kv_style_tag_id_lv2_share_30d                                                FLOAT
    ,user__kv_style_tag_id_lv2_share_3d                                                 FLOAT
    ,user__kv_style_tag_id_lv2_valid_play_15d                                           FLOAT
    ,user__kv_style_tag_id_lv2_valid_play_30d                                           FLOAT
    ,user__kv_style_tag_id_lv2_valid_play_3d                                            FLOAT
    ,user__kv_style_tag_id_lv2_valid_play_58463_15d                                     FLOAT
    ,user__kv_style_tag_id_lv2_valid_play_58463_30d                                     FLOAT
    ,user__kv_style_tag_id_lv2_valid_play_58463_3d                                      FLOAT
    ,user__kv_style_tag_id_lv2_valid_play_daily_recommend_15d                           FLOAT
    ,user__kv_style_tag_id_lv2_valid_play_daily_recommend_30d                           FLOAT
    ,user__kv_style_tag_id_lv2_valid_play_daily_recommend_3d                            FLOAT
    ,user__kv_style_tag_id_lv2_valid_play_music_model_default_15d                       FLOAT
    ,user__kv_style_tag_id_lv2_valid_play_music_model_default_30d                       FLOAT
    ,user__kv_style_tag_id_lv2_valid_play_music_model_default_3d                        FLOAT
    ,user__num_play_avg_event_value_58463_15d                                           FLOAT
    ,user__num_play_avg_event_value_58463_30d                                           FLOAT
    ,user__num_play_avg_event_value_58463_3d                                            FLOAT
    ,user__num_play_avg_event_value_daily_recommend_15d                                 FLOAT
    ,user__num_play_avg_event_value_daily_recommend_30d                                 FLOAT
    ,user__num_play_avg_event_value_daily_recommend_3d                                  FLOAT
    ,user__num_play_avg_event_value_music_model_default_15d                             FLOAT
    ,user__num_play_avg_event_value_music_model_default_30d                             FLOAT
    ,user__num_play_avg_event_value_music_model_default_3d                              FLOAT
    ,user__num_play_sum_event_value_58463_15d                                           FLOAT
    ,user__num_play_sum_event_value_58463_30d                                           FLOAT
    ,user__num_play_sum_event_value_58463_3d                                            FLOAT
    ,user__num_play_sum_event_value_daily_recommend_15d                                 FLOAT
    ,user__num_play_sum_event_value_daily_recommend_30d                                 FLOAT
    ,user__num_play_sum_event_value_daily_recommend_3d                                  FLOAT
    ,user__num_play_sum_event_value_music_model_default_15d                             FLOAT
    ,user__num_play_sum_event_value_music_model_default_30d                             FLOAT
    ,user__num_play_sum_event_value_music_model_default_3d                              FLOAT
    ,user__ratio_click_expose_58463_15d                                                 FLOAT
    ,user__ratio_click_expose_58463_30d                                                 FLOAT
    ,user__ratio_click_expose_58463_3d                                                  FLOAT
    ,user__ratio_click_expose_daily_recommend_15d                                       FLOAT
    ,user__ratio_click_expose_daily_recommend_30d                                       FLOAT
    ,user__ratio_click_expose_daily_recommend_3d                                        FLOAT
    ,user_register_date                                                                 FLOAT
    ,user_type                                                                          ARRAY<STRING>
    ,valid_play_100_seq__item_id                                                        ARRAY<STRING>
    ,valid_play_100_seq__ts                                                             ARRAY<FLOAT>
    ,week_day                                                                           ARRAY<STRING>
)
PARTITIONED BY 
(
    p_date                                                                              STRING
)
STORED AS aliorc
TBLPROPERTIES ('columnar.nested.type' = 'true')
LIFECYCLE 30
;
INSERT OVERWRITE TABLE dws_rec.song_scene_config_pyfg_encoded_v1_handle_scene_weight PARTITION (p_date = '${bdp.system.bizdate}')
SELECT  request_id
        ,__identity_id__
        ,__item_id__
        ,is_click
        ,is_valid
        ,is_full
        ,play_duration
        ,CASE   WHEN event_scene_id[0] = 'dailyReco' THEN 1.0
                WHEN event_scene_id[0] = 'personalSong' THEN 1.0
                WHEN event_scene_id[0] = 'musicModelDefault' THEN 0.0
        END AS is_click_weight
        ,1.0 AS is_valid_weight
        ,1.0 AS is_full_weight
        ,1.0 AS play_duration_weight
        ,age_group
        ,age_tag_id_lv2
        ,age_tag_id_lv3
        ,composer
        ,day_h
        ,event_scene_id
        ,full_play_100_seq__item_id
        ,full_play_100_seq__ts
        ,gender
        ,identity_id
        ,item__cnt_click_58463_30d
        ,item__cnt_click_58463_3d
        ,item__cnt_click_58463_7d
        ,item__cnt_click_daily_recommend_30d
        ,item__cnt_click_daily_recommend_3d
        ,item__cnt_click_daily_recommend_7d
        ,item__cnt_click_identity_id_58463_30d
        ,item__cnt_click_identity_id_58463_3d
        ,item__cnt_click_identity_id_58463_7d
        ,item__cnt_click_identity_id_daily_recommend_30d
        ,item__cnt_click_identity_id_daily_recommend_3d
        ,item__cnt_click_identity_id_daily_recommend_7d
        ,item__cnt_collect_30d
        ,item__cnt_collect_3d
        ,item__cnt_collect_7d
        ,item__cnt_collect_identity_id_30d
        ,item__cnt_collect_identity_id_3d
        ,item__cnt_collect_identity_id_7d
        ,item__cnt_comment_30d
        ,item__cnt_comment_3d
        ,item__cnt_comment_7d
        ,item__cnt_comment_identity_id_30d
        ,item__cnt_comment_identity_id_3d
        ,item__cnt_comment_identity_id_7d
        ,item__cnt_download_30d
        ,item__cnt_download_3d
        ,item__cnt_download_7d
        ,item__cnt_download_identity_id_30d
        ,item__cnt_download_identity_id_3d
        ,item__cnt_download_identity_id_7d
        ,item__cnt_expose_58463_30d
        ,item__cnt_expose_58463_3d
        ,item__cnt_expose_58463_7d
        ,item__cnt_expose_daily_recommend_30d
        ,item__cnt_expose_daily_recommend_3d
        ,item__cnt_expose_daily_recommend_7d
        ,item__cnt_expose_identity_id_58463_30d
        ,item__cnt_expose_identity_id_58463_3d
        ,item__cnt_expose_identity_id_58463_7d
        ,item__cnt_expose_identity_id_daily_recommend_30d
        ,item__cnt_expose_identity_id_daily_recommend_3d
        ,item__cnt_expose_identity_id_daily_recommend_7d
        ,item__cnt_full_play_30d
        ,item__cnt_full_play_3d
        ,item__cnt_full_play_58463_30d
        ,item__cnt_full_play_58463_3d
        ,item__cnt_full_play_58463_7d
        ,item__cnt_full_play_7d
        ,item__cnt_full_play_daily_recommend_30d
        ,item__cnt_full_play_daily_recommend_3d
        ,item__cnt_full_play_daily_recommend_7d
        ,item__cnt_full_play_identity_id_30d
        ,item__cnt_full_play_identity_id_3d
        ,item__cnt_full_play_identity_id_58463_30d
        ,item__cnt_full_play_identity_id_58463_3d
        ,item__cnt_full_play_identity_id_58463_7d
        ,item__cnt_full_play_identity_id_7d
        ,item__cnt_full_play_identity_id_daily_recommend_30d
        ,item__cnt_full_play_identity_id_daily_recommend_3d
        ,item__cnt_full_play_identity_id_daily_recommend_7d
        ,item__cnt_full_play_identity_id_music_model_default_30d
        ,item__cnt_full_play_identity_id_music_model_default_3d
        ,item__cnt_full_play_identity_id_music_model_default_7d
        ,item__cnt_full_play_music_model_default_30d
        ,item__cnt_full_play_music_model_default_3d
        ,item__cnt_full_play_music_model_default_7d
        ,item__cnt_play_30d
        ,item__cnt_play_3d
        ,item__cnt_play_58463_30d
        ,item__cnt_play_58463_3d
        ,item__cnt_play_58463_7d
        ,item__cnt_play_7d
        ,item__cnt_play_daily_recommend_30d
        ,item__cnt_play_daily_recommend_3d
        ,item__cnt_play_daily_recommend_7d
        ,item__cnt_play_identity_id_30d
        ,item__cnt_play_identity_id_3d
        ,item__cnt_play_identity_id_58463_30d
        ,item__cnt_play_identity_id_58463_3d
        ,item__cnt_play_identity_id_58463_7d
        ,item__cnt_play_identity_id_7d
        ,item__cnt_play_identity_id_daily_recommend_30d
        ,item__cnt_play_identity_id_daily_recommend_3d
        ,item__cnt_play_identity_id_daily_recommend_7d
        ,item__cnt_play_identity_id_music_model_default_30d
        ,item__cnt_play_identity_id_music_model_default_3d
        ,item__cnt_play_identity_id_music_model_default_7d
        ,item__cnt_play_music_model_default_30d
        ,item__cnt_play_music_model_default_3d
        ,item__cnt_play_music_model_default_7d
        ,item__cnt_share_30d
        ,item__cnt_share_3d
        ,item__cnt_share_7d
        ,item__cnt_share_identity_id_30d
        ,item__cnt_share_identity_id_3d
        ,item__cnt_share_identity_id_7d
        ,item__cnt_valid_play_30d
        ,item__cnt_valid_play_3d
        ,item__cnt_valid_play_58463_30d
        ,item__cnt_valid_play_58463_3d
        ,item__cnt_valid_play_58463_7d
        ,item__cnt_valid_play_7d
        ,item__cnt_valid_play_daily_recommend_30d
        ,item__cnt_valid_play_daily_recommend_3d
        ,item__cnt_valid_play_daily_recommend_7d
        ,item__cnt_valid_play_identity_id_30d
        ,item__cnt_valid_play_identity_id_3d
        ,item__cnt_valid_play_identity_id_58463_30d
        ,item__cnt_valid_play_identity_id_58463_3d
        ,item__cnt_valid_play_identity_id_58463_7d
        ,item__cnt_valid_play_identity_id_7d
        ,item__cnt_valid_play_identity_id_daily_recommend_30d
        ,item__cnt_valid_play_identity_id_daily_recommend_3d
        ,item__cnt_valid_play_identity_id_daily_recommend_7d
        ,item__cnt_valid_play_identity_id_music_model_default_30d
        ,item__cnt_valid_play_identity_id_music_model_default_3d
        ,item__cnt_valid_play_identity_id_music_model_default_7d
        ,item__cnt_valid_play_music_model_default_30d
        ,item__cnt_valid_play_music_model_default_3d
        ,item__cnt_valid_play_music_model_default_7d
        ,item__kv_age_group_collect_30d
        ,item__kv_age_group_collect_3d
        ,item__kv_age_group_collect_7d
        ,item__kv_age_group_comment_30d
        ,item__kv_age_group_comment_3d
        ,item__kv_age_group_comment_7d
        ,item__kv_age_group_download_30d
        ,item__kv_age_group_download_3d
        ,item__kv_age_group_download_7d
        ,item__kv_age_group_full_play_30d
        ,item__kv_age_group_full_play_3d
        ,item__kv_age_group_full_play_7d
        ,item__kv_age_group_share_30d
        ,item__kv_age_group_share_3d
        ,item__kv_age_group_share_7d
        ,item__kv_age_group_valid_play_30d
        ,item__kv_age_group_valid_play_3d
        ,item__kv_age_group_valid_play_7d
        ,item__kv_num_collect_age_group_sum_event_value_30d
        ,item__kv_num_collect_age_group_sum_event_value_3d
        ,item__kv_num_collect_age_group_sum_event_value_7d
        ,item__kv_num_full_play_age_group_sum_event_value_30d
        ,item__kv_num_full_play_age_group_sum_event_value_3d
        ,item__kv_num_full_play_age_group_sum_event_value_7d
        ,item__kv_num_play_age_group_sum_event_value_30d
        ,item__kv_num_play_age_group_sum_event_value_3d
        ,item__kv_num_play_age_group_sum_event_value_7d
        ,item__kv_num_valid_play_age_group_sum_event_value_30d
        ,item__kv_num_valid_play_age_group_sum_event_value_3d
        ,item__kv_num_valid_play_age_group_sum_event_value_7d
        ,item__kv_terminal_model_valid_play_30d
        ,item__kv_used_competitors_last_7d_collect_30d
        ,item__kv_used_competitors_last_7d_collect_3d
        ,item__kv_used_competitors_last_7d_collect_7d
        ,item__kv_used_competitors_last_7d_comment_30d
        ,item__kv_used_competitors_last_7d_comment_3d
        ,item__kv_used_competitors_last_7d_comment_7d
        ,item__kv_used_competitors_last_7d_download_30d
        ,item__kv_used_competitors_last_7d_download_3d
        ,item__kv_used_competitors_last_7d_download_7d
        ,item__kv_used_competitors_last_7d_full_play_30d
        ,item__kv_used_competitors_last_7d_full_play_3d
        ,item__kv_used_competitors_last_7d_full_play_7d
        ,item__kv_used_competitors_last_7d_share_30d
        ,item__kv_used_competitors_last_7d_share_3d
        ,item__kv_used_competitors_last_7d_share_7d
        ,item__kv_used_competitors_last_7d_valid_play_30d
        ,item__kv_used_competitors_last_7d_valid_play_3d
        ,item__kv_used_competitors_last_7d_valid_play_7d
        ,item__ratio_click_expose_58463_30d
        ,item__ratio_click_expose_58463_3d
        ,item__ratio_click_expose_58463_7d
        ,item__ratio_click_expose_daily_recommend_30d
        ,item__ratio_click_expose_daily_recommend_3d
        ,item__ratio_click_expose_daily_recommend_7d
        ,item__ratio_valid_play_play_58463_30d
        ,item__ratio_valid_play_play_58463_3d
        ,item__ratio_valid_play_play_58463_7d
        ,item__ratio_valid_play_play_daily_recommend_30d
        ,item__ratio_valid_play_play_daily_recommend_3d
        ,item__ratio_valid_play_play_daily_recommend_7d
        ,item__ratio_valid_play_play_music_model_default_30d
        ,item__ratio_valid_play_play_music_model_default_3d
        ,item__ratio_valid_play_play_music_model_default_7d
        ,item_id
        ,item_publish_time
        ,language_tag_id_lv2
        ,language_tag_id_lv3
        ,lyric_writer
        ,music_vip_type
        ,singer_id
        ,song_business_model
        ,song_length
        ,song_name_purified
        ,style_tag_id_lv2
        ,style_tag_id_lv3
        ,terminal_model
        ,used_competitors_last_7d
        ,user__cnt_click_58463_15d
        ,user__cnt_click_58463_30d
        ,user__cnt_click_58463_3d
        ,user__cnt_click_daily_recommend_15d
        ,user__cnt_click_daily_recommend_30d
        ,user__cnt_click_daily_recommend_3d
        ,user__cnt_collect_15d
        ,user__cnt_collect_30d
        ,user__cnt_collect_3d
        ,user__cnt_comment_15d
        ,user__cnt_comment_30d
        ,user__cnt_comment_3d
        ,user__cnt_download_15d
        ,user__cnt_download_30d
        ,user__cnt_download_3d
        ,user__cnt_expose_58463_15d
        ,user__cnt_expose_58463_30d
        ,user__cnt_expose_58463_3d
        ,user__cnt_expose_daily_recommend_15d
        ,user__cnt_expose_daily_recommend_30d
        ,user__cnt_expose_daily_recommend_3d
        ,user__cnt_full_play_15d
        ,user__cnt_full_play_30d
        ,user__cnt_full_play_3d
        ,user__cnt_full_play_58463_15d
        ,user__cnt_full_play_58463_30d
        ,user__cnt_full_play_58463_3d
        ,user__cnt_full_play_daily_recommend_15d
        ,user__cnt_full_play_daily_recommend_30d
        ,user__cnt_full_play_daily_recommend_3d
        ,user__cnt_full_play_music_model_default_15d
        ,user__cnt_full_play_music_model_default_30d
        ,user__cnt_full_play_music_model_default_3d
        ,user__cnt_play_15d
        ,user__cnt_play_30d
        ,user__cnt_play_3d
        ,user__cnt_play_58463_15d
        ,user__cnt_play_58463_30d
        ,user__cnt_play_58463_3d
        ,user__cnt_play_daily_recommend_15d
        ,user__cnt_play_daily_recommend_30d
        ,user__cnt_play_daily_recommend_3d
        ,user__cnt_play_music_model_default_15d
        ,user__cnt_play_music_model_default_30d
        ,user__cnt_play_music_model_default_3d
        ,user__cnt_share_15d
        ,user__cnt_share_30d
        ,user__cnt_share_3d
        ,user__cnt_valid_play_15d
        ,user__cnt_valid_play_30d
        ,user__cnt_valid_play_3d
        ,user__cnt_valid_play_58463_15d
        ,user__cnt_valid_play_58463_30d
        ,user__cnt_valid_play_58463_3d
        ,user__cnt_valid_play_daily_recommend_15d
        ,user__cnt_valid_play_daily_recommend_30d
        ,user__cnt_valid_play_daily_recommend_3d
        ,user__cnt_valid_play_music_model_default_15d
        ,user__cnt_valid_play_music_model_default_30d
        ,user__cnt_valid_play_music_model_default_3d
        ,user__kv_item_id_click_58463_15d
        ,user__kv_item_id_click_58463_30d
        ,user__kv_item_id_click_58463_3d
        ,user__kv_item_id_click_daily_recommend_15d
        ,user__kv_item_id_click_daily_recommend_30d
        ,user__kv_item_id_click_daily_recommend_3d
        ,user__kv_item_id_collect_15d
        ,user__kv_item_id_collect_30d
        ,user__kv_item_id_collect_3d
        ,user__kv_item_id_download_15d
        ,user__kv_item_id_download_30d
        ,user__kv_item_id_download_3d
        ,user__kv_item_id_expose_58463_15d
        ,user__kv_item_id_expose_58463_30d
        ,user__kv_item_id_expose_58463_3d
        ,user__kv_item_id_expose_daily_recommend_15d
        ,user__kv_item_id_expose_daily_recommend_30d
        ,user__kv_item_id_expose_daily_recommend_3d
        ,user__kv_item_id_full_play_15d
        ,user__kv_item_id_full_play_30d
        ,user__kv_item_id_full_play_3d
        ,user__kv_item_id_full_play_58463_15d
        ,user__kv_item_id_full_play_58463_30d
        ,user__kv_item_id_full_play_58463_3d
        ,user__kv_item_id_full_play_daily_recommend_15d
        ,user__kv_item_id_full_play_daily_recommend_30d
        ,user__kv_item_id_full_play_daily_recommend_3d
        ,user__kv_item_id_full_play_music_model_default_15d
        ,user__kv_item_id_full_play_music_model_default_30d
        ,user__kv_item_id_full_play_music_model_default_3d
        ,user__kv_item_id_play_58463_15d
        ,user__kv_item_id_play_58463_30d
        ,user__kv_item_id_play_58463_3d
        ,user__kv_item_id_play_daily_recommend_15d
        ,user__kv_item_id_play_daily_recommend_30d
        ,user__kv_item_id_play_daily_recommend_3d
        ,user__kv_item_id_play_music_model_default_15d
        ,user__kv_item_id_play_music_model_default_30d
        ,user__kv_item_id_play_music_model_default_3d
        ,user__kv_item_id_share_15d
        ,user__kv_item_id_share_30d
        ,user__kv_item_id_share_3d
        ,user__kv_item_id_valid_play_15d
        ,user__kv_item_id_valid_play_30d
        ,user__kv_item_id_valid_play_3d
        ,user__kv_item_id_valid_play_58463_15d
        ,user__kv_item_id_valid_play_58463_30d
        ,user__kv_item_id_valid_play_58463_3d
        ,user__kv_item_id_valid_play_daily_recommend_15d
        ,user__kv_item_id_valid_play_daily_recommend_30d
        ,user__kv_item_id_valid_play_daily_recommend_3d
        ,user__kv_item_id_valid_play_music_model_default_15d
        ,user__kv_item_id_valid_play_music_model_default_30d
        ,user__kv_item_id_valid_play_music_model_default_3d
        ,user__kv_num_full_play_song_business_model_sum_event_value_58463_15d
        ,user__kv_num_full_play_song_business_model_sum_event_value_58463_30d
        ,user__kv_num_full_play_song_business_model_sum_event_value_58463_3d
        ,user__kv_num_full_play_song_business_model_sum_event_value_daily_recommend_15d
        ,user__kv_num_full_play_song_business_model_sum_event_value_daily_recommend_30d
        ,user__kv_num_full_play_song_business_model_sum_event_value_daily_recommend_3d
        ,user__kv_num_full_play_song_business_model_sum_event_value_music_model_default_15d
        ,user__kv_num_full_play_song_business_model_sum_event_value_music_model_default_30d
        ,user__kv_num_full_play_song_business_model_sum_event_value_music_model_default_3d
        ,user__kv_ratio_item_id_click_expose_58463_15d
        ,user__kv_ratio_item_id_click_expose_58463_30d
        ,user__kv_ratio_item_id_click_expose_58463_3d
        ,user__kv_ratio_item_id_click_expose_daily_recommend_15d
        ,user__kv_ratio_item_id_click_expose_daily_recommend_30d
        ,user__kv_ratio_item_id_click_expose_daily_recommend_3d
        ,user__kv_ratio_singer_id_click_expose_58463_15d
        ,user__kv_ratio_singer_id_click_expose_58463_30d
        ,user__kv_ratio_singer_id_click_expose_58463_3d
        ,user__kv_ratio_singer_id_click_expose_daily_recommend_15d
        ,user__kv_ratio_singer_id_click_expose_daily_recommend_30d
        ,user__kv_ratio_singer_id_click_expose_daily_recommend_3d
        ,user__kv_ratio_style_tag_id_lv2_click_expose_58463_15d
        ,user__kv_ratio_style_tag_id_lv2_click_expose_58463_30d
        ,user__kv_ratio_style_tag_id_lv2_click_expose_58463_3d
        ,user__kv_ratio_style_tag_id_lv2_click_expose_daily_recommend_15d
        ,user__kv_ratio_style_tag_id_lv2_click_expose_daily_recommend_30d
        ,user__kv_ratio_style_tag_id_lv2_click_expose_daily_recommend_3d
        ,user__kv_singer_id_click_58463_15d
        ,user__kv_singer_id_click_58463_30d
        ,user__kv_singer_id_click_58463_3d
        ,user__kv_singer_id_click_daily_recommend_15d
        ,user__kv_singer_id_click_daily_recommend_30d
        ,user__kv_singer_id_click_daily_recommend_3d
        ,user__kv_singer_id_collect_15d
        ,user__kv_singer_id_collect_30d
        ,user__kv_singer_id_collect_3d
        ,user__kv_singer_id_download_15d
        ,user__kv_singer_id_download_30d
        ,user__kv_singer_id_download_3d
        ,user__kv_singer_id_expose_58463_15d
        ,user__kv_singer_id_expose_58463_30d
        ,user__kv_singer_id_expose_58463_3d
        ,user__kv_singer_id_expose_daily_recommend_15d
        ,user__kv_singer_id_expose_daily_recommend_30d
        ,user__kv_singer_id_expose_daily_recommend_3d
        ,user__kv_singer_id_full_play_15d
        ,user__kv_singer_id_full_play_30d
        ,user__kv_singer_id_full_play_3d
        ,user__kv_singer_id_full_play_58463_15d
        ,user__kv_singer_id_full_play_58463_30d
        ,user__kv_singer_id_full_play_58463_3d
        ,user__kv_singer_id_full_play_daily_recommend_15d
        ,user__kv_singer_id_full_play_daily_recommend_30d
        ,user__kv_singer_id_full_play_daily_recommend_3d
        ,user__kv_singer_id_full_play_music_model_default_15d
        ,user__kv_singer_id_full_play_music_model_default_30d
        ,user__kv_singer_id_full_play_music_model_default_3d
        ,user__kv_singer_id_play_58463_15d
        ,user__kv_singer_id_play_58463_30d
        ,user__kv_singer_id_play_58463_3d
        ,user__kv_singer_id_play_daily_recommend_15d
        ,user__kv_singer_id_play_daily_recommend_30d
        ,user__kv_singer_id_play_daily_recommend_3d
        ,user__kv_singer_id_play_music_model_default_15d
        ,user__kv_singer_id_play_music_model_default_30d
        ,user__kv_singer_id_play_music_model_default_3d
        ,user__kv_singer_id_share_15d
        ,user__kv_singer_id_share_30d
        ,user__kv_singer_id_share_3d
        ,user__kv_singer_id_valid_play_15d
        ,user__kv_singer_id_valid_play_30d
        ,user__kv_singer_id_valid_play_3d
        ,user__kv_singer_id_valid_play_58463_15d
        ,user__kv_singer_id_valid_play_58463_30d
        ,user__kv_singer_id_valid_play_58463_3d
        ,user__kv_singer_id_valid_play_daily_recommend_15d
        ,user__kv_singer_id_valid_play_daily_recommend_30d
        ,user__kv_singer_id_valid_play_daily_recommend_3d
        ,user__kv_singer_id_valid_play_music_model_default_15d
        ,user__kv_singer_id_valid_play_music_model_default_30d
        ,user__kv_singer_id_valid_play_music_model_default_3d
        ,user__kv_style_tag_id_lv2_click_58463_15d
        ,user__kv_style_tag_id_lv2_click_58463_30d
        ,user__kv_style_tag_id_lv2_click_58463_3d
        ,user__kv_style_tag_id_lv2_click_daily_recommend_15d
        ,user__kv_style_tag_id_lv2_click_daily_recommend_30d
        ,user__kv_style_tag_id_lv2_click_daily_recommend_3d
        ,user__kv_style_tag_id_lv2_collect_15d
        ,user__kv_style_tag_id_lv2_collect_30d
        ,user__kv_style_tag_id_lv2_collect_3d
        ,user__kv_style_tag_id_lv2_download_15d
        ,user__kv_style_tag_id_lv2_download_30d
        ,user__kv_style_tag_id_lv2_download_3d
        ,user__kv_style_tag_id_lv2_expose_58463_15d
        ,user__kv_style_tag_id_lv2_expose_58463_30d
        ,user__kv_style_tag_id_lv2_expose_58463_3d
        ,user__kv_style_tag_id_lv2_expose_daily_recommend_15d
        ,user__kv_style_tag_id_lv2_expose_daily_recommend_30d
        ,user__kv_style_tag_id_lv2_expose_daily_recommend_3d
        ,user__kv_style_tag_id_lv2_full_play_15d
        ,user__kv_style_tag_id_lv2_full_play_30d
        ,user__kv_style_tag_id_lv2_full_play_3d
        ,user__kv_style_tag_id_lv2_full_play_58463_15d
        ,user__kv_style_tag_id_lv2_full_play_58463_30d
        ,user__kv_style_tag_id_lv2_full_play_58463_3d
        ,user__kv_style_tag_id_lv2_full_play_daily_recommend_15d
        ,user__kv_style_tag_id_lv2_full_play_daily_recommend_30d
        ,user__kv_style_tag_id_lv2_full_play_daily_recommend_3d
        ,user__kv_style_tag_id_lv2_full_play_music_model_default_15d
        ,user__kv_style_tag_id_lv2_full_play_music_model_default_30d
        ,user__kv_style_tag_id_lv2_full_play_music_model_default_3d
        ,user__kv_style_tag_id_lv2_play_58463_15d
        ,user__kv_style_tag_id_lv2_play_58463_30d
        ,user__kv_style_tag_id_lv2_play_58463_3d
        ,user__kv_style_tag_id_lv2_play_daily_recommend_15d
        ,user__kv_style_tag_id_lv2_play_daily_recommend_30d
        ,user__kv_style_tag_id_lv2_play_daily_recommend_3d
        ,user__kv_style_tag_id_lv2_play_music_model_default_15d
        ,user__kv_style_tag_id_lv2_play_music_model_default_30d
        ,user__kv_style_tag_id_lv2_play_music_model_default_3d
        ,user__kv_style_tag_id_lv2_share_15d
        ,user__kv_style_tag_id_lv2_share_30d
        ,user__kv_style_tag_id_lv2_share_3d
        ,user__kv_style_tag_id_lv2_valid_play_15d
        ,user__kv_style_tag_id_lv2_valid_play_30d
        ,user__kv_style_tag_id_lv2_valid_play_3d
        ,user__kv_style_tag_id_lv2_valid_play_58463_15d
        ,user__kv_style_tag_id_lv2_valid_play_58463_30d
        ,user__kv_style_tag_id_lv2_valid_play_58463_3d
        ,user__kv_style_tag_id_lv2_valid_play_daily_recommend_15d
        ,user__kv_style_tag_id_lv2_valid_play_daily_recommend_30d
        ,user__kv_style_tag_id_lv2_valid_play_daily_recommend_3d
        ,user__kv_style_tag_id_lv2_valid_play_music_model_default_15d
        ,user__kv_style_tag_id_lv2_valid_play_music_model_default_30d
        ,user__kv_style_tag_id_lv2_valid_play_music_model_default_3d
        ,user__num_play_avg_event_value_58463_15d
        ,user__num_play_avg_event_value_58463_30d
        ,user__num_play_avg_event_value_58463_3d
        ,user__num_play_avg_event_value_daily_recommend_15d
        ,user__num_play_avg_event_value_daily_recommend_30d
        ,user__num_play_avg_event_value_daily_recommend_3d
        ,user__num_play_avg_event_value_music_model_default_15d
        ,user__num_play_avg_event_value_music_model_default_30d
        ,user__num_play_avg_event_value_music_model_default_3d
        ,user__num_play_sum_event_value_58463_15d
        ,user__num_play_sum_event_value_58463_30d
        ,user__num_play_sum_event_value_58463_3d
        ,user__num_play_sum_event_value_daily_recommend_15d
        ,user__num_play_sum_event_value_daily_recommend_30d
        ,user__num_play_sum_event_value_daily_recommend_3d
        ,user__num_play_sum_event_value_music_model_default_15d
        ,user__num_play_sum_event_value_music_model_default_30d
        ,user__num_play_sum_event_value_music_model_default_3d
        ,user__ratio_click_expose_58463_15d
        ,user__ratio_click_expose_58463_30d
        ,user__ratio_click_expose_58463_3d
        ,user__ratio_click_expose_daily_recommend_15d
        ,user__ratio_click_expose_daily_recommend_30d
        ,user__ratio_click_expose_daily_recommend_3d
        ,user_register_date
        ,user_type
        ,valid_play_100_seq__item_id
        ,valid_play_100_seq__ts
        ,week_day
FROM    dws_rec.song_scene_config_pyfg_encoded_v1
WHERE   p_date = '${bdp.system.bizdate}'
;

