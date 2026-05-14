--odps sql 
--********************************************************************--
--author:吴一鸣
--create time:2026-02-13 17:23:24
--********************************************************************--

CREATE TABLE IF NOT EXISTS song_scene_trainning_set_v1
(
    request_id                                                                          STRING
    ,`__identity_id__`                                                                  STRING
    ,identity_id                                                                        STRING
    ,`__item_id__`                                                                      STRING
    ,item_id                                                                            STRING
    ,event_scene_id                                                                     STRING
    ,is_click                                                                           BIGINT
    ,is_valid                                                                           BIGINT
    ,is_full                                                                            BIGINT
    ,play_duration                                                                      BIGINT
    ,day_h                                                                              BIGINT
    ,week_day                                                                           BIGINT
    ,user_type                                                                          BIGINT
    ,terminal_model                                                                     STRING
    ,age_group                                                                          BIGINT
    ,gender                                                                             BIGINT
    ,music_vip_type                                                                     BIGINT
    ,used_competitors_last_7d                                                           STRING
    ,user_register_date                                                                 BIGINT
    ,user__cnt_play_30d                                                                 BIGINT
    ,user__cnt_valid_play_30d                                                           BIGINT
    ,user__cnt_full_play_30d                                                            BIGINT
    ,user__cnt_collect_30d                                                              BIGINT
    ,user__cnt_download_30d                                                             BIGINT
    ,user__cnt_comment_30d                                                              BIGINT
    ,user__cnt_share_30d                                                                BIGINT
    ,user__cnt_play_15d                                                                 BIGINT
    ,user__cnt_valid_play_15d                                                           BIGINT
    ,user__cnt_full_play_15d                                                            BIGINT
    ,user__cnt_collect_15d                                                              BIGINT
    ,user__cnt_download_15d                                                             BIGINT
    ,user__cnt_comment_15d                                                              BIGINT
    ,user__cnt_share_15d                                                                BIGINT
    ,user__cnt_play_3d                                                                  BIGINT
    ,user__cnt_valid_play_3d                                                            BIGINT
    ,user__cnt_full_play_3d                                                             BIGINT
    ,user__cnt_collect_3d                                                               BIGINT
    ,user__cnt_download_3d                                                              BIGINT
    ,user__cnt_comment_3d                                                               BIGINT
    ,user__cnt_share_3d                                                                 BIGINT
    ,user__cnt_play_music_model_default_30d                                             BIGINT
    ,user__cnt_valid_play_music_model_default_30d                                       BIGINT
    ,user__cnt_full_play_music_model_default_30d                                        BIGINT
    ,user__cnt_play_music_model_default_15d                                             BIGINT
    ,user__cnt_valid_play_music_model_default_15d                                       BIGINT
    ,user__cnt_full_play_music_model_default_15d                                        BIGINT
    ,user__cnt_play_music_model_default_3d                                              BIGINT
    ,user__cnt_valid_play_music_model_default_3d                                        BIGINT
    ,user__cnt_full_play_music_model_default_3d                                         BIGINT
    ,user__num_play_sum_event_value_music_model_default_30d                             DOUBLE
    ,user__num_play_sum_event_value_music_model_default_15d                             DOUBLE
    ,user__num_play_sum_event_value_music_model_default_3d                              DOUBLE
    ,user__num_play_avg_event_value_music_model_default_30d                             DOUBLE
    ,user__num_play_avg_event_value_music_model_default_15d                             DOUBLE
    ,user__num_play_avg_event_value_music_model_default_3d                              DOUBLE
    ,user__kv_num_full_play_song_business_model_sum_event_value_music_model_default_30d STRING
    ,user__kv_num_full_play_song_business_model_sum_event_value_music_model_default_15d STRING
    ,user__kv_num_full_play_song_business_model_sum_event_value_music_model_default_3d  STRING
    ,user__kv_item_id_play_music_model_default_30d                                      STRING
    ,user__kv_singer_id_play_music_model_default_30d                                    STRING
    ,user__kv_style_tag_id_lv2_play_music_model_default_30d                             STRING
    ,user__kv_item_id_valid_play_music_model_default_30d                                STRING
    ,user__kv_singer_id_valid_play_music_model_default_30d                              STRING
    ,user__kv_style_tag_id_lv2_valid_play_music_model_default_30d                       STRING
    ,user__kv_item_id_full_play_music_model_default_30d                                 STRING
    ,user__kv_singer_id_full_play_music_model_default_30d                               STRING
    ,user__kv_style_tag_id_lv2_full_play_music_model_default_30d                        STRING
    ,user__kv_item_id_play_music_model_default_15d                                      STRING
    ,user__kv_singer_id_play_music_model_default_15d                                    STRING
    ,user__kv_style_tag_id_lv2_play_music_model_default_15d                             STRING
    ,user__kv_item_id_valid_play_music_model_default_15d                                STRING
    ,user__kv_singer_id_valid_play_music_model_default_15d                              STRING
    ,user__kv_style_tag_id_lv2_valid_play_music_model_default_15d                       STRING
    ,user__kv_item_id_full_play_music_model_default_15d                                 STRING
    ,user__kv_singer_id_full_play_music_model_default_15d                               STRING
    ,user__kv_style_tag_id_lv2_full_play_music_model_default_15d                        STRING
    ,user__kv_item_id_play_music_model_default_3d                                       STRING
    ,user__kv_singer_id_play_music_model_default_3d                                     STRING
    ,user__kv_style_tag_id_lv2_play_music_model_default_3d                              STRING
    ,user__kv_item_id_valid_play_music_model_default_3d                                 STRING
    ,user__kv_singer_id_valid_play_music_model_default_3d                               STRING
    ,user__kv_style_tag_id_lv2_valid_play_music_model_default_3d                        STRING
    ,user__kv_item_id_full_play_music_model_default_3d                                  STRING
    ,user__kv_singer_id_full_play_music_model_default_3d                                STRING
    ,user__kv_style_tag_id_lv2_full_play_music_model_default_3d                         STRING
    ,user__kv_item_id_valid_play_30d                                                    STRING
    ,user__kv_style_tag_id_lv2_valid_play_30d                                           STRING
    ,user__kv_singer_id_valid_play_30d                                                  STRING
    ,user__kv_item_id_full_play_30d                                                     STRING
    ,user__kv_style_tag_id_lv2_full_play_30d                                            STRING
    ,user__kv_singer_id_full_play_30d                                                   STRING
    ,user__kv_item_id_collect_30d                                                       STRING
    ,user__kv_style_tag_id_lv2_collect_30d                                              STRING
    ,user__kv_singer_id_collect_30d                                                     STRING
    ,user__kv_item_id_download_30d                                                      STRING
    ,user__kv_style_tag_id_lv2_download_30d                                             STRING
    ,user__kv_singer_id_download_30d                                                    STRING
    ,user__kv_item_id_share_30d                                                         STRING
    ,user__kv_style_tag_id_lv2_share_30d                                                STRING
    ,user__kv_singer_id_share_30d                                                       STRING
    ,user__kv_item_id_valid_play_15d                                                    STRING
    ,user__kv_style_tag_id_lv2_valid_play_15d                                           STRING
    ,user__kv_singer_id_valid_play_15d                                                  STRING
    ,user__kv_item_id_full_play_15d                                                     STRING
    ,user__kv_style_tag_id_lv2_full_play_15d                                            STRING
    ,user__kv_singer_id_full_play_15d                                                   STRING
    ,user__kv_item_id_collect_15d                                                       STRING
    ,user__kv_style_tag_id_lv2_collect_15d                                              STRING
    ,user__kv_singer_id_collect_15d                                                     STRING
    ,user__kv_item_id_download_15d                                                      STRING
    ,user__kv_style_tag_id_lv2_download_15d                                             STRING
    ,user__kv_singer_id_download_15d                                                    STRING
    ,user__kv_item_id_share_15d                                                         STRING
    ,user__kv_style_tag_id_lv2_share_15d                                                STRING
    ,user__kv_singer_id_share_15d                                                       STRING
    ,user__kv_item_id_valid_play_3d                                                     STRING
    ,user__kv_style_tag_id_lv2_valid_play_3d                                            STRING
    ,user__kv_singer_id_valid_play_3d                                                   STRING
    ,user__kv_item_id_full_play_3d                                                      STRING
    ,user__kv_style_tag_id_lv2_full_play_3d                                             STRING
    ,user__kv_singer_id_full_play_3d                                                    STRING
    ,user__kv_item_id_collect_3d                                                        STRING
    ,user__kv_style_tag_id_lv2_collect_3d                                               STRING
    ,user__kv_singer_id_collect_3d                                                      STRING
    ,user__kv_item_id_download_3d                                                       STRING
    ,user__kv_style_tag_id_lv2_download_3d                                              STRING
    ,user__kv_singer_id_download_3d                                                     STRING
    ,user__kv_item_id_share_3d                                                          STRING
    ,user__kv_style_tag_id_lv2_share_3d                                                 STRING
    ,user__kv_singer_id_share_3d                                                        STRING
    ,singer_id                                                                          STRING
    ,composer                                                                           STRING
    ,lyric_writer                                                                       STRING
    ,language_tag_id_lv2                                                                STRING
    ,language_tag_id_lv3                                                                STRING
    ,style_tag_id_lv2                                                                   STRING
    ,style_tag_id_lv3                                                                   STRING
    ,age_tag_id_lv2                                                                     STRING
    ,age_tag_id_lv3                                                                     STRING
    ,song_business_model                                                                STRING
    ,song_length                                                                        DOUBLE
    ,song_name_purified                                                                 STRING
    ,item_publish_time                                                                  BIGINT
    ,item__cnt_play_30d                                                                 BIGINT
    ,item__cnt_valid_play_30d                                                           BIGINT
    ,item__cnt_full_play_30d                                                            BIGINT
    ,item__cnt_collect_30d                                                              BIGINT
    ,item__cnt_download_30d                                                             BIGINT
    ,item__cnt_comment_30d                                                              BIGINT
    ,item__cnt_share_30d                                                                BIGINT
    ,item__cnt_play_7d                                                                  BIGINT
    ,item__cnt_valid_play_7d                                                            BIGINT
    ,item__cnt_full_play_7d                                                             BIGINT
    ,item__cnt_collect_7d                                                               BIGINT
    ,item__cnt_download_7d                                                              BIGINT
    ,item__cnt_comment_7d                                                               BIGINT
    ,item__cnt_share_7d                                                                 BIGINT
    ,item__cnt_play_3d                                                                  BIGINT
    ,item__cnt_valid_play_3d                                                            BIGINT
    ,item__cnt_full_play_3d                                                             BIGINT
    ,item__cnt_collect_3d                                                               BIGINT
    ,item__cnt_download_3d                                                              BIGINT
    ,item__cnt_comment_3d                                                               BIGINT
    ,item__cnt_share_3d                                                                 BIGINT
    ,item__cnt_play_identity_id_30d                                                     BIGINT
    ,item__cnt_valid_play_identity_id_30d                                               BIGINT
    ,item__cnt_full_play_identity_id_30d                                                BIGINT
    ,item__cnt_collect_identity_id_30d                                                  BIGINT
    ,item__cnt_download_identity_id_30d                                                 BIGINT
    ,item__cnt_comment_identity_id_30d                                                  BIGINT
    ,item__cnt_share_identity_id_30d                                                    BIGINT
    ,item__cnt_play_identity_id_7d                                                      BIGINT
    ,item__cnt_valid_play_identity_id_7d                                                BIGINT
    ,item__cnt_full_play_identity_id_7d                                                 BIGINT
    ,item__cnt_collect_identity_id_7d                                                   BIGINT
    ,item__cnt_download_identity_id_7d                                                  BIGINT
    ,item__cnt_comment_identity_id_7d                                                   BIGINT
    ,item__cnt_share_identity_id_7d                                                     BIGINT
    ,item__cnt_play_identity_id_3d                                                      BIGINT
    ,item__cnt_valid_play_identity_id_3d                                                BIGINT
    ,item__cnt_full_play_identity_id_3d                                                 BIGINT
    ,item__cnt_collect_identity_id_3d                                                   BIGINT
    ,item__cnt_download_identity_id_3d                                                  BIGINT
    ,item__cnt_comment_identity_id_3d                                                   BIGINT
    ,item__cnt_share_identity_id_3d                                                     BIGINT
    ,item__cnt_play_music_model_default_30d                                             BIGINT
    ,item__cnt_valid_play_music_model_default_30d                                       BIGINT
    ,item__cnt_full_play_music_model_default_30d                                        BIGINT
    ,item__cnt_play_music_model_default_7d                                              BIGINT
    ,item__cnt_valid_play_music_model_default_7d                                        BIGINT
    ,item__cnt_full_play_music_model_default_7d                                         BIGINT
    ,item__cnt_play_music_model_default_3d                                              BIGINT
    ,item__cnt_valid_play_music_model_default_3d                                        BIGINT
    ,item__cnt_full_play_music_model_default_3d                                         BIGINT
    ,item__cnt_play_identity_id_music_model_default_30d                                 BIGINT
    ,item__cnt_valid_play_identity_id_music_model_default_30d                           BIGINT
    ,item__cnt_full_play_identity_id_music_model_default_30d                            BIGINT
    ,item__cnt_play_identity_id_music_model_default_7d                                  BIGINT
    ,item__cnt_valid_play_identity_id_music_model_default_7d                            BIGINT
    ,item__cnt_full_play_identity_id_music_model_default_7d                             BIGINT
    ,item__cnt_play_identity_id_music_model_default_3d                                  BIGINT
    ,item__cnt_valid_play_identity_id_music_model_default_3d                            BIGINT
    ,item__cnt_full_play_identity_id_music_model_default_3d                             BIGINT
    ,item__ratio_valid_play_play_music_model_default_30d                                DOUBLE
    ,item__ratio_valid_play_play_music_model_default_7d                                 DOUBLE
    ,item__ratio_valid_play_play_music_model_default_3d                                 DOUBLE
    ,item__kv_age_group_valid_play_30d                                                  STRING
    ,item__kv_used_competitors_last_7d_valid_play_30d                                   STRING
    ,item__kv_age_group_full_play_30d                                                   STRING
    ,item__kv_used_competitors_last_7d_full_play_30d                                    STRING
    ,item__kv_age_group_collect_30d                                                     STRING
    ,item__kv_used_competitors_last_7d_collect_30d                                      STRING
    ,item__kv_age_group_download_30d                                                    STRING
    ,item__kv_used_competitors_last_7d_download_30d                                     STRING
    ,item__kv_age_group_comment_30d                                                     STRING
    ,item__kv_used_competitors_last_7d_comment_30d                                      STRING
    ,item__kv_age_group_share_30d                                                       STRING
    ,item__kv_used_competitors_last_7d_share_30d                                        STRING
    ,item__kv_age_group_valid_play_7d                                                   STRING
    ,item__kv_used_competitors_last_7d_valid_play_7d                                    STRING
    ,item__kv_age_group_full_play_7d                                                    STRING
    ,item__kv_used_competitors_last_7d_full_play_7d                                     STRING
    ,item__kv_age_group_collect_7d                                                      STRING
    ,item__kv_used_competitors_last_7d_collect_7d                                       STRING
    ,item__kv_age_group_download_7d                                                     STRING
    ,item__kv_used_competitors_last_7d_download_7d                                      STRING
    ,item__kv_age_group_comment_7d                                                      STRING
    ,item__kv_used_competitors_last_7d_comment_7d                                       STRING
    ,item__kv_age_group_share_7d                                                        STRING
    ,item__kv_used_competitors_last_7d_share_7d                                         STRING
    ,item__kv_age_group_valid_play_3d                                                   STRING
    ,item__kv_used_competitors_last_7d_valid_play_3d                                    STRING
    ,item__kv_age_group_full_play_3d                                                    STRING
    ,item__kv_used_competitors_last_7d_full_play_3d                                     STRING
    ,item__kv_age_group_collect_3d                                                      STRING
    ,item__kv_used_competitors_last_7d_collect_3d                                       STRING
    ,item__kv_age_group_download_3d                                                     STRING
    ,item__kv_used_competitors_last_7d_download_3d                                      STRING
    ,item__kv_age_group_comment_3d                                                      STRING
    ,item__kv_used_competitors_last_7d_comment_3d                                       STRING
    ,item__kv_age_group_share_3d                                                        STRING
    ,item__kv_used_competitors_last_7d_share_3d                                         STRING
    ,item__kv_num_play_age_group_sum_event_value_30d                                    STRING
    ,item__kv_num_valid_play_age_group_sum_event_value_30d                              STRING
    ,item__kv_num_full_play_age_group_sum_event_value_30d                               STRING
    ,item__kv_num_collect_age_group_sum_event_value_30d                                 STRING
    ,item__kv_num_play_age_group_sum_event_value_7d                                     STRING
    ,item__kv_num_valid_play_age_group_sum_event_value_7d                               STRING
    ,item__kv_num_full_play_age_group_sum_event_value_7d                                STRING
    ,item__kv_num_collect_age_group_sum_event_value_7d                                  STRING
    ,item__kv_num_play_age_group_sum_event_value_3d                                     STRING
    ,item__kv_num_valid_play_age_group_sum_event_value_3d                               STRING
    ,item__kv_num_full_play_age_group_sum_event_value_3d                                STRING
    ,item__kv_num_collect_age_group_sum_event_value_3d                                  STRING
    ,item__kv_terminal_model_valid_play_30d                                             STRING
    ,full_play_100_seq__item_id                                                         STRING
    ,full_play_100_seq__singer_id                                                       STRING
    ,full_play_100_seq__lyric_writer                                                    STRING
    ,full_play_100_seq__style_tag_id_lv2                                                STRING
    ,full_play_100_seq__ts                                                              STRING
    ,valid_play_100_seq__item_id                                                        STRING
    ,valid_play_100_seq__style_tag_id_lv2                                               STRING
    ,valid_play_100_seq__singer_id                                                      STRING
    ,valid_play_100_seq__lyric_writer                                                   STRING
    ,valid_play_100_seq__ts                                                             STRING
    ,user__cnt_expose_58463_30d                                                         BIGINT
    ,user__cnt_click_58463_30d                                                          BIGINT
    ,user__cnt_play_58463_30d                                                           BIGINT
    ,user__cnt_valid_play_58463_30d                                                     BIGINT
    ,user__cnt_full_play_58463_30d                                                      BIGINT
    ,user__cnt_expose_58463_15d                                                         BIGINT
    ,user__cnt_click_58463_15d                                                          BIGINT
    ,user__cnt_play_58463_15d                                                           BIGINT
    ,user__cnt_valid_play_58463_15d                                                     BIGINT
    ,user__cnt_full_play_58463_15d                                                      BIGINT
    ,user__cnt_expose_58463_3d                                                          BIGINT
    ,user__cnt_click_58463_3d                                                           BIGINT
    ,user__cnt_play_58463_3d                                                            BIGINT
    ,user__cnt_valid_play_58463_3d                                                      BIGINT
    ,user__cnt_full_play_58463_3d                                                       BIGINT
    ,user__num_play_sum_event_value_58463_30d                                           DOUBLE
    ,user__num_play_sum_event_value_58463_15d                                           DOUBLE
    ,user__num_play_sum_event_value_58463_3d                                            DOUBLE
    ,user__num_play_avg_event_value_58463_30d                                           DOUBLE
    ,user__num_play_avg_event_value_58463_15d                                           DOUBLE
    ,user__num_play_avg_event_value_58463_3d                                            DOUBLE
    ,user__ratio_click_expose_58463_30d                                                 DOUBLE
    ,user__ratio_click_expose_58463_15d                                                 DOUBLE
    ,user__ratio_click_expose_58463_3d                                                  DOUBLE
    ,user__kv_num_full_play_song_business_model_sum_event_value_58463_15d               STRING
    ,user__kv_num_full_play_song_business_model_sum_event_value_58463_3d                STRING
    ,user__kv_item_id_expose_58463_30d                                                  STRING
    ,user__kv_singer_id_expose_58463_30d                                                STRING
    ,user__kv_style_tag_id_lv2_expose_58463_30d                                         STRING
    ,user__kv_item_id_click_58463_30d                                                   STRING
    ,user__kv_singer_id_click_58463_30d                                                 STRING
    ,user__kv_style_tag_id_lv2_click_58463_30d                                          STRING
    ,user__kv_item_id_play_58463_30d                                                    STRING
    ,user__kv_singer_id_play_58463_30d                                                  STRING
    ,user__kv_style_tag_id_lv2_play_58463_30d                                           STRING
    ,user__kv_item_id_valid_play_58463_30d                                              STRING
    ,user__kv_singer_id_valid_play_58463_30d                                            STRING
    ,user__kv_style_tag_id_lv2_valid_play_58463_30d                                     STRING
    ,user__kv_item_id_full_play_58463_30d                                               STRING
    ,user__kv_singer_id_full_play_58463_30d                                             STRING
    ,user__kv_style_tag_id_lv2_full_play_58463_30d                                      STRING
    ,user__kv_item_id_expose_58463_15d                                                  STRING
    ,user__kv_singer_id_expose_58463_15d                                                STRING
    ,user__kv_style_tag_id_lv2_expose_58463_15d                                         STRING
    ,user__kv_item_id_click_58463_15d                                                   STRING
    ,user__kv_singer_id_click_58463_15d                                                 STRING
    ,user__kv_style_tag_id_lv2_click_58463_15d                                          STRING
    ,user__kv_item_id_play_58463_15d                                                    STRING
    ,user__kv_singer_id_play_58463_15d                                                  STRING
    ,user__kv_style_tag_id_lv2_play_58463_15d                                           STRING
    ,user__kv_item_id_valid_play_58463_15d                                              STRING
    ,user__kv_singer_id_valid_play_58463_15d                                            STRING
    ,user__kv_style_tag_id_lv2_valid_play_58463_15d                                     STRING
    ,user__kv_item_id_full_play_58463_15d                                               STRING
    ,user__kv_singer_id_full_play_58463_15d                                             STRING
    ,user__kv_style_tag_id_lv2_full_play_58463_15d                                      STRING
    ,user__kv_item_id_expose_58463_3d                                                   STRING
    ,user__kv_singer_id_expose_58463_3d                                                 STRING
    ,user__kv_style_tag_id_lv2_expose_58463_3d                                          STRING
    ,user__kv_item_id_click_58463_3d                                                    STRING
    ,user__kv_singer_id_click_58463_3d                                                  STRING
    ,user__kv_style_tag_id_lv2_click_58463_3d                                           STRING
    ,user__kv_item_id_play_58463_3d                                                     STRING
    ,user__kv_singer_id_play_58463_3d                                                   STRING
    ,user__kv_style_tag_id_lv2_play_58463_3d                                            STRING
    ,user__kv_item_id_valid_play_58463_3d                                               STRING
    ,user__kv_singer_id_valid_play_58463_3d                                             STRING
    ,user__kv_style_tag_id_lv2_valid_play_58463_3d                                      STRING
    ,user__kv_item_id_full_play_58463_3d                                                STRING
    ,user__kv_singer_id_full_play_58463_3d                                              STRING
    ,user__kv_style_tag_id_lv2_full_play_58463_3d                                       STRING
    ,user__kv_ratio_item_id_click_expose_58463_30d                                      STRING
    ,user__kv_ratio_style_tag_id_lv2_click_expose_58463_30d                             STRING
    ,user__kv_ratio_singer_id_click_expose_58463_30d                                    STRING
    ,user__kv_ratio_item_id_click_expose_58463_15d                                      STRING
    ,user__kv_ratio_style_tag_id_lv2_click_expose_58463_15d                             STRING
    ,user__kv_ratio_singer_id_click_expose_58463_15d                                    STRING
    ,user__kv_ratio_item_id_click_expose_58463_3d                                       STRING
    ,user__kv_ratio_style_tag_id_lv2_click_expose_58463_3d                              STRING
    ,user__kv_ratio_singer_id_click_expose_58463_3d                                     STRING
    ,user__kv_num_full_play_song_business_model_sum_event_value_58463_30d               STRING
    ,item__cnt_click_58463_30d                                                          DOUBLE
    ,item__cnt_play_58463_30d                                                           DOUBLE
    ,item__cnt_valid_play_58463_30d                                                     DOUBLE
    ,item__cnt_full_play_58463_30d                                                      DOUBLE
    ,item__cnt_expose_58463_7d                                                          DOUBLE
    ,item__cnt_click_58463_7d                                                           DOUBLE
    ,item__cnt_play_58463_7d                                                            DOUBLE
    ,item__cnt_valid_play_58463_7d                                                      DOUBLE
    ,item__cnt_full_play_58463_7d                                                       DOUBLE
    ,item__cnt_expose_58463_3d                                                          DOUBLE
    ,item__cnt_click_58463_3d                                                           DOUBLE
    ,item__cnt_play_58463_3d                                                            DOUBLE
    ,item__cnt_valid_play_58463_3d                                                      DOUBLE
    ,item__cnt_full_play_58463_3d                                                       DOUBLE
    ,item__cnt_expose_identity_id_58463_30d                                             DOUBLE
    ,item__cnt_click_identity_id_58463_30d                                              DOUBLE
    ,item__cnt_play_identity_id_58463_30d                                               DOUBLE
    ,item__cnt_valid_play_identity_id_58463_30d                                         DOUBLE
    ,item__cnt_full_play_identity_id_58463_30d                                          DOUBLE
    ,item__cnt_expose_identity_id_58463_7d                                              DOUBLE
    ,item__cnt_click_identity_id_58463_7d                                               DOUBLE
    ,item__cnt_play_identity_id_58463_7d                                                DOUBLE
    ,item__cnt_valid_play_identity_id_58463_7d                                          DOUBLE
    ,item__cnt_full_play_identity_id_58463_7d                                           DOUBLE
    ,item__cnt_expose_identity_id_58463_3d                                              DOUBLE
    ,item__cnt_click_identity_id_58463_3d                                               DOUBLE
    ,item__cnt_play_identity_id_58463_3d                                                DOUBLE
    ,item__cnt_valid_play_identity_id_58463_3d                                          DOUBLE
    ,item__cnt_full_play_identity_id_58463_3d                                           DOUBLE
    ,item__ratio_valid_play_play_58463_30d                                              DOUBLE
    ,item__ratio_click_expose_58463_30d                                                 DOUBLE
    ,item__ratio_valid_play_play_58463_7d                                               DOUBLE
    ,item__ratio_click_expose_58463_7d                                                  DOUBLE
    ,item__ratio_valid_play_play_58463_3d                                               DOUBLE
    ,item__ratio_click_expose_58463_3d                                                  DOUBLE
    ,item__cnt_expose_58463_30d                                                         DOUBLE
    ,user__num_play_avg_event_value_daily_recommend_3d                                  DOUBLE
    ,user__ratio_click_expose_daily_recommend_30d                                       DOUBLE
    ,user__ratio_click_expose_daily_recommend_15d                                       DOUBLE
    ,user__ratio_click_expose_daily_recommend_3d                                        DOUBLE
    ,user__kv_num_full_play_song_business_model_sum_event_value_daily_recommend_30d     STRING
    ,user__kv_num_full_play_song_business_model_sum_event_value_daily_recommend_15d     STRING
    ,user__kv_num_full_play_song_business_model_sum_event_value_daily_recommend_3d      STRING
    ,user__kv_item_id_expose_daily_recommend_30d                                        STRING
    ,user__kv_singer_id_expose_daily_recommend_30d                                      STRING
    ,user__kv_style_tag_id_lv2_expose_daily_recommend_30d                               STRING
    ,user__kv_item_id_click_daily_recommend_30d                                         STRING
    ,user__kv_singer_id_click_daily_recommend_30d                                       STRING
    ,user__kv_style_tag_id_lv2_click_daily_recommend_30d                                STRING
    ,user__kv_item_id_play_daily_recommend_30d                                          STRING
    ,user__kv_singer_id_play_daily_recommend_30d                                        STRING
    ,user__kv_style_tag_id_lv2_play_daily_recommend_30d                                 STRING
    ,user__kv_item_id_valid_play_daily_recommend_30d                                    STRING
    ,user__kv_singer_id_valid_play_daily_recommend_30d                                  STRING
    ,user__kv_style_tag_id_lv2_valid_play_daily_recommend_30d                           STRING
    ,user__kv_item_id_full_play_daily_recommend_30d                                     STRING
    ,user__kv_singer_id_full_play_daily_recommend_30d                                   STRING
    ,user__kv_style_tag_id_lv2_full_play_daily_recommend_30d                            STRING
    ,user__kv_item_id_expose_daily_recommend_15d                                        STRING
    ,user__kv_singer_id_expose_daily_recommend_15d                                      STRING
    ,user__kv_style_tag_id_lv2_expose_daily_recommend_15d                               STRING
    ,user__kv_item_id_click_daily_recommend_15d                                         STRING
    ,user__kv_singer_id_click_daily_recommend_15d                                       STRING
    ,user__kv_style_tag_id_lv2_click_daily_recommend_15d                                STRING
    ,user__kv_item_id_play_daily_recommend_15d                                          STRING
    ,user__kv_singer_id_play_daily_recommend_15d                                        STRING
    ,user__kv_style_tag_id_lv2_play_daily_recommend_15d                                 STRING
    ,user__kv_item_id_valid_play_daily_recommend_15d                                    STRING
    ,user__kv_singer_id_valid_play_daily_recommend_15d                                  STRING
    ,user__kv_style_tag_id_lv2_valid_play_daily_recommend_15d                           STRING
    ,user__kv_item_id_full_play_daily_recommend_15d                                     STRING
    ,user__kv_singer_id_full_play_daily_recommend_15d                                   STRING
    ,user__kv_style_tag_id_lv2_full_play_daily_recommend_15d                            STRING
    ,user__kv_item_id_expose_daily_recommend_3d                                         STRING
    ,user__kv_singer_id_expose_daily_recommend_3d                                       STRING
    ,user__kv_style_tag_id_lv2_expose_daily_recommend_3d                                STRING
    ,user__kv_item_id_click_daily_recommend_3d                                          STRING
    ,user__kv_singer_id_click_daily_recommend_3d                                        STRING
    ,user__kv_style_tag_id_lv2_click_daily_recommend_3d                                 STRING
    ,user__kv_item_id_play_daily_recommend_3d                                           STRING
    ,user__kv_singer_id_play_daily_recommend_3d                                         STRING
    ,user__kv_style_tag_id_lv2_play_daily_recommend_3d                                  STRING
    ,user__kv_item_id_valid_play_daily_recommend_3d                                     STRING
    ,user__kv_singer_id_valid_play_daily_recommend_3d                                   STRING
    ,user__kv_style_tag_id_lv2_valid_play_daily_recommend_3d                            STRING
    ,user__kv_item_id_full_play_daily_recommend_3d                                      STRING
    ,user__kv_singer_id_full_play_daily_recommend_3d                                    STRING
    ,user__kv_style_tag_id_lv2_full_play_daily_recommend_3d                             STRING
    ,user__kv_ratio_style_tag_id_lv2_click_expose_daily_recommend_30d                   STRING
    ,user__kv_ratio_singer_id_click_expose_daily_recommend_30d                          STRING
    ,user__kv_ratio_item_id_click_expose_daily_recommend_15d                            STRING
    ,user__kv_ratio_style_tag_id_lv2_click_expose_daily_recommend_15d                   STRING
    ,user__kv_ratio_singer_id_click_expose_daily_recommend_15d                          STRING
    ,user__kv_ratio_item_id_click_expose_daily_recommend_3d                             STRING
    ,user__kv_ratio_style_tag_id_lv2_click_expose_daily_recommend_3d                    STRING
    ,user__kv_ratio_singer_id_click_expose_daily_recommend_3d                           STRING
    ,user__num_play_sum_event_value_daily_recommend_30d                                 DOUBLE
    ,user__num_play_sum_event_value_daily_recommend_15d                                 DOUBLE
    ,user__num_play_sum_event_value_daily_recommend_3d                                  DOUBLE
    ,user__num_play_avg_event_value_daily_recommend_30d                                 DOUBLE
    ,user__num_play_avg_event_value_daily_recommend_15d                                 DOUBLE
    ,user__kv_ratio_item_id_click_expose_daily_recommend_30d                            STRING
    ,user__cnt_expose_daily_recommend_30d                                               BIGINT
    ,user__cnt_click_daily_recommend_30d                                                BIGINT
    ,user__cnt_play_daily_recommend_30d                                                 BIGINT
    ,user__cnt_valid_play_daily_recommend_30d                                           BIGINT
    ,user__cnt_full_play_daily_recommend_30d                                            BIGINT
    ,user__cnt_expose_daily_recommend_15d                                               BIGINT
    ,user__cnt_click_daily_recommend_15d                                                BIGINT
    ,user__cnt_play_daily_recommend_15d                                                 BIGINT
    ,user__cnt_valid_play_daily_recommend_15d                                           BIGINT
    ,user__cnt_full_play_daily_recommend_15d                                            BIGINT
    ,user__cnt_expose_daily_recommend_3d                                                BIGINT
    ,user__cnt_click_daily_recommend_3d                                                 BIGINT
    ,user__cnt_play_daily_recommend_3d                                                  BIGINT
    ,user__cnt_valid_play_daily_recommend_3d                                            BIGINT
    ,user__cnt_full_play_daily_recommend_3d                                             BIGINT
    ,item__cnt_expose_daily_recommend_30d                                               BIGINT
    ,item__cnt_click_daily_recommend_30d                                                BIGINT
    ,item__cnt_play_daily_recommend_30d                                                 BIGINT
    ,item__cnt_valid_play_daily_recommend_30d                                           BIGINT
    ,item__cnt_full_play_daily_recommend_30d                                            BIGINT
    ,item__cnt_expose_daily_recommend_7d                                                BIGINT
    ,item__cnt_click_daily_recommend_7d                                                 BIGINT
    ,item__cnt_play_daily_recommend_7d                                                  BIGINT
    ,item__cnt_valid_play_daily_recommend_7d                                            BIGINT
    ,item__cnt_full_play_daily_recommend_7d                                             BIGINT
    ,item__cnt_expose_daily_recommend_3d                                                BIGINT
    ,item__cnt_click_daily_recommend_3d                                                 BIGINT
    ,item__cnt_play_daily_recommend_3d                                                  BIGINT
    ,item__cnt_valid_play_daily_recommend_3d                                            BIGINT
    ,item__cnt_full_play_daily_recommend_3d                                             BIGINT
    ,item__cnt_expose_identity_id_daily_recommend_30d                                   BIGINT
    ,item__cnt_click_identity_id_daily_recommend_30d                                    BIGINT
    ,item__cnt_play_identity_id_daily_recommend_30d                                     BIGINT
    ,item__cnt_valid_play_identity_id_daily_recommend_30d                               BIGINT
    ,item__cnt_full_play_identity_id_daily_recommend_30d                                BIGINT
    ,item__cnt_expose_identity_id_daily_recommend_7d                                    BIGINT
    ,item__cnt_click_identity_id_daily_recommend_7d                                     BIGINT
    ,item__cnt_play_identity_id_daily_recommend_7d                                      BIGINT
    ,item__cnt_valid_play_identity_id_daily_recommend_7d                                BIGINT
    ,item__cnt_full_play_identity_id_daily_recommend_7d                                 BIGINT
    ,item__cnt_expose_identity_id_daily_recommend_3d                                    BIGINT
    ,item__cnt_click_identity_id_daily_recommend_3d                                     BIGINT
    ,item__cnt_play_identity_id_daily_recommend_3d                                      BIGINT
    ,item__cnt_valid_play_identity_id_daily_recommend_3d                                BIGINT
    ,item__cnt_full_play_identity_id_daily_recommend_3d                                 BIGINT
    ,item__ratio_valid_play_play_daily_recommend_30d                                    DOUBLE
    ,item__ratio_click_expose_daily_recommend_30d                                       DOUBLE
    ,item__ratio_valid_play_play_daily_recommend_7d                                     DOUBLE
    ,item__ratio_click_expose_daily_recommend_7d                                        DOUBLE
    ,item__ratio_valid_play_play_daily_recommend_3d                                     DOUBLE
    ,item__ratio_click_expose_daily_recommend_3d                                        DOUBLE
)
PARTITIONED BY 
(
    p_date           STRING
)
LIFECYCLE 60
;




INSERT OVERWRITE TABLE dws_rec.song_scene_trainning_set_v1 PARTITION (p_date = '${p_date}')
SELECT  sq0.request_id
        ,sq1.__identity_id__
        ,sq0.identity_id
        ,sq1.__item_id__
        ,sq0.item_id
        ,sq1.event_scene_id
        ,sq1.is_click
        ,sq1.is_valid
        ,sq1.is_full
        ,sq1.play_duration
        ,sq0.day_h
        ,sq0.week_day
        ,sq0.user_type
        ,sq0.terminal_model
        ,sq0.age_group
        ,sq0.gender
        ,sq0.music_vip_type
        ,sq0.used_competitors_last_7d
        ,sq0.user_register_date
        ,sq0.user__cnt_play_30d
        ,sq0.user__cnt_valid_play_30d
        ,sq0.user__cnt_full_play_30d
        ,sq0.user__cnt_collect_30d
        ,sq0.user__cnt_download_30d
        ,sq0.user__cnt_comment_30d
        ,sq0.user__cnt_share_30d
        ,sq0.user__cnt_play_15d
        ,sq0.user__cnt_valid_play_15d
        ,sq0.user__cnt_full_play_15d
        ,sq0.user__cnt_collect_15d
        ,sq0.user__cnt_download_15d
        ,sq0.user__cnt_comment_15d
        ,sq0.user__cnt_share_15d
        ,sq0.user__cnt_play_3d
        ,sq0.user__cnt_valid_play_3d
        ,sq0.user__cnt_full_play_3d
        ,sq0.user__cnt_collect_3d
        ,sq0.user__cnt_download_3d
        ,sq0.user__cnt_comment_3d
        ,sq0.user__cnt_share_3d
        ,sq0.user__cnt_play_music_model_default_30d
        ,sq0.user__cnt_valid_play_music_model_default_30d
        ,sq0.user__cnt_full_play_music_model_default_30d
        ,sq0.user__cnt_play_music_model_default_15d
        ,sq0.user__cnt_valid_play_music_model_default_15d
        ,sq0.user__cnt_full_play_music_model_default_15d
        ,sq0.user__cnt_play_music_model_default_3d
        ,sq0.user__cnt_valid_play_music_model_default_3d
        ,sq0.user__cnt_full_play_music_model_default_3d
        ,sq0.user__num_play_sum_event_value_music_model_default_30d
        ,sq0.user__num_play_sum_event_value_music_model_default_15d
        ,sq0.user__num_play_sum_event_value_music_model_default_3d
        ,sq0.user__num_play_avg_event_value_music_model_default_30d
        ,sq0.user__num_play_avg_event_value_music_model_default_15d
        ,sq0.user__num_play_avg_event_value_music_model_default_3d
        ,sq0.user__kv_num_full_play_song_business_model_sum_event_value_music_model_default_30d
        ,sq0.user__kv_num_full_play_song_business_model_sum_event_value_music_model_default_15d
        ,sq0.user__kv_num_full_play_song_business_model_sum_event_value_music_model_default_3d
        ,sq0.user__kv_item_id_play_music_model_default_30d
        ,sq0.user__kv_singer_id_play_music_model_default_30d
        ,sq0.user__kv_style_tag_id_lv2_play_music_model_default_30d
        ,sq0.user__kv_item_id_valid_play_music_model_default_30d
        ,sq0.user__kv_singer_id_valid_play_music_model_default_30d
        ,sq0.user__kv_style_tag_id_lv2_valid_play_music_model_default_30d
        ,sq0.user__kv_item_id_full_play_music_model_default_30d
        ,sq0.user__kv_singer_id_full_play_music_model_default_30d
        ,sq0.user__kv_style_tag_id_lv2_full_play_music_model_default_30d
        ,sq0.user__kv_item_id_play_music_model_default_15d
        ,sq0.user__kv_singer_id_play_music_model_default_15d
        ,sq0.user__kv_style_tag_id_lv2_play_music_model_default_15d
        ,sq0.user__kv_item_id_valid_play_music_model_default_15d
        ,sq0.user__kv_singer_id_valid_play_music_model_default_15d
        ,sq0.user__kv_style_tag_id_lv2_valid_play_music_model_default_15d
        ,sq0.user__kv_item_id_full_play_music_model_default_15d
        ,sq0.user__kv_singer_id_full_play_music_model_default_15d
        ,sq0.user__kv_style_tag_id_lv2_full_play_music_model_default_15d
        ,sq0.user__kv_item_id_play_music_model_default_3d
        ,sq0.user__kv_singer_id_play_music_model_default_3d
        ,sq0.user__kv_style_tag_id_lv2_play_music_model_default_3d
        ,sq0.user__kv_item_id_valid_play_music_model_default_3d
        ,sq0.user__kv_singer_id_valid_play_music_model_default_3d
        ,sq0.user__kv_style_tag_id_lv2_valid_play_music_model_default_3d
        ,sq0.user__kv_item_id_full_play_music_model_default_3d
        ,sq0.user__kv_singer_id_full_play_music_model_default_3d
        ,sq0.user__kv_style_tag_id_lv2_full_play_music_model_default_3d
        ,sq0.user__kv_item_id_valid_play_30d
        ,sq0.user__kv_style_tag_id_lv2_valid_play_30d
        ,sq0.user__kv_singer_id_valid_play_30d
        ,sq0.user__kv_item_id_full_play_30d
        ,sq0.user__kv_style_tag_id_lv2_full_play_30d
        ,sq0.user__kv_singer_id_full_play_30d
        ,sq0.user__kv_item_id_collect_30d
        ,sq0.user__kv_style_tag_id_lv2_collect_30d
        ,sq0.user__kv_singer_id_collect_30d
        ,sq0.user__kv_item_id_download_30d
        ,sq0.user__kv_style_tag_id_lv2_download_30d
        ,sq0.user__kv_singer_id_download_30d
        ,sq0.user__kv_item_id_share_30d
        ,sq0.user__kv_style_tag_id_lv2_share_30d
        ,sq0.user__kv_singer_id_share_30d
        ,sq0.user__kv_item_id_valid_play_15d
        ,sq0.user__kv_style_tag_id_lv2_valid_play_15d
        ,sq0.user__kv_singer_id_valid_play_15d
        ,sq0.user__kv_item_id_full_play_15d
        ,sq0.user__kv_style_tag_id_lv2_full_play_15d
        ,sq0.user__kv_singer_id_full_play_15d
        ,sq0.user__kv_item_id_collect_15d
        ,sq0.user__kv_style_tag_id_lv2_collect_15d
        ,sq0.user__kv_singer_id_collect_15d
        ,sq0.user__kv_item_id_download_15d
        ,sq0.user__kv_style_tag_id_lv2_download_15d
        ,sq0.user__kv_singer_id_download_15d
        ,sq0.user__kv_item_id_share_15d
        ,sq0.user__kv_style_tag_id_lv2_share_15d
        ,sq0.user__kv_singer_id_share_15d
        ,sq0.user__kv_item_id_valid_play_3d
        ,sq0.user__kv_style_tag_id_lv2_valid_play_3d
        ,sq0.user__kv_singer_id_valid_play_3d
        ,sq0.user__kv_item_id_full_play_3d
        ,sq0.user__kv_style_tag_id_lv2_full_play_3d
        ,sq0.user__kv_singer_id_full_play_3d
        ,sq0.user__kv_item_id_collect_3d
        ,sq0.user__kv_style_tag_id_lv2_collect_3d
        ,sq0.user__kv_singer_id_collect_3d
        ,sq0.user__kv_item_id_download_3d
        ,sq0.user__kv_style_tag_id_lv2_download_3d
        ,sq0.user__kv_singer_id_download_3d
        ,sq0.user__kv_item_id_share_3d
        ,sq0.user__kv_style_tag_id_lv2_share_3d
        ,sq0.user__kv_singer_id_share_3d
        ,sq0.singer_id
        ,sq0.composer
        ,sq0.lyric_writer
        ,sq0.language_tag_id_lv2
        ,sq0.language_tag_id_lv3
        ,sq0.style_tag_id_lv2
        ,sq0.style_tag_id_lv3
        ,sq0.age_tag_id_lv2
        ,sq0.age_tag_id_lv3
        ,sq0.song_business_model
        ,sq0.song_length
        ,sq0.song_name_purified
        ,sq0.item_publish_time
        ,sq0.item__cnt_play_30d
        ,sq0.item__cnt_valid_play_30d
        ,sq0.item__cnt_full_play_30d
        ,sq0.item__cnt_collect_30d
        ,sq0.item__cnt_download_30d
        ,sq0.item__cnt_comment_30d
        ,sq0.item__cnt_share_30d
        ,sq0.item__cnt_play_7d
        ,sq0.item__cnt_valid_play_7d
        ,sq0.item__cnt_full_play_7d
        ,sq0.item__cnt_collect_7d
        ,sq0.item__cnt_download_7d
        ,sq0.item__cnt_comment_7d
        ,sq0.item__cnt_share_7d
        ,sq0.item__cnt_play_3d
        ,sq0.item__cnt_valid_play_3d
        ,sq0.item__cnt_full_play_3d
        ,sq0.item__cnt_collect_3d
        ,sq0.item__cnt_download_3d
        ,sq0.item__cnt_comment_3d
        ,sq0.item__cnt_share_3d
        ,sq0.item__cnt_play_identity_id_30d
        ,sq0.item__cnt_valid_play_identity_id_30d
        ,sq0.item__cnt_full_play_identity_id_30d
        ,sq0.item__cnt_collect_identity_id_30d
        ,sq0.item__cnt_download_identity_id_30d
        ,sq0.item__cnt_comment_identity_id_30d
        ,sq0.item__cnt_share_identity_id_30d
        ,sq0.item__cnt_play_identity_id_7d
        ,sq0.item__cnt_valid_play_identity_id_7d
        ,sq0.item__cnt_full_play_identity_id_7d
        ,sq0.item__cnt_collect_identity_id_7d
        ,sq0.item__cnt_download_identity_id_7d
        ,sq0.item__cnt_comment_identity_id_7d
        ,sq0.item__cnt_share_identity_id_7d
        ,sq0.item__cnt_play_identity_id_3d
        ,sq0.item__cnt_valid_play_identity_id_3d
        ,sq0.item__cnt_full_play_identity_id_3d
        ,sq0.item__cnt_collect_identity_id_3d
        ,sq0.item__cnt_download_identity_id_3d
        ,sq0.item__cnt_comment_identity_id_3d
        ,sq0.item__cnt_share_identity_id_3d
        ,sq0.item__cnt_play_music_model_default_30d
        ,sq0.item__cnt_valid_play_music_model_default_30d
        ,sq0.item__cnt_full_play_music_model_default_30d
        ,sq0.item__cnt_play_music_model_default_7d
        ,sq0.item__cnt_valid_play_music_model_default_7d
        ,sq0.item__cnt_full_play_music_model_default_7d
        ,sq0.item__cnt_play_music_model_default_3d
        ,sq0.item__cnt_valid_play_music_model_default_3d
        ,sq0.item__cnt_full_play_music_model_default_3d
        ,sq0.item__cnt_play_identity_id_music_model_default_30d
        ,sq0.item__cnt_valid_play_identity_id_music_model_default_30d
        ,sq0.item__cnt_full_play_identity_id_music_model_default_30d
        ,sq0.item__cnt_play_identity_id_music_model_default_7d
        ,sq0.item__cnt_valid_play_identity_id_music_model_default_7d
        ,sq0.item__cnt_full_play_identity_id_music_model_default_7d
        ,sq0.item__cnt_play_identity_id_music_model_default_3d
        ,sq0.item__cnt_valid_play_identity_id_music_model_default_3d
        ,sq0.item__cnt_full_play_identity_id_music_model_default_3d
        ,sq0.item__ratio_valid_play_play_music_model_default_30d
        ,sq0.item__ratio_valid_play_play_music_model_default_7d
        ,sq0.item__ratio_valid_play_play_music_model_default_3d
        ,sq0.item__kv_age_group_valid_play_30d
        ,sq0.item__kv_used_competitors_last_7d_valid_play_30d
        ,sq0.item__kv_age_group_full_play_30d
        ,sq0.item__kv_used_competitors_last_7d_full_play_30d
        ,sq0.item__kv_age_group_collect_30d
        ,sq0.item__kv_used_competitors_last_7d_collect_30d
        ,sq0.item__kv_age_group_download_30d
        ,sq0.item__kv_used_competitors_last_7d_download_30d
        ,sq0.item__kv_age_group_comment_30d
        ,sq0.item__kv_used_competitors_last_7d_comment_30d
        ,sq0.item__kv_age_group_share_30d
        ,sq0.item__kv_used_competitors_last_7d_share_30d
        ,sq0.item__kv_age_group_valid_play_7d
        ,sq0.item__kv_used_competitors_last_7d_valid_play_7d
        ,sq0.item__kv_age_group_full_play_7d
        ,sq0.item__kv_used_competitors_last_7d_full_play_7d
        ,sq0.item__kv_age_group_collect_7d
        ,sq0.item__kv_used_competitors_last_7d_collect_7d
        ,sq0.item__kv_age_group_download_7d
        ,sq0.item__kv_used_competitors_last_7d_download_7d
        ,sq0.item__kv_age_group_comment_7d
        ,sq0.item__kv_used_competitors_last_7d_comment_7d
        ,sq0.item__kv_age_group_share_7d
        ,sq0.item__kv_used_competitors_last_7d_share_7d
        ,sq0.item__kv_age_group_valid_play_3d
        ,sq0.item__kv_used_competitors_last_7d_valid_play_3d
        ,sq0.item__kv_age_group_full_play_3d
        ,sq0.item__kv_used_competitors_last_7d_full_play_3d
        ,sq0.item__kv_age_group_collect_3d
        ,sq0.item__kv_used_competitors_last_7d_collect_3d
        ,sq0.item__kv_age_group_download_3d
        ,sq0.item__kv_used_competitors_last_7d_download_3d
        ,sq0.item__kv_age_group_comment_3d
        ,sq0.item__kv_used_competitors_last_7d_comment_3d
        ,sq0.item__kv_age_group_share_3d
        ,sq0.item__kv_used_competitors_last_7d_share_3d
        ,sq0.item__kv_num_play_age_group_sum_event_value_30d
        ,sq0.item__kv_num_valid_play_age_group_sum_event_value_30d
        ,sq0.item__kv_num_full_play_age_group_sum_event_value_30d
        ,sq0.item__kv_num_collect_age_group_sum_event_value_30d
        ,sq0.item__kv_num_play_age_group_sum_event_value_7d
        ,sq0.item__kv_num_valid_play_age_group_sum_event_value_7d
        ,sq0.item__kv_num_full_play_age_group_sum_event_value_7d
        ,sq0.item__kv_num_collect_age_group_sum_event_value_7d
        ,sq0.item__kv_num_play_age_group_sum_event_value_3d
        ,sq0.item__kv_num_valid_play_age_group_sum_event_value_3d
        ,sq0.item__kv_num_full_play_age_group_sum_event_value_3d
        ,sq0.item__kv_num_collect_age_group_sum_event_value_3d
        ,sq0.item__kv_terminal_model_valid_play_30d
        ,REPLACE(sq0.full_play_100_seq__item_id,CHR(29),';') AS full_play_100_seq__item_id
        ,sq0.full_play_100_seq__singer_id
        ,sq0.full_play_100_seq__lyric_writer
        ,sq0.full_play_100_seq__style_tag_id_lv2
        ,sq0.full_play_100_seq__ts
        ,REPLACE(sq0.valid_play_100_seq__item_id,CHR(29),';') AS valid_play_100_seq__item_id
        ,sq0.valid_play_100_seq__style_tag_id_lv2
        ,sq0.valid_play_100_seq__singer_id
        ,sq0.valid_play_100_seq__lyric_writer
        ,sq0.valid_play_100_seq__ts
        ,sq0.user__cnt_expose_58463_30d
        ,sq0.user__cnt_click_58463_30d
        ,sq0.user__cnt_play_58463_30d
        ,sq0.user__cnt_valid_play_58463_30d
        ,sq0.user__cnt_full_play_58463_30d
        ,sq0.user__cnt_expose_58463_15d
        ,sq0.user__cnt_click_58463_15d
        ,sq0.user__cnt_play_58463_15d
        ,sq0.user__cnt_valid_play_58463_15d
        ,sq0.user__cnt_full_play_58463_15d
        ,sq0.user__cnt_expose_58463_3d
        ,sq0.user__cnt_click_58463_3d
        ,sq0.user__cnt_play_58463_3d
        ,sq0.user__cnt_valid_play_58463_3d
        ,sq0.user__cnt_full_play_58463_3d
        ,sq0.user__num_play_sum_event_value_58463_30d
        ,sq0.user__num_play_sum_event_value_58463_15d
        ,sq0.user__num_play_sum_event_value_58463_3d
        ,sq0.user__num_play_avg_event_value_58463_30d
        ,sq0.user__num_play_avg_event_value_58463_15d
        ,sq0.user__num_play_avg_event_value_58463_3d
        ,sq0.user__ratio_click_expose_58463_30d
        ,sq0.user__ratio_click_expose_58463_15d
        ,sq0.user__ratio_click_expose_58463_3d
        ,sq0.user__kv_num_full_play_song_business_model_sum_event_value_58463_15d
        ,sq0.user__kv_num_full_play_song_business_model_sum_event_value_58463_3d
        ,sq0.user__kv_item_id_expose_58463_30d
        ,sq0.user__kv_singer_id_expose_58463_30d
        ,sq0.user__kv_style_tag_id_lv2_expose_58463_30d
        ,sq0.user__kv_item_id_click_58463_30d
        ,sq0.user__kv_singer_id_click_58463_30d
        ,sq0.user__kv_style_tag_id_lv2_click_58463_30d
        ,sq0.user__kv_item_id_play_58463_30d
        ,sq0.user__kv_singer_id_play_58463_30d
        ,sq0.user__kv_style_tag_id_lv2_play_58463_30d
        ,sq0.user__kv_item_id_valid_play_58463_30d
        ,sq0.user__kv_singer_id_valid_play_58463_30d
        ,sq0.user__kv_style_tag_id_lv2_valid_play_58463_30d
        ,sq0.user__kv_item_id_full_play_58463_30d
        ,sq0.user__kv_singer_id_full_play_58463_30d
        ,sq0.user__kv_style_tag_id_lv2_full_play_58463_30d
        ,sq0.user__kv_item_id_expose_58463_15d
        ,sq0.user__kv_singer_id_expose_58463_15d
        ,sq0.user__kv_style_tag_id_lv2_expose_58463_15d
        ,sq0.user__kv_item_id_click_58463_15d
        ,sq0.user__kv_singer_id_click_58463_15d
        ,sq0.user__kv_style_tag_id_lv2_click_58463_15d
        ,sq0.user__kv_item_id_play_58463_15d
        ,sq0.user__kv_singer_id_play_58463_15d
        ,sq0.user__kv_style_tag_id_lv2_play_58463_15d
        ,sq0.user__kv_item_id_valid_play_58463_15d
        ,sq0.user__kv_singer_id_valid_play_58463_15d
        ,sq0.user__kv_style_tag_id_lv2_valid_play_58463_15d
        ,sq0.user__kv_item_id_full_play_58463_15d
        ,sq0.user__kv_singer_id_full_play_58463_15d
        ,sq0.user__kv_style_tag_id_lv2_full_play_58463_15d
        ,sq0.user__kv_item_id_expose_58463_3d
        ,sq0.user__kv_singer_id_expose_58463_3d
        ,sq0.user__kv_style_tag_id_lv2_expose_58463_3d
        ,sq0.user__kv_item_id_click_58463_3d
        ,sq0.user__kv_singer_id_click_58463_3d
        ,sq0.user__kv_style_tag_id_lv2_click_58463_3d
        ,sq0.user__kv_item_id_play_58463_3d
        ,sq0.user__kv_singer_id_play_58463_3d
        ,sq0.user__kv_style_tag_id_lv2_play_58463_3d
        ,sq0.user__kv_item_id_valid_play_58463_3d
        ,sq0.user__kv_singer_id_valid_play_58463_3d
        ,sq0.user__kv_style_tag_id_lv2_valid_play_58463_3d
        ,sq0.user__kv_item_id_full_play_58463_3d
        ,sq0.user__kv_singer_id_full_play_58463_3d
        ,sq0.user__kv_style_tag_id_lv2_full_play_58463_3d
        ,sq0.user__kv_ratio_item_id_click_expose_58463_30d
        ,sq0.user__kv_ratio_style_tag_id_lv2_click_expose_58463_30d
        ,sq0.user__kv_ratio_singer_id_click_expose_58463_30d
        ,sq0.user__kv_ratio_item_id_click_expose_58463_15d
        ,sq0.user__kv_ratio_style_tag_id_lv2_click_expose_58463_15d
        ,sq0.user__kv_ratio_singer_id_click_expose_58463_15d
        ,sq0.user__kv_ratio_item_id_click_expose_58463_3d
        ,sq0.user__kv_ratio_style_tag_id_lv2_click_expose_58463_3d
        ,sq0.user__kv_ratio_singer_id_click_expose_58463_3d
        ,sq0.user__kv_num_full_play_song_business_model_sum_event_value_58463_30d
        ,sq0.item__cnt_click_58463_30d
        ,sq0.item__cnt_play_58463_30d
        ,sq0.item__cnt_valid_play_58463_30d
        ,sq0.item__cnt_full_play_58463_30d
        ,sq0.item__cnt_expose_58463_7d
        ,sq0.item__cnt_click_58463_7d
        ,sq0.item__cnt_play_58463_7d
        ,sq0.item__cnt_valid_play_58463_7d
        ,sq0.item__cnt_full_play_58463_7d
        ,sq0.item__cnt_expose_58463_3d
        ,sq0.item__cnt_click_58463_3d
        ,sq0.item__cnt_play_58463_3d
        ,sq0.item__cnt_valid_play_58463_3d
        ,sq0.item__cnt_full_play_58463_3d
        ,sq0.item__cnt_expose_identity_id_58463_30d
        ,sq0.item__cnt_click_identity_id_58463_30d
        ,sq0.item__cnt_play_identity_id_58463_30d
        ,sq0.item__cnt_valid_play_identity_id_58463_30d
        ,sq0.item__cnt_full_play_identity_id_58463_30d
        ,sq0.item__cnt_expose_identity_id_58463_7d
        ,sq0.item__cnt_click_identity_id_58463_7d
        ,sq0.item__cnt_play_identity_id_58463_7d
        ,sq0.item__cnt_valid_play_identity_id_58463_7d
        ,sq0.item__cnt_full_play_identity_id_58463_7d
        ,sq0.item__cnt_expose_identity_id_58463_3d
        ,sq0.item__cnt_click_identity_id_58463_3d
        ,sq0.item__cnt_play_identity_id_58463_3d
        ,sq0.item__cnt_valid_play_identity_id_58463_3d
        ,sq0.item__cnt_full_play_identity_id_58463_3d
        ,sq0.item__ratio_valid_play_play_58463_30d
        ,sq0.item__ratio_click_expose_58463_30d
        ,sq0.item__ratio_valid_play_play_58463_7d
        ,sq0.item__ratio_click_expose_58463_7d
        ,sq0.item__ratio_valid_play_play_58463_3d
        ,sq0.item__ratio_click_expose_58463_3d
        ,sq0.item__cnt_expose_58463_30d
        ,sq0.user__num_play_avg_event_value_daily_recommend_3d
        ,sq0.user__ratio_click_expose_daily_recommend_30d
        ,sq0.user__ratio_click_expose_daily_recommend_15d
        ,sq0.user__ratio_click_expose_daily_recommend_3d
        ,sq0.user__kv_num_full_play_song_business_model_sum_event_value_daily_recommend_30d
        ,sq0.user__kv_num_full_play_song_business_model_sum_event_value_daily_recommend_15d
        ,sq0.user__kv_num_full_play_song_business_model_sum_event_value_daily_recommend_3d
        ,sq0.user__kv_item_id_expose_daily_recommend_30d
        ,sq0.user__kv_singer_id_expose_daily_recommend_30d
        ,sq0.user__kv_style_tag_id_lv2_expose_daily_recommend_30d
        ,sq0.user__kv_item_id_click_daily_recommend_30d
        ,sq0.user__kv_singer_id_click_daily_recommend_30d
        ,sq0.user__kv_style_tag_id_lv2_click_daily_recommend_30d
        ,sq0.user__kv_item_id_play_daily_recommend_30d
        ,sq0.user__kv_singer_id_play_daily_recommend_30d
        ,sq0.user__kv_style_tag_id_lv2_play_daily_recommend_30d
        ,sq0.user__kv_item_id_valid_play_daily_recommend_30d
        ,sq0.user__kv_singer_id_valid_play_daily_recommend_30d
        ,sq0.user__kv_style_tag_id_lv2_valid_play_daily_recommend_30d
        ,sq0.user__kv_item_id_full_play_daily_recommend_30d
        ,sq0.user__kv_singer_id_full_play_daily_recommend_30d
        ,sq0.user__kv_style_tag_id_lv2_full_play_daily_recommend_30d
        ,sq0.user__kv_item_id_expose_daily_recommend_15d
        ,sq0.user__kv_singer_id_expose_daily_recommend_15d
        ,sq0.user__kv_style_tag_id_lv2_expose_daily_recommend_15d
        ,sq0.user__kv_item_id_click_daily_recommend_15d
        ,sq0.user__kv_singer_id_click_daily_recommend_15d
        ,sq0.user__kv_style_tag_id_lv2_click_daily_recommend_15d
        ,sq0.user__kv_item_id_play_daily_recommend_15d
        ,sq0.user__kv_singer_id_play_daily_recommend_15d
        ,sq0.user__kv_style_tag_id_lv2_play_daily_recommend_15d
        ,sq0.user__kv_item_id_valid_play_daily_recommend_15d
        ,sq0.user__kv_singer_id_valid_play_daily_recommend_15d
        ,sq0.user__kv_style_tag_id_lv2_valid_play_daily_recommend_15d
        ,sq0.user__kv_item_id_full_play_daily_recommend_15d
        ,sq0.user__kv_singer_id_full_play_daily_recommend_15d
        ,sq0.user__kv_style_tag_id_lv2_full_play_daily_recommend_15d
        ,sq0.user__kv_item_id_expose_daily_recommend_3d
        ,sq0.user__kv_singer_id_expose_daily_recommend_3d
        ,sq0.user__kv_style_tag_id_lv2_expose_daily_recommend_3d
        ,sq0.user__kv_item_id_click_daily_recommend_3d
        ,sq0.user__kv_singer_id_click_daily_recommend_3d
        ,sq0.user__kv_style_tag_id_lv2_click_daily_recommend_3d
        ,sq0.user__kv_item_id_play_daily_recommend_3d
        ,sq0.user__kv_singer_id_play_daily_recommend_3d
        ,sq0.user__kv_style_tag_id_lv2_play_daily_recommend_3d
        ,sq0.user__kv_item_id_valid_play_daily_recommend_3d
        ,sq0.user__kv_singer_id_valid_play_daily_recommend_3d
        ,sq0.user__kv_style_tag_id_lv2_valid_play_daily_recommend_3d
        ,sq0.user__kv_item_id_full_play_daily_recommend_3d
        ,sq0.user__kv_singer_id_full_play_daily_recommend_3d
        ,sq0.user__kv_style_tag_id_lv2_full_play_daily_recommend_3d
        ,sq0.user__kv_ratio_style_tag_id_lv2_click_expose_daily_recommend_30d
        ,sq0.user__kv_ratio_singer_id_click_expose_daily_recommend_30d
        ,sq0.user__kv_ratio_item_id_click_expose_daily_recommend_15d
        ,sq0.user__kv_ratio_style_tag_id_lv2_click_expose_daily_recommend_15d
        ,sq0.user__kv_ratio_singer_id_click_expose_daily_recommend_15d
        ,sq0.user__kv_ratio_item_id_click_expose_daily_recommend_3d
        ,sq0.user__kv_ratio_style_tag_id_lv2_click_expose_daily_recommend_3d
        ,sq0.user__kv_ratio_singer_id_click_expose_daily_recommend_3d
        ,sq0.user__num_play_sum_event_value_daily_recommend_30d
        ,sq0.user__num_play_sum_event_value_daily_recommend_15d
        ,sq0.user__num_play_sum_event_value_daily_recommend_3d
        ,sq0.user__num_play_avg_event_value_daily_recommend_30d
        ,sq0.user__num_play_avg_event_value_daily_recommend_15d
        ,sq0.user__kv_ratio_item_id_click_expose_daily_recommend_30d
        ,sq0.user__cnt_expose_daily_recommend_30d
        ,sq0.user__cnt_click_daily_recommend_30d
        ,sq0.user__cnt_play_daily_recommend_30d
        ,sq0.user__cnt_valid_play_daily_recommend_30d
        ,sq0.user__cnt_full_play_daily_recommend_30d
        ,sq0.user__cnt_expose_daily_recommend_15d
        ,sq0.user__cnt_click_daily_recommend_15d
        ,sq0.user__cnt_play_daily_recommend_15d
        ,sq0.user__cnt_valid_play_daily_recommend_15d
        ,sq0.user__cnt_full_play_daily_recommend_15d
        ,sq0.user__cnt_expose_daily_recommend_3d
        ,sq0.user__cnt_click_daily_recommend_3d
        ,sq0.user__cnt_play_daily_recommend_3d
        ,sq0.user__cnt_valid_play_daily_recommend_3d
        ,sq0.user__cnt_full_play_daily_recommend_3d
        ,sq0.item__cnt_expose_daily_recommend_30d
        ,sq0.item__cnt_click_daily_recommend_30d
        ,sq0.item__cnt_play_daily_recommend_30d
        ,sq0.item__cnt_valid_play_daily_recommend_30d
        ,sq0.item__cnt_full_play_daily_recommend_30d
        ,sq0.item__cnt_expose_daily_recommend_7d
        ,sq0.item__cnt_click_daily_recommend_7d
        ,sq0.item__cnt_play_daily_recommend_7d
        ,sq0.item__cnt_valid_play_daily_recommend_7d
        ,sq0.item__cnt_full_play_daily_recommend_7d
        ,sq0.item__cnt_expose_daily_recommend_3d
        ,sq0.item__cnt_click_daily_recommend_3d
        ,sq0.item__cnt_play_daily_recommend_3d
        ,sq0.item__cnt_valid_play_daily_recommend_3d
        ,sq0.item__cnt_full_play_daily_recommend_3d
        ,sq0.item__cnt_expose_identity_id_daily_recommend_30d
        ,sq0.item__cnt_click_identity_id_daily_recommend_30d
        ,sq0.item__cnt_play_identity_id_daily_recommend_30d
        ,sq0.item__cnt_valid_play_identity_id_daily_recommend_30d
        ,sq0.item__cnt_full_play_identity_id_daily_recommend_30d
        ,sq0.item__cnt_expose_identity_id_daily_recommend_7d
        ,sq0.item__cnt_click_identity_id_daily_recommend_7d
        ,sq0.item__cnt_play_identity_id_daily_recommend_7d
        ,sq0.item__cnt_valid_play_identity_id_daily_recommend_7d
        ,sq0.item__cnt_full_play_identity_id_daily_recommend_7d
        ,sq0.item__cnt_expose_identity_id_daily_recommend_3d
        ,sq0.item__cnt_click_identity_id_daily_recommend_3d
        ,sq0.item__cnt_play_identity_id_daily_recommend_3d
        ,sq0.item__cnt_valid_play_identity_id_daily_recommend_3d
        ,sq0.item__cnt_full_play_identity_id_daily_recommend_3d
        ,sq0.item__ratio_valid_play_play_daily_recommend_30d
        ,sq0.item__ratio_click_expose_daily_recommend_30d
        ,sq0.item__ratio_valid_play_play_daily_recommend_7d
        ,sq0.item__ratio_click_expose_daily_recommend_7d
        ,sq0.item__ratio_valid_play_play_daily_recommend_3d
        ,sq0.item__ratio_click_expose_daily_recommend_3d
FROM    (
            SELECT  *
            FROM    dws_rec.callback_datahub_ghost_corrected_raw_feat
            WHERE   p_date <= '${p_date}'
            AND     p_date > '${p_date_pre3}'
        ) sq0
INNER JOIN  (
                SELECT  *
                FROM    dws_rec.song_scene_mmoe_label_table_v1
                WHERE   p_date = '${p_date}'
            ) sq1
ON      sq0.request_id = sq1.request_id
AND     sq0.identity_id = sq1.identity_id
AND     sq0.item_id = sq1.item_id
AND     sq0.event_scene_id = sq1.event_scene_id
;






