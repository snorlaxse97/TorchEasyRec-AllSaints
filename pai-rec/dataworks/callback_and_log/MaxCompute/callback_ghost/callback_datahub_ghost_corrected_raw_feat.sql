CREATE TABLE IF NOT EXISTS dws_rec.callback_datahub_ghost_corrected_raw_feat
(
    request_id                                                                          STRING
    ,request_time                                                                       BIGINT
    ,identity_id                                                                        STRING
    ,item_id                                                                            STRING
    ,event_scene_id                                                                     STRING
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
    p_date                                                                              STRING
)
LIFECYCLE 60
;

WITH temp01 AS 
(
    SELECT  request_id
            ,request_time
            ,user_id
            ,item_id
            ,scene
            ,SPLIT(raw_features,'\\|') AS raw_features
    FROM    dws_rec.callback_datahub_ghost_corrected
    WHERE   ds = '${bizdate}'
    AND     user_id IS NOT NULL
    AND     item_id IS NOT NULL
    AND     request_id IS NOT NULL
)
,temp02 AS 
(
    SELECT  request_id
            ,request_time
            ,user_id
            ,item_id
            ,scene
            ,TRIM(feature) AS feature
    FROM    temp01
    LATERAL VIEW EXPLODE(raw_features) tmp AS feature
)
,temp03 AS 
(
    SELECT  request_id
            ,request_time
            ,user_id
            ,item_id
            ,scene
            ,feature
            ,SUBSTR(feature,1,INSTR(feature,':') - 1) AS field_name
            ,SUBSTR(feature,INSTR(feature,':') + 1) AS field_value
    FROM    temp02
)
INSERT OVERWRITE TABLE dws_rec.callback_datahub_ghost_corrected_raw_feat PARTITION (p_date = '${bizdate}')
SELECT  request_id
        ,request_time
        ,user_id AS identity_id
        ,item_id
        ,scene AS event_scene_id
        ,CAST(MAX(CASE    WHEN field_name = 'day_h' THEN field_value END) AS BIGINT) AS day_h
        ,CAST(MAX(CASE    WHEN field_name = 'week_day' THEN field_value END) AS BIGINT) AS week_day
        ,CAST(MAX(CASE    WHEN field_name = 'user_type' THEN field_value END) AS BIGINT) AS user_type
        ,NULLIF(MAX(CASE    WHEN field_name = 'terminal_model' THEN field_value END),'') AS terminal_model
        ,CAST(MAX(CASE    WHEN field_name = 'age_group' THEN field_value END) AS BIGINT) AS age_group
        ,CAST(MAX(CASE    WHEN field_name = 'gender' THEN field_value END) AS BIGINT) AS gender
        ,CAST(MAX(CASE    WHEN field_name = 'music_vip_type' THEN field_value END) AS BIGINT) AS music_vip_type
        ,NULLIF(MAX(CASE    WHEN field_name = 'used_competitors_last_7d' THEN field_value END),'') AS used_competitors_last_7d
        ,CAST(MAX(CASE    WHEN field_name = 'user_register_date' THEN field_value END) AS BIGINT) AS user_register_date
        ,CAST(MAX(CASE    WHEN field_name = 'user__cnt_play_30d' THEN field_value END) AS BIGINT) AS user__cnt_play_30d
        ,CAST(MAX(CASE    WHEN field_name = 'user__cnt_valid_play_30d' THEN field_value END) AS BIGINT) AS user__cnt_valid_play_30d
        ,CAST(MAX(CASE    WHEN field_name = 'user__cnt_full_play_30d' THEN field_value END) AS BIGINT) AS user__cnt_full_play_30d
        ,CAST(MAX(CASE    WHEN field_name = 'user__cnt_collect_30d' THEN field_value END) AS BIGINT) AS user__cnt_collect_30d
        ,CAST(MAX(CASE    WHEN field_name = 'user__cnt_download_30d' THEN field_value END) AS BIGINT) AS user__cnt_download_30d
        ,CAST(MAX(CASE    WHEN field_name = 'user__cnt_comment_30d' THEN field_value END) AS BIGINT) AS user__cnt_comment_30d
        ,CAST(MAX(CASE    WHEN field_name = 'user__cnt_share_30d' THEN field_value END) AS BIGINT) AS user__cnt_share_30d
        ,CAST(MAX(CASE    WHEN field_name = 'user__cnt_play_15d' THEN field_value END) AS BIGINT) AS user__cnt_play_15d
        ,CAST(MAX(CASE    WHEN field_name = 'user__cnt_valid_play_15d' THEN field_value END) AS BIGINT) AS user__cnt_valid_play_15d
        ,CAST(MAX(CASE    WHEN field_name = 'user__cnt_full_play_15d' THEN field_value END) AS BIGINT) AS user__cnt_full_play_15d
        ,CAST(MAX(CASE    WHEN field_name = 'user__cnt_collect_15d' THEN field_value END) AS BIGINT) AS user__cnt_collect_15d
        ,CAST(MAX(CASE    WHEN field_name = 'user__cnt_download_15d' THEN field_value END) AS BIGINT) AS user__cnt_download_15d
        ,CAST(MAX(CASE    WHEN field_name = 'user__cnt_comment_15d' THEN field_value END) AS BIGINT) AS user__cnt_comment_15d
        ,CAST(MAX(CASE    WHEN field_name = 'user__cnt_share_15d' THEN field_value END) AS BIGINT) AS user__cnt_share_15d
        ,CAST(MAX(CASE    WHEN field_name = 'user__cnt_play_3d' THEN field_value END) AS BIGINT) AS user__cnt_play_3d
        ,CAST(MAX(CASE    WHEN field_name = 'user__cnt_valid_play_3d' THEN field_value END) AS BIGINT) AS user__cnt_valid_play_3d
        ,CAST(MAX(CASE    WHEN field_name = 'user__cnt_full_play_3d' THEN field_value END) AS BIGINT) AS user__cnt_full_play_3d
        ,CAST(MAX(CASE    WHEN field_name = 'user__cnt_collect_3d' THEN field_value END) AS BIGINT) AS user__cnt_collect_3d
        ,CAST(MAX(CASE    WHEN field_name = 'user__cnt_download_3d' THEN field_value END) AS BIGINT) AS user__cnt_download_3d
        ,CAST(MAX(CASE    WHEN field_name = 'user__cnt_comment_3d' THEN field_value END) AS BIGINT) AS user__cnt_comment_3d
        ,CAST(MAX(CASE    WHEN field_name = 'user__cnt_share_3d' THEN field_value END) AS BIGINT) AS user__cnt_share_3d
        ,CAST(MAX(CASE    WHEN field_name = 'user__cnt_play_music_model_default_30d' THEN field_value END) AS BIGINT) AS user__cnt_play_music_model_default_30d
        ,CAST(MAX(
            CASE    WHEN field_name = 'user__cnt_valid_play_music_model_default_30d' THEN field_value END
        ) AS BIGINT) AS user__cnt_valid_play_music_model_default_30d
        ,CAST(MAX(
            CASE    WHEN field_name = 'user__cnt_full_play_music_model_default_30d' THEN field_value END
        ) AS BIGINT) AS user__cnt_full_play_music_model_default_30d
        ,CAST(MAX(CASE    WHEN field_name = 'user__cnt_play_music_model_default_15d' THEN field_value END) AS BIGINT) AS user__cnt_play_music_model_default_15d
        ,CAST(MAX(
            CASE    WHEN field_name = 'user__cnt_valid_play_music_model_default_15d' THEN field_value END
        ) AS BIGINT) AS user__cnt_valid_play_music_model_default_15d
        ,CAST(MAX(
            CASE    WHEN field_name = 'user__cnt_full_play_music_model_default_15d' THEN field_value END
        ) AS BIGINT) AS user__cnt_full_play_music_model_default_15d
        ,CAST(MAX(CASE    WHEN field_name = 'user__cnt_play_music_model_default_3d' THEN field_value END) AS BIGINT) AS user__cnt_play_music_model_default_3d
        ,CAST(MAX(
            CASE    WHEN field_name = 'user__cnt_valid_play_music_model_default_3d' THEN field_value END
        ) AS BIGINT) AS user__cnt_valid_play_music_model_default_3d
        ,CAST(MAX(
            CASE    WHEN field_name = 'user__cnt_full_play_music_model_default_3d' THEN field_value END
        ) AS BIGINT) AS user__cnt_full_play_music_model_default_3d
        ,CAST(MAX(
            CASE    WHEN field_name = 'user__num_play_sum_event_value_music_model_default_30d' THEN field_value END
        ) AS DOUBLE) AS user__num_play_sum_event_value_music_model_default_30d
        ,CAST(MAX(
            CASE    WHEN field_name = 'user__num_play_sum_event_value_music_model_default_15d' THEN field_value END
        ) AS DOUBLE) AS user__num_play_sum_event_value_music_model_default_15d
        ,CAST(MAX(
            CASE    WHEN field_name = 'user__num_play_sum_event_value_music_model_default_3d' THEN field_value END
        ) AS DOUBLE) AS user__num_play_sum_event_value_music_model_default_3d
        ,CAST(MAX(
            CASE    WHEN field_name = 'user__num_play_avg_event_value_music_model_default_30d' THEN field_value END
        ) AS DOUBLE) AS user__num_play_avg_event_value_music_model_default_30d
        ,CAST(MAX(
            CASE    WHEN field_name = 'user__num_play_avg_event_value_music_model_default_15d' THEN field_value END
        ) AS DOUBLE) AS user__num_play_avg_event_value_music_model_default_15d
        ,CAST(MAX(
            CASE    WHEN field_name = 'user__num_play_avg_event_value_music_model_default_3d' THEN field_value END
        ) AS DOUBLE) AS user__num_play_avg_event_value_music_model_default_3d
        ,NULLIF(
               MAX(
                   CASE    WHEN field_name = 'user__kv_num_full_play_song_business_model_sum_event_value_music_model_default_30d' THEN field_value END
               )
        ,'') AS user__kv_num_full_play_song_business_model_sum_event_value_music_model_default_30d
        ,NULLIF(
               MAX(
                   CASE    WHEN field_name = 'user__kv_num_full_play_song_business_model_sum_event_value_music_model_default_15d' THEN field_value END
               )
        ,'') AS user__kv_num_full_play_song_business_model_sum_event_value_music_model_default_15d
        ,NULLIF(
               MAX(
                   CASE    WHEN field_name = 'user__kv_num_full_play_song_business_model_sum_event_value_music_model_default_3d' THEN field_value END
               )
        ,'') AS user__kv_num_full_play_song_business_model_sum_event_value_music_model_default_3d
        ,NULLIF(
               MAX(
                   CASE    WHEN field_name = 'user__kv_item_id_play_music_model_default_30d' THEN field_value END
               )
        ,'') AS user__kv_item_id_play_music_model_default_30d
        ,NULLIF(
               MAX(
                   CASE    WHEN field_name = 'user__kv_singer_id_play_music_model_default_30d' THEN field_value END
               )
        ,'') AS user__kv_singer_id_play_music_model_default_30d
        ,NULLIF(
               MAX(
                   CASE    WHEN field_name = 'user__kv_style_tag_id_lv2_play_music_model_default_30d' THEN field_value END
               )
        ,'') AS user__kv_style_tag_id_lv2_play_music_model_default_30d
        ,NULLIF(
               MAX(
                   CASE    WHEN field_name = 'user__kv_item_id_valid_play_music_model_default_30d' THEN field_value END
               )
        ,'') AS user__kv_item_id_valid_play_music_model_default_30d
        ,NULLIF(
               MAX(
                   CASE    WHEN field_name = 'user__kv_singer_id_valid_play_music_model_default_30d' THEN field_value END
               )
        ,'') AS user__kv_singer_id_valid_play_music_model_default_30d
        ,NULLIF(
               MAX(
                   CASE    WHEN field_name = 'user__kv_style_tag_id_lv2_valid_play_music_model_default_30d' THEN field_value END
               )
        ,'') AS user__kv_style_tag_id_lv2_valid_play_music_model_default_30d
        ,NULLIF(
               MAX(
                   CASE    WHEN field_name = 'user__kv_item_id_full_play_music_model_default_30d' THEN field_value END
               )
        ,'') AS user__kv_item_id_full_play_music_model_default_30d
        ,NULLIF(
               MAX(
                   CASE    WHEN field_name = 'user__kv_singer_id_full_play_music_model_default_30d' THEN field_value END
               )
        ,'') AS user__kv_singer_id_full_play_music_model_default_30d
        ,NULLIF(
               MAX(
                   CASE    WHEN field_name = 'user__kv_style_tag_id_lv2_full_play_music_model_default_30d' THEN field_value END
               )
        ,'') AS user__kv_style_tag_id_lv2_full_play_music_model_default_30d
        ,NULLIF(
               MAX(
                   CASE    WHEN field_name = 'user__kv_item_id_play_music_model_default_15d' THEN field_value END
               )
        ,'') AS user__kv_item_id_play_music_model_default_15d
        ,NULLIF(
               MAX(
                   CASE    WHEN field_name = 'user__kv_singer_id_play_music_model_default_15d' THEN field_value END
               )
        ,'') AS user__kv_singer_id_play_music_model_default_15d
        ,NULLIF(
               MAX(
                   CASE    WHEN field_name = 'user__kv_style_tag_id_lv2_play_music_model_default_15d' THEN field_value END
               )
        ,'') AS user__kv_style_tag_id_lv2_play_music_model_default_15d
        ,NULLIF(
               MAX(
                   CASE    WHEN field_name = 'user__kv_item_id_valid_play_music_model_default_15d' THEN field_value END
               )
        ,'') AS user__kv_item_id_valid_play_music_model_default_15d
        ,NULLIF(
               MAX(
                   CASE    WHEN field_name = 'user__kv_singer_id_valid_play_music_model_default_15d' THEN field_value END
               )
        ,'') AS user__kv_singer_id_valid_play_music_model_default_15d
        ,NULLIF(
               MAX(
                   CASE    WHEN field_name = 'user__kv_style_tag_id_lv2_valid_play_music_model_default_15d' THEN field_value END
               )
        ,'') AS user__kv_style_tag_id_lv2_valid_play_music_model_default_15d
        ,NULLIF(
               MAX(
                   CASE    WHEN field_name = 'user__kv_item_id_full_play_music_model_default_15d' THEN field_value END
               )
        ,'') AS user__kv_item_id_full_play_music_model_default_15d
        ,NULLIF(
               MAX(
                   CASE    WHEN field_name = 'user__kv_singer_id_full_play_music_model_default_15d' THEN field_value END
               )
        ,'') AS user__kv_singer_id_full_play_music_model_default_15d
        ,NULLIF(
               MAX(
                   CASE    WHEN field_name = 'user__kv_style_tag_id_lv2_full_play_music_model_default_15d' THEN field_value END
               )
        ,'') AS user__kv_style_tag_id_lv2_full_play_music_model_default_15d
        ,NULLIF(
               MAX(
                   CASE    WHEN field_name = 'user__kv_item_id_play_music_model_default_3d' THEN field_value END
               )
        ,'') AS user__kv_item_id_play_music_model_default_3d
        ,NULLIF(
               MAX(
                   CASE    WHEN field_name = 'user__kv_singer_id_play_music_model_default_3d' THEN field_value END
               )
        ,'') AS user__kv_singer_id_play_music_model_default_3d
        ,NULLIF(
               MAX(
                   CASE    WHEN field_name = 'user__kv_style_tag_id_lv2_play_music_model_default_3d' THEN field_value END
               )
        ,'') AS user__kv_style_tag_id_lv2_play_music_model_default_3d
        ,NULLIF(
               MAX(
                   CASE    WHEN field_name = 'user__kv_item_id_valid_play_music_model_default_3d' THEN field_value END
               )
        ,'') AS user__kv_item_id_valid_play_music_model_default_3d
        ,NULLIF(
               MAX(
                   CASE    WHEN field_name = 'user__kv_singer_id_valid_play_music_model_default_3d' THEN field_value END
               )
        ,'') AS user__kv_singer_id_valid_play_music_model_default_3d
        ,NULLIF(
               MAX(
                   CASE    WHEN field_name = 'user__kv_style_tag_id_lv2_valid_play_music_model_default_3d' THEN field_value END
               )
        ,'') AS user__kv_style_tag_id_lv2_valid_play_music_model_default_3d
        ,NULLIF(
               MAX(
                   CASE    WHEN field_name = 'user__kv_item_id_full_play_music_model_default_3d' THEN field_value END
               )
        ,'') AS user__kv_item_id_full_play_music_model_default_3d
        ,NULLIF(
               MAX(
                   CASE    WHEN field_name = 'user__kv_singer_id_full_play_music_model_default_3d' THEN field_value END
               )
        ,'') AS user__kv_singer_id_full_play_music_model_default_3d
        ,NULLIF(
               MAX(
                   CASE    WHEN field_name = 'user__kv_style_tag_id_lv2_full_play_music_model_default_3d' THEN field_value END
               )
        ,'') AS user__kv_style_tag_id_lv2_full_play_music_model_default_3d
        ,NULLIF(MAX(CASE    WHEN field_name = 'user__kv_item_id_valid_play_30d' THEN field_value END),'') AS user__kv_item_id_valid_play_30d
        ,NULLIF(
               MAX(CASE    WHEN field_name = 'user__kv_style_tag_id_lv2_valid_play_30d' THEN field_value END)
        ,'') AS user__kv_style_tag_id_lv2_valid_play_30d
        ,NULLIF(MAX(CASE    WHEN field_name = 'user__kv_singer_id_valid_play_30d' THEN field_value END),'') AS user__kv_singer_id_valid_play_30d
        ,NULLIF(MAX(CASE    WHEN field_name = 'user__kv_item_id_full_play_30d' THEN field_value END),'') AS user__kv_item_id_full_play_30d
        ,NULLIF(
               MAX(CASE    WHEN field_name = 'user__kv_style_tag_id_lv2_full_play_30d' THEN field_value END)
        ,'') AS user__kv_style_tag_id_lv2_full_play_30d
        ,NULLIF(MAX(CASE    WHEN field_name = 'user__kv_singer_id_full_play_30d' THEN field_value END),'') AS user__kv_singer_id_full_play_30d
        ,NULLIF(MAX(CASE    WHEN field_name = 'user__kv_item_id_collect_30d' THEN field_value END),'') AS user__kv_item_id_collect_30d
        ,NULLIF(
               MAX(CASE    WHEN field_name = 'user__kv_style_tag_id_lv2_collect_30d' THEN field_value END)
        ,'') AS user__kv_style_tag_id_lv2_collect_30d
        ,NULLIF(MAX(CASE    WHEN field_name = 'user__kv_singer_id_collect_30d' THEN field_value END),'') AS user__kv_singer_id_collect_30d
        ,NULLIF(MAX(CASE    WHEN field_name = 'user__kv_item_id_download_30d' THEN field_value END),'') AS user__kv_item_id_download_30d
        ,NULLIF(
               MAX(CASE    WHEN field_name = 'user__kv_style_tag_id_lv2_download_30d' THEN field_value END)
        ,'') AS user__kv_style_tag_id_lv2_download_30d
        ,NULLIF(MAX(CASE    WHEN field_name = 'user__kv_singer_id_download_30d' THEN field_value END),'') AS user__kv_singer_id_download_30d
        ,NULLIF(MAX(CASE    WHEN field_name = 'user__kv_item_id_share_30d' THEN field_value END),'') AS user__kv_item_id_share_30d
        ,NULLIF(MAX(CASE    WHEN field_name = 'user__kv_style_tag_id_lv2_share_30d' THEN field_value END),'') AS user__kv_style_tag_id_lv2_share_30d
        ,NULLIF(MAX(CASE    WHEN field_name = 'user__kv_singer_id_share_30d' THEN field_value END),'') AS user__kv_singer_id_share_30d
        ,NULLIF(MAX(CASE    WHEN field_name = 'user__kv_item_id_valid_play_15d' THEN field_value END),'') AS user__kv_item_id_valid_play_15d
        ,NULLIF(
               MAX(CASE    WHEN field_name = 'user__kv_style_tag_id_lv2_valid_play_15d' THEN field_value END)
        ,'') AS user__kv_style_tag_id_lv2_valid_play_15d
        ,NULLIF(MAX(CASE    WHEN field_name = 'user__kv_singer_id_valid_play_15d' THEN field_value END),'') AS user__kv_singer_id_valid_play_15d
        ,NULLIF(MAX(CASE    WHEN field_name = 'user__kv_item_id_full_play_15d' THEN field_value END),'') AS user__kv_item_id_full_play_15d
        ,NULLIF(
               MAX(CASE    WHEN field_name = 'user__kv_style_tag_id_lv2_full_play_15d' THEN field_value END)
        ,'') AS user__kv_style_tag_id_lv2_full_play_15d
        ,NULLIF(MAX(CASE    WHEN field_name = 'user__kv_singer_id_full_play_15d' THEN field_value END),'') AS user__kv_singer_id_full_play_15d
        ,NULLIF(MAX(CASE    WHEN field_name = 'user__kv_item_id_collect_15d' THEN field_value END),'') AS user__kv_item_id_collect_15d
        ,NULLIF(
               MAX(CASE    WHEN field_name = 'user__kv_style_tag_id_lv2_collect_15d' THEN field_value END)
        ,'') AS user__kv_style_tag_id_lv2_collect_15d
        ,NULLIF(MAX(CASE    WHEN field_name = 'user__kv_singer_id_collect_15d' THEN field_value END),'') AS user__kv_singer_id_collect_15d
        ,NULLIF(MAX(CASE    WHEN field_name = 'user__kv_item_id_download_15d' THEN field_value END),'') AS user__kv_item_id_download_15d
        ,NULLIF(
               MAX(CASE    WHEN field_name = 'user__kv_style_tag_id_lv2_download_15d' THEN field_value END)
        ,'') AS user__kv_style_tag_id_lv2_download_15d
        ,NULLIF(MAX(CASE    WHEN field_name = 'user__kv_singer_id_download_15d' THEN field_value END),'') AS user__kv_singer_id_download_15d
        ,NULLIF(MAX(CASE    WHEN field_name = 'user__kv_item_id_share_15d' THEN field_value END),'') AS user__kv_item_id_share_15d
        ,NULLIF(MAX(CASE    WHEN field_name = 'user__kv_style_tag_id_lv2_share_15d' THEN field_value END),'') AS user__kv_style_tag_id_lv2_share_15d
        ,NULLIF(MAX(CASE    WHEN field_name = 'user__kv_singer_id_share_15d' THEN field_value END),'') AS user__kv_singer_id_share_15d
        ,NULLIF(MAX(CASE    WHEN field_name = 'user__kv_item_id_valid_play_3d' THEN field_value END),'') AS user__kv_item_id_valid_play_3d
        ,NULLIF(
               MAX(CASE    WHEN field_name = 'user__kv_style_tag_id_lv2_valid_play_3d' THEN field_value END)
        ,'') AS user__kv_style_tag_id_lv2_valid_play_3d
        ,NULLIF(MAX(CASE    WHEN field_name = 'user__kv_singer_id_valid_play_3d' THEN field_value END),'') AS user__kv_singer_id_valid_play_3d
        ,NULLIF(MAX(CASE    WHEN field_name = 'user__kv_item_id_full_play_3d' THEN field_value END),'') AS user__kv_item_id_full_play_3d
        ,NULLIF(
               MAX(CASE    WHEN field_name = 'user__kv_style_tag_id_lv2_full_play_3d' THEN field_value END)
        ,'') AS user__kv_style_tag_id_lv2_full_play_3d
        ,NULLIF(MAX(CASE    WHEN field_name = 'user__kv_singer_id_full_play_3d' THEN field_value END),'') AS user__kv_singer_id_full_play_3d
        ,NULLIF(MAX(CASE    WHEN field_name = 'user__kv_item_id_collect_3d' THEN field_value END),'') AS user__kv_item_id_collect_3d
        ,NULLIF(MAX(CASE    WHEN field_name = 'user__kv_style_tag_id_lv2_collect_3d' THEN field_value END),'') AS user__kv_style_tag_id_lv2_collect_3d
        ,NULLIF(MAX(CASE    WHEN field_name = 'user__kv_singer_id_collect_3d' THEN field_value END),'') AS user__kv_singer_id_collect_3d
        ,NULLIF(MAX(CASE    WHEN field_name = 'user__kv_item_id_download_3d' THEN field_value END),'') AS user__kv_item_id_download_3d
        ,NULLIF(
               MAX(CASE    WHEN field_name = 'user__kv_style_tag_id_lv2_download_3d' THEN field_value END)
        ,'') AS user__kv_style_tag_id_lv2_download_3d
        ,NULLIF(MAX(CASE    WHEN field_name = 'user__kv_singer_id_download_3d' THEN field_value END),'') AS user__kv_singer_id_download_3d
        ,NULLIF(MAX(CASE    WHEN field_name = 'user__kv_item_id_share_3d' THEN field_value END),'') AS user__kv_item_id_share_3d
        ,NULLIF(MAX(CASE    WHEN field_name = 'user__kv_style_tag_id_lv2_share_3d' THEN field_value END),'') AS user__kv_style_tag_id_lv2_share_3d
        ,NULLIF(MAX(CASE    WHEN field_name = 'user__kv_singer_id_share_3d' THEN field_value END),'') AS user__kv_singer_id_share_3d
        ,NULLIF(MAX(CASE    WHEN field_name = 'singer_id' THEN field_value END),'') AS singer_id
        ,NULLIF(MAX(CASE    WHEN field_name = 'composer' THEN field_value END),'') AS composer
        ,NULLIF(MAX(CASE    WHEN field_name = 'lyric_writer' THEN field_value END),'') AS lyric_writer
        ,NULLIF(MAX(CASE    WHEN field_name = 'language_tag_id_lv2' THEN field_value END),'') AS language_tag_id_lv2
        ,NULLIF(MAX(CASE    WHEN field_name = 'language_tag_id_lv3' THEN field_value END),'') AS language_tag_id_lv3
        ,NULLIF(MAX(CASE    WHEN field_name = 'style_tag_id_lv2' THEN field_value END),'') AS style_tag_id_lv2
        ,NULLIF(MAX(CASE    WHEN field_name = 'style_tag_id_lv3' THEN field_value END),'') AS style_tag_id_lv3
        ,NULLIF(MAX(CASE    WHEN field_name = 'age_tag_id_lv2' THEN field_value END),'') AS age_tag_id_lv2
        ,NULLIF(MAX(CASE    WHEN field_name = 'age_tag_id_lv3' THEN field_value END),'') AS age_tag_id_lv3
        ,NULLIF(MAX(CASE    WHEN field_name = 'song_business_model' THEN field_value END),'') AS song_business_model
        ,CAST(MAX(CASE    WHEN field_name = 'song_length' THEN field_value END) AS DOUBLE) AS song_length
        ,NULLIF(MAX(CASE    WHEN field_name = 'song_name_purified' THEN field_value END),'') AS song_name_purified
        ,CAST(MAX(CASE    WHEN field_name = 'item_publish_time' THEN field_value END) AS BIGINT) AS item_publish_time
        ,CAST(MAX(CASE    WHEN field_name = 'item__cnt_play_30d' THEN field_value END) AS BIGINT) AS item__cnt_play_30d
        ,CAST(MAX(CASE    WHEN field_name = 'item__cnt_valid_play_30d' THEN field_value END) AS BIGINT) AS item__cnt_valid_play_30d
        ,CAST(MAX(CASE    WHEN field_name = 'item__cnt_full_play_30d' THEN field_value END) AS BIGINT) AS item__cnt_full_play_30d
        ,CAST(MAX(CASE    WHEN field_name = 'item__cnt_collect_30d' THEN field_value END) AS BIGINT) AS item__cnt_collect_30d
        ,CAST(MAX(CASE    WHEN field_name = 'item__cnt_download_30d' THEN field_value END) AS BIGINT) AS item__cnt_download_30d
        ,CAST(MAX(CASE    WHEN field_name = 'item__cnt_comment_30d' THEN field_value END) AS BIGINT) AS item__cnt_comment_30d
        ,CAST(MAX(CASE    WHEN field_name = 'item__cnt_share_30d' THEN field_value END) AS BIGINT) AS item__cnt_share_30d
        ,CAST(MAX(CASE    WHEN field_name = 'item__cnt_play_7d' THEN field_value END) AS BIGINT) AS item__cnt_play_7d
        ,CAST(MAX(CASE    WHEN field_name = 'item__cnt_valid_play_7d' THEN field_value END) AS BIGINT) AS item__cnt_valid_play_7d
        ,CAST(MAX(CASE    WHEN field_name = 'item__cnt_full_play_7d' THEN field_value END) AS BIGINT) AS item__cnt_full_play_7d
        ,CAST(MAX(CASE    WHEN field_name = 'item__cnt_collect_7d' THEN field_value END) AS BIGINT) AS item__cnt_collect_7d
        ,CAST(MAX(CASE    WHEN field_name = 'item__cnt_download_7d' THEN field_value END) AS BIGINT) AS item__cnt_download_7d
        ,CAST(MAX(CASE    WHEN field_name = 'item__cnt_comment_7d' THEN field_value END) AS BIGINT) AS item__cnt_comment_7d
        ,CAST(MAX(CASE    WHEN field_name = 'item__cnt_share_7d' THEN field_value END) AS BIGINT) AS item__cnt_share_7d
        ,CAST(MAX(CASE    WHEN field_name = 'item__cnt_play_3d' THEN field_value END) AS BIGINT) AS item__cnt_play_3d
        ,CAST(MAX(CASE    WHEN field_name = 'item__cnt_valid_play_3d' THEN field_value END) AS BIGINT) AS item__cnt_valid_play_3d
        ,CAST(MAX(CASE    WHEN field_name = 'item__cnt_full_play_3d' THEN field_value END) AS BIGINT) AS item__cnt_full_play_3d
        ,CAST(MAX(CASE    WHEN field_name = 'item__cnt_collect_3d' THEN field_value END) AS BIGINT) AS item__cnt_collect_3d
        ,CAST(MAX(CASE    WHEN field_name = 'item__cnt_download_3d' THEN field_value END) AS BIGINT) AS item__cnt_download_3d
        ,CAST(MAX(CASE    WHEN field_name = 'item__cnt_comment_3d' THEN field_value END) AS BIGINT) AS item__cnt_comment_3d
        ,CAST(MAX(CASE    WHEN field_name = 'item__cnt_share_3d' THEN field_value END) AS BIGINT) AS item__cnt_share_3d
        ,CAST(MAX(CASE    WHEN field_name = 'item__cnt_play_identity_id_30d' THEN field_value END) AS BIGINT) AS item__cnt_play_identity_id_30d
        ,CAST(MAX(CASE    WHEN field_name = 'item__cnt_valid_play_identity_id_30d' THEN field_value END) AS BIGINT) AS item__cnt_valid_play_identity_id_30d
        ,CAST(MAX(CASE    WHEN field_name = 'item__cnt_full_play_identity_id_30d' THEN field_value END) AS BIGINT) AS item__cnt_full_play_identity_id_30d
        ,CAST(MAX(CASE    WHEN field_name = 'item__cnt_collect_identity_id_30d' THEN field_value END) AS BIGINT) AS item__cnt_collect_identity_id_30d
        ,CAST(MAX(CASE    WHEN field_name = 'item__cnt_download_identity_id_30d' THEN field_value END) AS BIGINT) AS item__cnt_download_identity_id_30d
        ,CAST(MAX(CASE    WHEN field_name = 'item__cnt_comment_identity_id_30d' THEN field_value END) AS BIGINT) AS item__cnt_comment_identity_id_30d
        ,CAST(MAX(CASE    WHEN field_name = 'item__cnt_share_identity_id_30d' THEN field_value END) AS BIGINT) AS item__cnt_share_identity_id_30d
        ,CAST(MAX(CASE    WHEN field_name = 'item__cnt_play_identity_id_7d' THEN field_value END) AS BIGINT) AS item__cnt_play_identity_id_7d
        ,CAST(MAX(CASE    WHEN field_name = 'item__cnt_valid_play_identity_id_7d' THEN field_value END) AS BIGINT) AS item__cnt_valid_play_identity_id_7d
        ,CAST(MAX(CASE    WHEN field_name = 'item__cnt_full_play_identity_id_7d' THEN field_value END) AS BIGINT) AS item__cnt_full_play_identity_id_7d
        ,CAST(MAX(CASE    WHEN field_name = 'item__cnt_collect_identity_id_7d' THEN field_value END) AS BIGINT) AS item__cnt_collect_identity_id_7d
        ,CAST(MAX(CASE    WHEN field_name = 'item__cnt_download_identity_id_7d' THEN field_value END) AS BIGINT) AS item__cnt_download_identity_id_7d
        ,CAST(MAX(CASE    WHEN field_name = 'item__cnt_comment_identity_id_7d' THEN field_value END) AS BIGINT) AS item__cnt_comment_identity_id_7d
        ,CAST(MAX(CASE    WHEN field_name = 'item__cnt_share_identity_id_7d' THEN field_value END) AS BIGINT) AS item__cnt_share_identity_id_7d
        ,CAST(MAX(CASE    WHEN field_name = 'item__cnt_play_identity_id_3d' THEN field_value END) AS BIGINT) AS item__cnt_play_identity_id_3d
        ,CAST(MAX(CASE    WHEN field_name = 'item__cnt_valid_play_identity_id_3d' THEN field_value END) AS BIGINT) AS item__cnt_valid_play_identity_id_3d
        ,CAST(MAX(CASE    WHEN field_name = 'item__cnt_full_play_identity_id_3d' THEN field_value END) AS BIGINT) AS item__cnt_full_play_identity_id_3d
        ,CAST(MAX(CASE    WHEN field_name = 'item__cnt_collect_identity_id_3d' THEN field_value END) AS BIGINT) AS item__cnt_collect_identity_id_3d
        ,CAST(MAX(CASE    WHEN field_name = 'item__cnt_download_identity_id_3d' THEN field_value END) AS BIGINT) AS item__cnt_download_identity_id_3d
        ,CAST(MAX(CASE    WHEN field_name = 'item__cnt_comment_identity_id_3d' THEN field_value END) AS BIGINT) AS item__cnt_comment_identity_id_3d
        ,CAST(MAX(CASE    WHEN field_name = 'item__cnt_share_identity_id_3d' THEN field_value END) AS BIGINT) AS item__cnt_share_identity_id_3d
        ,CAST(MAX(CASE    WHEN field_name = 'item__cnt_play_music_model_default_30d' THEN field_value END) AS BIGINT) AS item__cnt_play_music_model_default_30d
        ,CAST(MAX(
            CASE    WHEN field_name = 'item__cnt_valid_play_music_model_default_30d' THEN field_value END
        ) AS BIGINT) AS item__cnt_valid_play_music_model_default_30d
        ,CAST(MAX(
            CASE    WHEN field_name = 'item__cnt_full_play_music_model_default_30d' THEN field_value END
        ) AS BIGINT) AS item__cnt_full_play_music_model_default_30d
        ,CAST(MAX(CASE    WHEN field_name = 'item__cnt_play_music_model_default_7d' THEN field_value END) AS BIGINT) AS item__cnt_play_music_model_default_7d
        ,CAST(MAX(
            CASE    WHEN field_name = 'item__cnt_valid_play_music_model_default_7d' THEN field_value END
        ) AS BIGINT) AS item__cnt_valid_play_music_model_default_7d
        ,CAST(MAX(
            CASE    WHEN field_name = 'item__cnt_full_play_music_model_default_7d' THEN field_value END
        ) AS BIGINT) AS item__cnt_full_play_music_model_default_7d
        ,CAST(MAX(CASE    WHEN field_name = 'item__cnt_play_music_model_default_3d' THEN field_value END) AS BIGINT) AS item__cnt_play_music_model_default_3d
        ,CAST(MAX(
            CASE    WHEN field_name = 'item__cnt_valid_play_music_model_default_3d' THEN field_value END
        ) AS BIGINT) AS item__cnt_valid_play_music_model_default_3d
        ,CAST(MAX(
            CASE    WHEN field_name = 'item__cnt_full_play_music_model_default_3d' THEN field_value END
        ) AS BIGINT) AS item__cnt_full_play_music_model_default_3d
        ,CAST(MAX(
            CASE    WHEN field_name = 'item__cnt_play_identity_id_music_model_default_30d' THEN field_value END
        ) AS BIGINT) AS item__cnt_play_identity_id_music_model_default_30d
        ,CAST(MAX(
            CASE    WHEN field_name = 'item__cnt_valid_play_identity_id_music_model_default_30d' THEN field_value END
        ) AS BIGINT) AS item__cnt_valid_play_identity_id_music_model_default_30d
        ,CAST(MAX(
            CASE    WHEN field_name = 'item__cnt_full_play_identity_id_music_model_default_30d' THEN field_value END
        ) AS BIGINT) AS item__cnt_full_play_identity_id_music_model_default_30d
        ,CAST(MAX(
            CASE    WHEN field_name = 'item__cnt_play_identity_id_music_model_default_7d' THEN field_value END
        ) AS BIGINT) AS item__cnt_play_identity_id_music_model_default_7d
        ,CAST(MAX(
            CASE    WHEN field_name = 'item__cnt_valid_play_identity_id_music_model_default_7d' THEN field_value END
        ) AS BIGINT) AS item__cnt_valid_play_identity_id_music_model_default_7d
        ,CAST(MAX(
            CASE    WHEN field_name = 'item__cnt_full_play_identity_id_music_model_default_7d' THEN field_value END
        ) AS BIGINT) AS item__cnt_full_play_identity_id_music_model_default_7d
        ,CAST(MAX(
            CASE    WHEN field_name = 'item__cnt_play_identity_id_music_model_default_3d' THEN field_value END
        ) AS BIGINT) AS item__cnt_play_identity_id_music_model_default_3d
        ,CAST(MAX(
            CASE    WHEN field_name = 'item__cnt_valid_play_identity_id_music_model_default_3d' THEN field_value END
        ) AS BIGINT) AS item__cnt_valid_play_identity_id_music_model_default_3d
        ,CAST(MAX(
            CASE    WHEN field_name = 'item__cnt_full_play_identity_id_music_model_default_3d' THEN field_value END
        ) AS BIGINT) AS item__cnt_full_play_identity_id_music_model_default_3d
        ,CAST(MAX(
            CASE    WHEN field_name = 'item__ratio_valid_play_play_music_model_default_30d' THEN field_value END
        ) AS DOUBLE) AS item__ratio_valid_play_play_music_model_default_30d
        ,CAST(MAX(
            CASE    WHEN field_name = 'item__ratio_valid_play_play_music_model_default_7d' THEN field_value END
        ) AS DOUBLE) AS item__ratio_valid_play_play_music_model_default_7d
        ,CAST(MAX(
            CASE    WHEN field_name = 'item__ratio_valid_play_play_music_model_default_3d' THEN field_value END
        ) AS DOUBLE) AS item__ratio_valid_play_play_music_model_default_3d
        ,NULLIF(MAX(CASE    WHEN field_name = 'item__kv_age_group_valid_play_30d' THEN field_value END),'') AS item__kv_age_group_valid_play_30d
        ,NULLIF(
               MAX(
                   CASE    WHEN field_name = 'item__kv_used_competitors_last_7d_valid_play_30d' THEN field_value END
               )
        ,'') AS item__kv_used_competitors_last_7d_valid_play_30d
        ,NULLIF(MAX(CASE    WHEN field_name = 'item__kv_age_group_full_play_30d' THEN field_value END),'') AS item__kv_age_group_full_play_30d
        ,NULLIF(
               MAX(
                   CASE    WHEN field_name = 'item__kv_used_competitors_last_7d_full_play_30d' THEN field_value END
               )
        ,'') AS item__kv_used_competitors_last_7d_full_play_30d
        ,NULLIF(MAX(CASE    WHEN field_name = 'item__kv_age_group_collect_30d' THEN field_value END),'') AS item__kv_age_group_collect_30d
        ,NULLIF(
               MAX(
                   CASE    WHEN field_name = 'item__kv_used_competitors_last_7d_collect_30d' THEN field_value END
               )
        ,'') AS item__kv_used_competitors_last_7d_collect_30d
        ,NULLIF(MAX(CASE    WHEN field_name = 'item__kv_age_group_download_30d' THEN field_value END),'') AS item__kv_age_group_download_30d
        ,NULLIF(
               MAX(
                   CASE    WHEN field_name = 'item__kv_used_competitors_last_7d_download_30d' THEN field_value END
               )
        ,'') AS item__kv_used_competitors_last_7d_download_30d
        ,NULLIF(MAX(CASE    WHEN field_name = 'item__kv_age_group_comment_30d' THEN field_value END),'') AS item__kv_age_group_comment_30d
        ,NULLIF(
               MAX(
                   CASE    WHEN field_name = 'item__kv_used_competitors_last_7d_comment_30d' THEN field_value END
               )
        ,'') AS item__kv_used_competitors_last_7d_comment_30d
        ,NULLIF(MAX(CASE    WHEN field_name = 'item__kv_age_group_share_30d' THEN field_value END),'') AS item__kv_age_group_share_30d
        ,NULLIF(
               MAX(
                   CASE    WHEN field_name = 'item__kv_used_competitors_last_7d_share_30d' THEN field_value END
               )
        ,'') AS item__kv_used_competitors_last_7d_share_30d
        ,NULLIF(MAX(CASE    WHEN field_name = 'item__kv_age_group_valid_play_7d' THEN field_value END),'') AS item__kv_age_group_valid_play_7d
        ,NULLIF(
               MAX(
                   CASE    WHEN field_name = 'item__kv_used_competitors_last_7d_valid_play_7d' THEN field_value END
               )
        ,'') AS item__kv_used_competitors_last_7d_valid_play_7d
        ,NULLIF(MAX(CASE    WHEN field_name = 'item__kv_age_group_full_play_7d' THEN field_value END),'') AS item__kv_age_group_full_play_7d
        ,NULLIF(
               MAX(
                   CASE    WHEN field_name = 'item__kv_used_competitors_last_7d_full_play_7d' THEN field_value END
               )
        ,'') AS item__kv_used_competitors_last_7d_full_play_7d
        ,NULLIF(MAX(CASE    WHEN field_name = 'item__kv_age_group_collect_7d' THEN field_value END),'') AS item__kv_age_group_collect_7d
        ,NULLIF(
               MAX(
                   CASE    WHEN field_name = 'item__kv_used_competitors_last_7d_collect_7d' THEN field_value END
               )
        ,'') AS item__kv_used_competitors_last_7d_collect_7d
        ,NULLIF(MAX(CASE    WHEN field_name = 'item__kv_age_group_download_7d' THEN field_value END),'') AS item__kv_age_group_download_7d
        ,NULLIF(
               MAX(
                   CASE    WHEN field_name = 'item__kv_used_competitors_last_7d_download_7d' THEN field_value END
               )
        ,'') AS item__kv_used_competitors_last_7d_download_7d
        ,NULLIF(MAX(CASE    WHEN field_name = 'item__kv_age_group_comment_7d' THEN field_value END),'') AS item__kv_age_group_comment_7d
        ,NULLIF(
               MAX(
                   CASE    WHEN field_name = 'item__kv_used_competitors_last_7d_comment_7d' THEN field_value END
               )
        ,'') AS item__kv_used_competitors_last_7d_comment_7d
        ,NULLIF(MAX(CASE    WHEN field_name = 'item__kv_age_group_share_7d' THEN field_value END),'') AS item__kv_age_group_share_7d
        ,NULLIF(
               MAX(
                   CASE    WHEN field_name = 'item__kv_used_competitors_last_7d_share_7d' THEN field_value END
               )
        ,'') AS item__kv_used_competitors_last_7d_share_7d
        ,NULLIF(MAX(CASE    WHEN field_name = 'item__kv_age_group_valid_play_3d' THEN field_value END),'') AS item__kv_age_group_valid_play_3d
        ,NULLIF(
               MAX(
                   CASE    WHEN field_name = 'item__kv_used_competitors_last_7d_valid_play_3d' THEN field_value END
               )
        ,'') AS item__kv_used_competitors_last_7d_valid_play_3d
        ,NULLIF(MAX(CASE    WHEN field_name = 'item__kv_age_group_full_play_3d' THEN field_value END),'') AS item__kv_age_group_full_play_3d
        ,NULLIF(
               MAX(
                   CASE    WHEN field_name = 'item__kv_used_competitors_last_7d_full_play_3d' THEN field_value END
               )
        ,'') AS item__kv_used_competitors_last_7d_full_play_3d
        ,NULLIF(MAX(CASE    WHEN field_name = 'item__kv_age_group_collect_3d' THEN field_value END),'') AS item__kv_age_group_collect_3d
        ,NULLIF(
               MAX(
                   CASE    WHEN field_name = 'item__kv_used_competitors_last_7d_collect_3d' THEN field_value END
               )
        ,'') AS item__kv_used_competitors_last_7d_collect_3d
        ,NULLIF(MAX(CASE    WHEN field_name = 'item__kv_age_group_download_3d' THEN field_value END),'') AS item__kv_age_group_download_3d
        ,NULLIF(
               MAX(
                   CASE    WHEN field_name = 'item__kv_used_competitors_last_7d_download_3d' THEN field_value END
               )
        ,'') AS item__kv_used_competitors_last_7d_download_3d
        ,NULLIF(MAX(CASE    WHEN field_name = 'item__kv_age_group_comment_3d' THEN field_value END),'') AS item__kv_age_group_comment_3d
        ,NULLIF(
               MAX(
                   CASE    WHEN field_name = 'item__kv_used_competitors_last_7d_comment_3d' THEN field_value END
               )
        ,'') AS item__kv_used_competitors_last_7d_comment_3d
        ,NULLIF(MAX(CASE    WHEN field_name = 'item__kv_age_group_share_3d' THEN field_value END),'') AS item__kv_age_group_share_3d
        ,NULLIF(
               MAX(
                   CASE    WHEN field_name = 'item__kv_used_competitors_last_7d_share_3d' THEN field_value END
               )
        ,'') AS item__kv_used_competitors_last_7d_share_3d
        ,NULLIF(
               MAX(
                   CASE    WHEN field_name = 'item__kv_num_play_age_group_sum_event_value_30d' THEN field_value END
               )
        ,'') AS item__kv_num_play_age_group_sum_event_value_30d
        ,NULLIF(
               MAX(
                   CASE    WHEN field_name = 'item__kv_num_valid_play_age_group_sum_event_value_30d' THEN field_value END
               )
        ,'') AS item__kv_num_valid_play_age_group_sum_event_value_30d
        ,NULLIF(
               MAX(
                   CASE    WHEN field_name = 'item__kv_num_full_play_age_group_sum_event_value_30d' THEN field_value END
               )
        ,'') AS item__kv_num_full_play_age_group_sum_event_value_30d
        ,NULLIF(
               MAX(
                   CASE    WHEN field_name = 'item__kv_num_collect_age_group_sum_event_value_30d' THEN field_value END
               )
        ,'') AS item__kv_num_collect_age_group_sum_event_value_30d
        ,NULLIF(
               MAX(
                   CASE    WHEN field_name = 'item__kv_num_play_age_group_sum_event_value_7d' THEN field_value END
               )
        ,'') AS item__kv_num_play_age_group_sum_event_value_7d
        ,NULLIF(
               MAX(
                   CASE    WHEN field_name = 'item__kv_num_valid_play_age_group_sum_event_value_7d' THEN field_value END
               )
        ,'') AS item__kv_num_valid_play_age_group_sum_event_value_7d
        ,NULLIF(
               MAX(
                   CASE    WHEN field_name = 'item__kv_num_full_play_age_group_sum_event_value_7d' THEN field_value END
               )
        ,'') AS item__kv_num_full_play_age_group_sum_event_value_7d
        ,NULLIF(
               MAX(
                   CASE    WHEN field_name = 'item__kv_num_collect_age_group_sum_event_value_7d' THEN field_value END
               )
        ,'') AS item__kv_num_collect_age_group_sum_event_value_7d
        ,NULLIF(
               MAX(
                   CASE    WHEN field_name = 'item__kv_num_play_age_group_sum_event_value_3d' THEN field_value END
               )
        ,'') AS item__kv_num_play_age_group_sum_event_value_3d
        ,NULLIF(
               MAX(
                   CASE    WHEN field_name = 'item__kv_num_valid_play_age_group_sum_event_value_3d' THEN field_value END
               )
        ,'') AS item__kv_num_valid_play_age_group_sum_event_value_3d
        ,NULLIF(
               MAX(
                   CASE    WHEN field_name = 'item__kv_num_full_play_age_group_sum_event_value_3d' THEN field_value END
               )
        ,'') AS item__kv_num_full_play_age_group_sum_event_value_3d
        ,NULLIF(
               MAX(
                   CASE    WHEN field_name = 'item__kv_num_collect_age_group_sum_event_value_3d' THEN field_value END
               )
        ,'') AS item__kv_num_collect_age_group_sum_event_value_3d
        ,NULLIF(
               MAX(CASE    WHEN field_name = 'item__kv_terminal_model_valid_play_30d' THEN field_value END)
        ,'') AS item__kv_terminal_model_valid_play_30d
        ,NULLIF(MAX(CASE    WHEN field_name = 'full_play_100_seq__item_id' THEN field_value END),'') AS full_play_100_seq__item_id
        ,NULLIF(MAX(CASE    WHEN field_name = 'full_play_100_seq__singer_id' THEN field_value END),'') AS full_play_100_seq__singer_id
        ,NULLIF(MAX(CASE    WHEN field_name = 'full_play_100_seq__lyric_writer' THEN field_value END),'') AS full_play_100_seq__lyric_writer
        ,NULLIF(MAX(CASE    WHEN field_name = 'full_play_100_seq__style_tag_id_lv2' THEN field_value END),'') AS full_play_100_seq__style_tag_id_lv2
        ,NULLIF(MAX(CASE    WHEN field_name = 'full_play_100_seq__ts' THEN field_value END),'') AS full_play_100_seq__ts
        ,NULLIF(MAX(CASE    WHEN field_name = 'valid_play_100_seq__item_id' THEN field_value END),'') AS valid_play_100_seq__item_id
        ,NULLIF(MAX(CASE    WHEN field_name = 'valid_play_100_seq__style_tag_id_lv2' THEN field_value END),'') AS valid_play_100_seq__style_tag_id_lv2
        ,NULLIF(MAX(CASE    WHEN field_name = 'valid_play_100_seq__singer_id' THEN field_value END),'') AS valid_play_100_seq__singer_id
        ,NULLIF(MAX(CASE    WHEN field_name = 'valid_play_100_seq__lyric_writer' THEN field_value END),'') AS valid_play_100_seq__lyric_writer
        ,NULLIF(MAX(CASE    WHEN field_name = 'valid_play_100_seq__ts' THEN field_value END),'') AS valid_play_100_seq__ts
        ,CAST(MAX(CASE    WHEN field_name = 'user__cnt_expose_58463_30d' THEN field_value END) AS BIGINT) AS user__cnt_expose_58463_30d
        ,CAST(MAX(CASE    WHEN field_name = 'user__cnt_click_58463_30d' THEN field_value END) AS BIGINT) AS user__cnt_click_58463_30d
        ,CAST(MAX(CASE    WHEN field_name = 'user__cnt_play_58463_30d' THEN field_value END) AS BIGINT) AS user__cnt_play_58463_30d
        ,CAST(MAX(CASE    WHEN field_name = 'user__cnt_valid_play_58463_30d' THEN field_value END) AS BIGINT) AS user__cnt_valid_play_58463_30d
        ,CAST(MAX(CASE    WHEN field_name = 'user__cnt_full_play_58463_30d' THEN field_value END) AS BIGINT) AS user__cnt_full_play_58463_30d
        ,CAST(MAX(CASE    WHEN field_name = 'user__cnt_expose_58463_15d' THEN field_value END) AS BIGINT) AS user__cnt_expose_58463_15d
        ,CAST(MAX(CASE    WHEN field_name = 'user__cnt_click_58463_15d' THEN field_value END) AS BIGINT) AS user__cnt_click_58463_15d
        ,CAST(MAX(CASE    WHEN field_name = 'user__cnt_play_58463_15d' THEN field_value END) AS BIGINT) AS user__cnt_play_58463_15d
        ,CAST(MAX(CASE    WHEN field_name = 'user__cnt_valid_play_58463_15d' THEN field_value END) AS BIGINT) AS user__cnt_valid_play_58463_15d
        ,CAST(MAX(CASE    WHEN field_name = 'user__cnt_full_play_58463_15d' THEN field_value END) AS BIGINT) AS user__cnt_full_play_58463_15d
        ,CAST(MAX(CASE    WHEN field_name = 'user__cnt_expose_58463_3d' THEN field_value END) AS BIGINT) AS user__cnt_expose_58463_3d
        ,CAST(MAX(CASE    WHEN field_name = 'user__cnt_click_58463_3d' THEN field_value END) AS BIGINT) AS user__cnt_click_58463_3d
        ,CAST(MAX(CASE    WHEN field_name = 'user__cnt_play_58463_3d' THEN field_value END) AS BIGINT) AS user__cnt_play_58463_3d
        ,CAST(MAX(CASE    WHEN field_name = 'user__cnt_valid_play_58463_3d' THEN field_value END) AS BIGINT) AS user__cnt_valid_play_58463_3d
        ,CAST(MAX(CASE    WHEN field_name = 'user__cnt_full_play_58463_3d' THEN field_value END) AS BIGINT) AS user__cnt_full_play_58463_3d
        ,CAST(MAX(CASE    WHEN field_name = 'user__num_play_sum_event_value_58463_30d' THEN field_value END) AS DOUBLE) AS user__num_play_sum_event_value_58463_30d
        ,CAST(MAX(CASE    WHEN field_name = 'user__num_play_sum_event_value_58463_15d' THEN field_value END) AS DOUBLE) AS user__num_play_sum_event_value_58463_15d
        ,CAST(MAX(CASE    WHEN field_name = 'user__num_play_sum_event_value_58463_3d' THEN field_value END) AS DOUBLE) AS user__num_play_sum_event_value_58463_3d
        ,CAST(MAX(CASE    WHEN field_name = 'user__num_play_avg_event_value_58463_30d' THEN field_value END) AS DOUBLE) AS user__num_play_avg_event_value_58463_30d
        ,CAST(MAX(CASE    WHEN field_name = 'user__num_play_avg_event_value_58463_15d' THEN field_value END) AS DOUBLE) AS user__num_play_avg_event_value_58463_15d
        ,CAST(MAX(CASE    WHEN field_name = 'user__num_play_avg_event_value_58463_3d' THEN field_value END) AS DOUBLE) AS user__num_play_avg_event_value_58463_3d
        ,CAST(MAX(CASE    WHEN field_name = 'user__ratio_click_expose_58463_30d' THEN field_value END) AS DOUBLE) AS user__ratio_click_expose_58463_30d
        ,CAST(MAX(CASE    WHEN field_name = 'user__ratio_click_expose_58463_15d' THEN field_value END) AS DOUBLE) AS user__ratio_click_expose_58463_15d
        ,CAST(MAX(CASE    WHEN field_name = 'user__ratio_click_expose_58463_3d' THEN field_value END) AS DOUBLE) AS user__ratio_click_expose_58463_3d
        ,NULLIF(
               MAX(
                   CASE    WHEN field_name = 'user__kv_num_full_play_song_business_model_sum_event_value_58463_15d' THEN field_value END
               )
        ,'') AS user__kv_num_full_play_song_business_model_sum_event_value_58463_15d
        ,NULLIF(
               MAX(
                   CASE    WHEN field_name = 'user__kv_num_full_play_song_business_model_sum_event_value_58463_3d' THEN field_value END
               )
        ,'') AS user__kv_num_full_play_song_business_model_sum_event_value_58463_3d
        ,NULLIF(MAX(CASE    WHEN field_name = 'user__kv_item_id_expose_58463_30d' THEN field_value END),'') AS user__kv_item_id_expose_58463_30d
        ,NULLIF(MAX(CASE    WHEN field_name = 'user__kv_singer_id_expose_58463_30d' THEN field_value END),'') AS user__kv_singer_id_expose_58463_30d
        ,NULLIF(
               MAX(
                   CASE    WHEN field_name = 'user__kv_style_tag_id_lv2_expose_58463_30d' THEN field_value END
               )
        ,'') AS user__kv_style_tag_id_lv2_expose_58463_30d
        ,NULLIF(MAX(CASE    WHEN field_name = 'user__kv_item_id_click_58463_30d' THEN field_value END),'') AS user__kv_item_id_click_58463_30d
        ,NULLIF(MAX(CASE    WHEN field_name = 'user__kv_singer_id_click_58463_30d' THEN field_value END),'') AS user__kv_singer_id_click_58463_30d
        ,NULLIF(
               MAX(CASE    WHEN field_name = 'user__kv_style_tag_id_lv2_click_58463_30d' THEN field_value END)
        ,'') AS user__kv_style_tag_id_lv2_click_58463_30d
        ,NULLIF(MAX(CASE    WHEN field_name = 'user__kv_item_id_play_58463_30d' THEN field_value END),'') AS user__kv_item_id_play_58463_30d
        ,NULLIF(MAX(CASE    WHEN field_name = 'user__kv_singer_id_play_58463_30d' THEN field_value END),'') AS user__kv_singer_id_play_58463_30d
        ,NULLIF(
               MAX(CASE    WHEN field_name = 'user__kv_style_tag_id_lv2_play_58463_30d' THEN field_value END)
        ,'') AS user__kv_style_tag_id_lv2_play_58463_30d
        ,NULLIF(
               MAX(CASE    WHEN field_name = 'user__kv_item_id_valid_play_58463_30d' THEN field_value END)
        ,'') AS user__kv_item_id_valid_play_58463_30d
        ,NULLIF(
               MAX(CASE    WHEN field_name = 'user__kv_singer_id_valid_play_58463_30d' THEN field_value END)
        ,'') AS user__kv_singer_id_valid_play_58463_30d
        ,NULLIF(
               MAX(
                   CASE    WHEN field_name = 'user__kv_style_tag_id_lv2_valid_play_58463_30d' THEN field_value END
               )
        ,'') AS user__kv_style_tag_id_lv2_valid_play_58463_30d
        ,NULLIF(MAX(CASE    WHEN field_name = 'user__kv_item_id_full_play_58463_30d' THEN field_value END),'') AS user__kv_item_id_full_play_58463_30d
        ,NULLIF(
               MAX(CASE    WHEN field_name = 'user__kv_singer_id_full_play_58463_30d' THEN field_value END)
        ,'') AS user__kv_singer_id_full_play_58463_30d
        ,NULLIF(
               MAX(
                   CASE    WHEN field_name = 'user__kv_style_tag_id_lv2_full_play_58463_30d' THEN field_value END
               )
        ,'') AS user__kv_style_tag_id_lv2_full_play_58463_30d
        ,NULLIF(MAX(CASE    WHEN field_name = 'user__kv_item_id_expose_58463_15d' THEN field_value END),'') AS user__kv_item_id_expose_58463_15d
        ,NULLIF(MAX(CASE    WHEN field_name = 'user__kv_singer_id_expose_58463_15d' THEN field_value END),'') AS user__kv_singer_id_expose_58463_15d
        ,NULLIF(
               MAX(
                   CASE    WHEN field_name = 'user__kv_style_tag_id_lv2_expose_58463_15d' THEN field_value END
               )
        ,'') AS user__kv_style_tag_id_lv2_expose_58463_15d
        ,NULLIF(MAX(CASE    WHEN field_name = 'user__kv_item_id_click_58463_15d' THEN field_value END),'') AS user__kv_item_id_click_58463_15d
        ,NULLIF(MAX(CASE    WHEN field_name = 'user__kv_singer_id_click_58463_15d' THEN field_value END),'') AS user__kv_singer_id_click_58463_15d
        ,NULLIF(
               MAX(CASE    WHEN field_name = 'user__kv_style_tag_id_lv2_click_58463_15d' THEN field_value END)
        ,'') AS user__kv_style_tag_id_lv2_click_58463_15d
        ,NULLIF(MAX(CASE    WHEN field_name = 'user__kv_item_id_play_58463_15d' THEN field_value END),'') AS user__kv_item_id_play_58463_15d
        ,NULLIF(MAX(CASE    WHEN field_name = 'user__kv_singer_id_play_58463_15d' THEN field_value END),'') AS user__kv_singer_id_play_58463_15d
        ,NULLIF(
               MAX(CASE    WHEN field_name = 'user__kv_style_tag_id_lv2_play_58463_15d' THEN field_value END)
        ,'') AS user__kv_style_tag_id_lv2_play_58463_15d
        ,NULLIF(
               MAX(CASE    WHEN field_name = 'user__kv_item_id_valid_play_58463_15d' THEN field_value END)
        ,'') AS user__kv_item_id_valid_play_58463_15d
        ,NULLIF(
               MAX(CASE    WHEN field_name = 'user__kv_singer_id_valid_play_58463_15d' THEN field_value END)
        ,'') AS user__kv_singer_id_valid_play_58463_15d
        ,NULLIF(
               MAX(
                   CASE    WHEN field_name = 'user__kv_style_tag_id_lv2_valid_play_58463_15d' THEN field_value END
               )
        ,'') AS user__kv_style_tag_id_lv2_valid_play_58463_15d
        ,NULLIF(MAX(CASE    WHEN field_name = 'user__kv_item_id_full_play_58463_15d' THEN field_value END),'') AS user__kv_item_id_full_play_58463_15d
        ,NULLIF(
               MAX(CASE    WHEN field_name = 'user__kv_singer_id_full_play_58463_15d' THEN field_value END)
        ,'') AS user__kv_singer_id_full_play_58463_15d
        ,NULLIF(
               MAX(
                   CASE    WHEN field_name = 'user__kv_style_tag_id_lv2_full_play_58463_15d' THEN field_value END
               )
        ,'') AS user__kv_style_tag_id_lv2_full_play_58463_15d
        ,NULLIF(MAX(CASE    WHEN field_name = 'user__kv_item_id_expose_58463_3d' THEN field_value END),'') AS user__kv_item_id_expose_58463_3d
        ,NULLIF(MAX(CASE    WHEN field_name = 'user__kv_singer_id_expose_58463_3d' THEN field_value END),'') AS user__kv_singer_id_expose_58463_3d
        ,NULLIF(
               MAX(CASE    WHEN field_name = 'user__kv_style_tag_id_lv2_expose_58463_3d' THEN field_value END)
        ,'') AS user__kv_style_tag_id_lv2_expose_58463_3d
        ,NULLIF(MAX(CASE    WHEN field_name = 'user__kv_item_id_click_58463_3d' THEN field_value END),'') AS user__kv_item_id_click_58463_3d
        ,NULLIF(MAX(CASE    WHEN field_name = 'user__kv_singer_id_click_58463_3d' THEN field_value END),'') AS user__kv_singer_id_click_58463_3d
        ,NULLIF(
               MAX(CASE    WHEN field_name = 'user__kv_style_tag_id_lv2_click_58463_3d' THEN field_value END)
        ,'') AS user__kv_style_tag_id_lv2_click_58463_3d
        ,NULLIF(MAX(CASE    WHEN field_name = 'user__kv_item_id_play_58463_3d' THEN field_value END),'') AS user__kv_item_id_play_58463_3d
        ,NULLIF(MAX(CASE    WHEN field_name = 'user__kv_singer_id_play_58463_3d' THEN field_value END),'') AS user__kv_singer_id_play_58463_3d
        ,NULLIF(
               MAX(CASE    WHEN field_name = 'user__kv_style_tag_id_lv2_play_58463_3d' THEN field_value END)
        ,'') AS user__kv_style_tag_id_lv2_play_58463_3d
        ,NULLIF(MAX(CASE    WHEN field_name = 'user__kv_item_id_valid_play_58463_3d' THEN field_value END),'') AS user__kv_item_id_valid_play_58463_3d
        ,NULLIF(
               MAX(CASE    WHEN field_name = 'user__kv_singer_id_valid_play_58463_3d' THEN field_value END)
        ,'') AS user__kv_singer_id_valid_play_58463_3d
        ,NULLIF(
               MAX(
                   CASE    WHEN field_name = 'user__kv_style_tag_id_lv2_valid_play_58463_3d' THEN field_value END
               )
        ,'') AS user__kv_style_tag_id_lv2_valid_play_58463_3d
        ,NULLIF(MAX(CASE    WHEN field_name = 'user__kv_item_id_full_play_58463_3d' THEN field_value END),'') AS user__kv_item_id_full_play_58463_3d
        ,NULLIF(
               MAX(CASE    WHEN field_name = 'user__kv_singer_id_full_play_58463_3d' THEN field_value END)
        ,'') AS user__kv_singer_id_full_play_58463_3d
        ,NULLIF(
               MAX(
                   CASE    WHEN field_name = 'user__kv_style_tag_id_lv2_full_play_58463_3d' THEN field_value END
               )
        ,'') AS user__kv_style_tag_id_lv2_full_play_58463_3d
        ,NULLIF(
               MAX(
                   CASE    WHEN field_name = 'user__kv_ratio_item_id_click_expose_58463_30d' THEN field_value END
               )
        ,'') AS user__kv_ratio_item_id_click_expose_58463_30d
        ,NULLIF(
               MAX(
                   CASE    WHEN field_name = 'user__kv_ratio_style_tag_id_lv2_click_expose_58463_30d' THEN field_value END
               )
        ,'') AS user__kv_ratio_style_tag_id_lv2_click_expose_58463_30d
        ,NULLIF(
               MAX(
                   CASE    WHEN field_name = 'user__kv_ratio_singer_id_click_expose_58463_30d' THEN field_value END
               )
        ,'') AS user__kv_ratio_singer_id_click_expose_58463_30d
        ,NULLIF(
               MAX(
                   CASE    WHEN field_name = 'user__kv_ratio_item_id_click_expose_58463_15d' THEN field_value END
               )
        ,'') AS user__kv_ratio_item_id_click_expose_58463_15d
        ,NULLIF(
               MAX(
                   CASE    WHEN field_name = 'user__kv_ratio_style_tag_id_lv2_click_expose_58463_15d' THEN field_value END
               )
        ,'') AS user__kv_ratio_style_tag_id_lv2_click_expose_58463_15d
        ,NULLIF(
               MAX(
                   CASE    WHEN field_name = 'user__kv_ratio_singer_id_click_expose_58463_15d' THEN field_value END
               )
        ,'') AS user__kv_ratio_singer_id_click_expose_58463_15d
        ,NULLIF(
               MAX(
                   CASE    WHEN field_name = 'user__kv_ratio_item_id_click_expose_58463_3d' THEN field_value END
               )
        ,'') AS user__kv_ratio_item_id_click_expose_58463_3d
        ,NULLIF(
               MAX(
                   CASE    WHEN field_name = 'user__kv_ratio_style_tag_id_lv2_click_expose_58463_3d' THEN field_value END
               )
        ,'') AS user__kv_ratio_style_tag_id_lv2_click_expose_58463_3d
        ,NULLIF(
               MAX(
                   CASE    WHEN field_name = 'user__kv_ratio_singer_id_click_expose_58463_3d' THEN field_value END
               )
        ,'') AS user__kv_ratio_singer_id_click_expose_58463_3d
        ,NULLIF(
               MAX(
                   CASE    WHEN field_name = 'user__kv_num_full_play_song_business_model_sum_event_value_58463_30d' THEN field_value END
               )
        ,'') AS user__kv_num_full_play_song_business_model_sum_event_value_58463_30d
        ,CAST(MAX(CASE    WHEN field_name = 'item__cnt_click_58463_30d' THEN field_value END) AS DOUBLE) AS item__cnt_click_58463_30d
        ,CAST(MAX(CASE    WHEN field_name = 'item__cnt_play_58463_30d' THEN field_value END) AS DOUBLE) AS item__cnt_play_58463_30d
        ,CAST(MAX(CASE    WHEN field_name = 'item__cnt_valid_play_58463_30d' THEN field_value END) AS DOUBLE) AS item__cnt_valid_play_58463_30d
        ,CAST(MAX(CASE    WHEN field_name = 'item__cnt_full_play_58463_30d' THEN field_value END) AS DOUBLE) AS item__cnt_full_play_58463_30d
        ,CAST(MAX(CASE    WHEN field_name = 'item__cnt_expose_58463_7d' THEN field_value END) AS DOUBLE) AS item__cnt_expose_58463_7d
        ,CAST(MAX(CASE    WHEN field_name = 'item__cnt_click_58463_7d' THEN field_value END) AS DOUBLE) AS item__cnt_click_58463_7d
        ,CAST(MAX(CASE    WHEN field_name = 'item__cnt_play_58463_7d' THEN field_value END) AS DOUBLE) AS item__cnt_play_58463_7d
        ,CAST(MAX(CASE    WHEN field_name = 'item__cnt_valid_play_58463_7d' THEN field_value END) AS DOUBLE) AS item__cnt_valid_play_58463_7d
        ,CAST(MAX(CASE    WHEN field_name = 'item__cnt_full_play_58463_7d' THEN field_value END) AS DOUBLE) AS item__cnt_full_play_58463_7d
        ,CAST(MAX(CASE    WHEN field_name = 'item__cnt_expose_58463_3d' THEN field_value END) AS DOUBLE) AS item__cnt_expose_58463_3d
        ,CAST(MAX(CASE    WHEN field_name = 'item__cnt_click_58463_3d' THEN field_value END) AS DOUBLE) AS item__cnt_click_58463_3d
        ,CAST(MAX(CASE    WHEN field_name = 'item__cnt_play_58463_3d' THEN field_value END) AS DOUBLE) AS item__cnt_play_58463_3d
        ,CAST(MAX(CASE    WHEN field_name = 'item__cnt_valid_play_58463_3d' THEN field_value END) AS DOUBLE) AS item__cnt_valid_play_58463_3d
        ,CAST(MAX(CASE    WHEN field_name = 'item__cnt_full_play_58463_3d' THEN field_value END) AS DOUBLE) AS item__cnt_full_play_58463_3d
        ,CAST(MAX(CASE    WHEN field_name = 'item__cnt_expose_identity_id_58463_30d' THEN field_value END) AS DOUBLE) AS item__cnt_expose_identity_id_58463_30d
        ,CAST(MAX(CASE    WHEN field_name = 'item__cnt_click_identity_id_58463_30d' THEN field_value END) AS DOUBLE) AS item__cnt_click_identity_id_58463_30d
        ,CAST(MAX(CASE    WHEN field_name = 'item__cnt_play_identity_id_58463_30d' THEN field_value END) AS DOUBLE) AS item__cnt_play_identity_id_58463_30d
        ,CAST(MAX(
            CASE    WHEN field_name = 'item__cnt_valid_play_identity_id_58463_30d' THEN field_value END
        ) AS DOUBLE) AS item__cnt_valid_play_identity_id_58463_30d
        ,CAST(MAX(CASE    WHEN field_name = 'item__cnt_full_play_identity_id_58463_30d' THEN field_value END) AS DOUBLE) AS item__cnt_full_play_identity_id_58463_30d
        ,CAST(MAX(CASE    WHEN field_name = 'item__cnt_expose_identity_id_58463_7d' THEN field_value END) AS DOUBLE) AS item__cnt_expose_identity_id_58463_7d
        ,CAST(MAX(CASE    WHEN field_name = 'item__cnt_click_identity_id_58463_7d' THEN field_value END) AS DOUBLE) AS item__cnt_click_identity_id_58463_7d
        ,CAST(MAX(CASE    WHEN field_name = 'item__cnt_play_identity_id_58463_7d' THEN field_value END) AS DOUBLE) AS item__cnt_play_identity_id_58463_7d
        ,CAST(MAX(CASE    WHEN field_name = 'item__cnt_valid_play_identity_id_58463_7d' THEN field_value END) AS DOUBLE) AS item__cnt_valid_play_identity_id_58463_7d
        ,CAST(MAX(CASE    WHEN field_name = 'item__cnt_full_play_identity_id_58463_7d' THEN field_value END) AS DOUBLE) AS item__cnt_full_play_identity_id_58463_7d
        ,CAST(MAX(CASE    WHEN field_name = 'item__cnt_expose_identity_id_58463_3d' THEN field_value END) AS DOUBLE) AS item__cnt_expose_identity_id_58463_3d
        ,CAST(MAX(CASE    WHEN field_name = 'item__cnt_click_identity_id_58463_3d' THEN field_value END) AS DOUBLE) AS item__cnt_click_identity_id_58463_3d
        ,CAST(MAX(CASE    WHEN field_name = 'item__cnt_play_identity_id_58463_3d' THEN field_value END) AS DOUBLE) AS item__cnt_play_identity_id_58463_3d
        ,CAST(MAX(CASE    WHEN field_name = 'item__cnt_valid_play_identity_id_58463_3d' THEN field_value END) AS DOUBLE) AS item__cnt_valid_play_identity_id_58463_3d
        ,CAST(MAX(CASE    WHEN field_name = 'item__cnt_full_play_identity_id_58463_3d' THEN field_value END) AS DOUBLE) AS item__cnt_full_play_identity_id_58463_3d
        ,CAST(MAX(CASE    WHEN field_name = 'item__ratio_valid_play_play_58463_30d' THEN field_value END) AS DOUBLE) AS item__ratio_valid_play_play_58463_30d
        ,CAST(MAX(CASE    WHEN field_name = 'item__ratio_click_expose_58463_30d' THEN field_value END) AS DOUBLE) AS item__ratio_click_expose_58463_30d
        ,CAST(MAX(CASE    WHEN field_name = 'item__ratio_valid_play_play_58463_7d' THEN field_value END) AS DOUBLE) AS item__ratio_valid_play_play_58463_7d
        ,CAST(MAX(CASE    WHEN field_name = 'item__ratio_click_expose_58463_7d' THEN field_value END) AS DOUBLE) AS item__ratio_click_expose_58463_7d
        ,CAST(MAX(CASE    WHEN field_name = 'item__ratio_valid_play_play_58463_3d' THEN field_value END) AS DOUBLE) AS item__ratio_valid_play_play_58463_3d
        ,CAST(MAX(CASE    WHEN field_name = 'item__ratio_click_expose_58463_3d' THEN field_value END) AS DOUBLE) AS item__ratio_click_expose_58463_3d
        ,CAST(MAX(CASE    WHEN field_name = 'item__cnt_expose_58463_30d' THEN field_value END) AS DOUBLE) AS item__cnt_expose_58463_30d
        ,CAST(MAX(
            CASE    WHEN field_name = 'user__num_play_avg_event_value_daily_recommend_3d' THEN field_value END
        ) AS DOUBLE) AS user__num_play_avg_event_value_daily_recommend_3d
        ,CAST(MAX(
            CASE    WHEN field_name = 'user__ratio_click_expose_daily_recommend_30d' THEN field_value END
        ) AS DOUBLE) AS user__ratio_click_expose_daily_recommend_30d
        ,CAST(MAX(
            CASE    WHEN field_name = 'user__ratio_click_expose_daily_recommend_15d' THEN field_value END
        ) AS DOUBLE) AS user__ratio_click_expose_daily_recommend_15d
        ,CAST(MAX(
            CASE    WHEN field_name = 'user__ratio_click_expose_daily_recommend_3d' THEN field_value END
        ) AS DOUBLE) AS user__ratio_click_expose_daily_recommend_3d
        ,NULLIF(
               MAX(
                   CASE    WHEN field_name = 'user__kv_num_full_play_song_business_model_sum_event_value_daily_recommend_30d' THEN field_value END
               )
        ,'') AS user__kv_num_full_play_song_business_model_sum_event_value_daily_recommend_30d
        ,NULLIF(
               MAX(
                   CASE    WHEN field_name = 'user__kv_num_full_play_song_business_model_sum_event_value_daily_recommend_15d' THEN field_value END
               )
        ,'') AS user__kv_num_full_play_song_business_model_sum_event_value_daily_recommend_15d
        ,NULLIF(
               MAX(
                   CASE    WHEN field_name = 'user__kv_num_full_play_song_business_model_sum_event_value_daily_recommend_3d' THEN field_value END
               )
        ,'') AS user__kv_num_full_play_song_business_model_sum_event_value_daily_recommend_3d
        ,NULLIF(
               MAX(
                   CASE    WHEN field_name = 'user__kv_item_id_expose_daily_recommend_30d' THEN field_value END
               )
        ,'') AS user__kv_item_id_expose_daily_recommend_30d
        ,NULLIF(
               MAX(
                   CASE    WHEN field_name = 'user__kv_singer_id_expose_daily_recommend_30d' THEN field_value END
               )
        ,'') AS user__kv_singer_id_expose_daily_recommend_30d
        ,NULLIF(
               MAX(
                   CASE    WHEN field_name = 'user__kv_style_tag_id_lv2_expose_daily_recommend_30d' THEN field_value END
               )
        ,'') AS user__kv_style_tag_id_lv2_expose_daily_recommend_30d
        ,NULLIF(
               MAX(
                   CASE    WHEN field_name = 'user__kv_item_id_click_daily_recommend_30d' THEN field_value END
               )
        ,'') AS user__kv_item_id_click_daily_recommend_30d
        ,NULLIF(
               MAX(
                   CASE    WHEN field_name = 'user__kv_singer_id_click_daily_recommend_30d' THEN field_value END
               )
        ,'') AS user__kv_singer_id_click_daily_recommend_30d
        ,NULLIF(
               MAX(
                   CASE    WHEN field_name = 'user__kv_style_tag_id_lv2_click_daily_recommend_30d' THEN field_value END
               )
        ,'') AS user__kv_style_tag_id_lv2_click_daily_recommend_30d
        ,NULLIF(
               MAX(CASE    WHEN field_name = 'user__kv_item_id_play_daily_recommend_30d' THEN field_value END)
        ,'') AS user__kv_item_id_play_daily_recommend_30d
        ,NULLIF(
               MAX(
                   CASE    WHEN field_name = 'user__kv_singer_id_play_daily_recommend_30d' THEN field_value END
               )
        ,'') AS user__kv_singer_id_play_daily_recommend_30d
        ,NULLIF(
               MAX(
                   CASE    WHEN field_name = 'user__kv_style_tag_id_lv2_play_daily_recommend_30d' THEN field_value END
               )
        ,'') AS user__kv_style_tag_id_lv2_play_daily_recommend_30d
        ,NULLIF(
               MAX(
                   CASE    WHEN field_name = 'user__kv_item_id_valid_play_daily_recommend_30d' THEN field_value END
               )
        ,'') AS user__kv_item_id_valid_play_daily_recommend_30d
        ,NULLIF(
               MAX(
                   CASE    WHEN field_name = 'user__kv_singer_id_valid_play_daily_recommend_30d' THEN field_value END
               )
        ,'') AS user__kv_singer_id_valid_play_daily_recommend_30d
        ,NULLIF(
               MAX(
                   CASE    WHEN field_name = 'user__kv_style_tag_id_lv2_valid_play_daily_recommend_30d' THEN field_value END
               )
        ,'') AS user__kv_style_tag_id_lv2_valid_play_daily_recommend_30d
        ,NULLIF(
               MAX(
                   CASE    WHEN field_name = 'user__kv_item_id_full_play_daily_recommend_30d' THEN field_value END
               )
        ,'') AS user__kv_item_id_full_play_daily_recommend_30d
        ,NULLIF(
               MAX(
                   CASE    WHEN field_name = 'user__kv_singer_id_full_play_daily_recommend_30d' THEN field_value END
               )
        ,'') AS user__kv_singer_id_full_play_daily_recommend_30d
        ,NULLIF(
               MAX(
                   CASE    WHEN field_name = 'user__kv_style_tag_id_lv2_full_play_daily_recommend_30d' THEN field_value END
               )
        ,'') AS user__kv_style_tag_id_lv2_full_play_daily_recommend_30d
        ,NULLIF(
               MAX(
                   CASE    WHEN field_name = 'user__kv_item_id_expose_daily_recommend_15d' THEN field_value END
               )
        ,'') AS user__kv_item_id_expose_daily_recommend_15d
        ,NULLIF(
               MAX(
                   CASE    WHEN field_name = 'user__kv_singer_id_expose_daily_recommend_15d' THEN field_value END
               )
        ,'') AS user__kv_singer_id_expose_daily_recommend_15d
        ,NULLIF(
               MAX(
                   CASE    WHEN field_name = 'user__kv_style_tag_id_lv2_expose_daily_recommend_15d' THEN field_value END
               )
        ,'') AS user__kv_style_tag_id_lv2_expose_daily_recommend_15d
        ,NULLIF(
               MAX(
                   CASE    WHEN field_name = 'user__kv_item_id_click_daily_recommend_15d' THEN field_value END
               )
        ,'') AS user__kv_item_id_click_daily_recommend_15d
        ,NULLIF(
               MAX(
                   CASE    WHEN field_name = 'user__kv_singer_id_click_daily_recommend_15d' THEN field_value END
               )
        ,'') AS user__kv_singer_id_click_daily_recommend_15d
        ,NULLIF(
               MAX(
                   CASE    WHEN field_name = 'user__kv_style_tag_id_lv2_click_daily_recommend_15d' THEN field_value END
               )
        ,'') AS user__kv_style_tag_id_lv2_click_daily_recommend_15d
        ,NULLIF(
               MAX(CASE    WHEN field_name = 'user__kv_item_id_play_daily_recommend_15d' THEN field_value END)
        ,'') AS user__kv_item_id_play_daily_recommend_15d
        ,NULLIF(
               MAX(
                   CASE    WHEN field_name = 'user__kv_singer_id_play_daily_recommend_15d' THEN field_value END
               )
        ,'') AS user__kv_singer_id_play_daily_recommend_15d
        ,NULLIF(
               MAX(
                   CASE    WHEN field_name = 'user__kv_style_tag_id_lv2_play_daily_recommend_15d' THEN field_value END
               )
        ,'') AS user__kv_style_tag_id_lv2_play_daily_recommend_15d
        ,NULLIF(
               MAX(
                   CASE    WHEN field_name = 'user__kv_item_id_valid_play_daily_recommend_15d' THEN field_value END
               )
        ,'') AS user__kv_item_id_valid_play_daily_recommend_15d
        ,NULLIF(
               MAX(
                   CASE    WHEN field_name = 'user__kv_singer_id_valid_play_daily_recommend_15d' THEN field_value END
               )
        ,'') AS user__kv_singer_id_valid_play_daily_recommend_15d
        ,NULLIF(
               MAX(
                   CASE    WHEN field_name = 'user__kv_style_tag_id_lv2_valid_play_daily_recommend_15d' THEN field_value END
               )
        ,'') AS user__kv_style_tag_id_lv2_valid_play_daily_recommend_15d
        ,NULLIF(
               MAX(
                   CASE    WHEN field_name = 'user__kv_item_id_full_play_daily_recommend_15d' THEN field_value END
               )
        ,'') AS user__kv_item_id_full_play_daily_recommend_15d
        ,NULLIF(
               MAX(
                   CASE    WHEN field_name = 'user__kv_singer_id_full_play_daily_recommend_15d' THEN field_value END
               )
        ,'') AS user__kv_singer_id_full_play_daily_recommend_15d
        ,NULLIF(
               MAX(
                   CASE    WHEN field_name = 'user__kv_style_tag_id_lv2_full_play_daily_recommend_15d' THEN field_value END
               )
        ,'') AS user__kv_style_tag_id_lv2_full_play_daily_recommend_15d
        ,NULLIF(
               MAX(
                   CASE    WHEN field_name = 'user__kv_item_id_expose_daily_recommend_3d' THEN field_value END
               )
        ,'') AS user__kv_item_id_expose_daily_recommend_3d
        ,NULLIF(
               MAX(
                   CASE    WHEN field_name = 'user__kv_singer_id_expose_daily_recommend_3d' THEN field_value END
               )
        ,'') AS user__kv_singer_id_expose_daily_recommend_3d
        ,NULLIF(
               MAX(
                   CASE    WHEN field_name = 'user__kv_style_tag_id_lv2_expose_daily_recommend_3d' THEN field_value END
               )
        ,'') AS user__kv_style_tag_id_lv2_expose_daily_recommend_3d
        ,NULLIF(
               MAX(CASE    WHEN field_name = 'user__kv_item_id_click_daily_recommend_3d' THEN field_value END)
        ,'') AS user__kv_item_id_click_daily_recommend_3d
        ,NULLIF(
               MAX(
                   CASE    WHEN field_name = 'user__kv_singer_id_click_daily_recommend_3d' THEN field_value END
               )
        ,'') AS user__kv_singer_id_click_daily_recommend_3d
        ,NULLIF(
               MAX(
                   CASE    WHEN field_name = 'user__kv_style_tag_id_lv2_click_daily_recommend_3d' THEN field_value END
               )
        ,'') AS user__kv_style_tag_id_lv2_click_daily_recommend_3d
        ,NULLIF(
               MAX(CASE    WHEN field_name = 'user__kv_item_id_play_daily_recommend_3d' THEN field_value END)
        ,'') AS user__kv_item_id_play_daily_recommend_3d
        ,NULLIF(
               MAX(
                   CASE    WHEN field_name = 'user__kv_singer_id_play_daily_recommend_3d' THEN field_value END
               )
        ,'') AS user__kv_singer_id_play_daily_recommend_3d
        ,NULLIF(
               MAX(
                   CASE    WHEN field_name = 'user__kv_style_tag_id_lv2_play_daily_recommend_3d' THEN field_value END
               )
        ,'') AS user__kv_style_tag_id_lv2_play_daily_recommend_3d
        ,NULLIF(
               MAX(
                   CASE    WHEN field_name = 'user__kv_item_id_valid_play_daily_recommend_3d' THEN field_value END
               )
        ,'') AS user__kv_item_id_valid_play_daily_recommend_3d
        ,NULLIF(
               MAX(
                   CASE    WHEN field_name = 'user__kv_singer_id_valid_play_daily_recommend_3d' THEN field_value END
               )
        ,'') AS user__kv_singer_id_valid_play_daily_recommend_3d
        ,NULLIF(
               MAX(
                   CASE    WHEN field_name = 'user__kv_style_tag_id_lv2_valid_play_daily_recommend_3d' THEN field_value END
               )
        ,'') AS user__kv_style_tag_id_lv2_valid_play_daily_recommend_3d
        ,NULLIF(
               MAX(
                   CASE    WHEN field_name = 'user__kv_item_id_full_play_daily_recommend_3d' THEN field_value END
               )
        ,'') AS user__kv_item_id_full_play_daily_recommend_3d
        ,NULLIF(
               MAX(
                   CASE    WHEN field_name = 'user__kv_singer_id_full_play_daily_recommend_3d' THEN field_value END
               )
        ,'') AS user__kv_singer_id_full_play_daily_recommend_3d
        ,NULLIF(
               MAX(
                   CASE    WHEN field_name = 'user__kv_style_tag_id_lv2_full_play_daily_recommend_3d' THEN field_value END
               )
        ,'') AS user__kv_style_tag_id_lv2_full_play_daily_recommend_3d
        ,NULLIF(
               MAX(
                   CASE    WHEN field_name = 'user__kv_ratio_style_tag_id_lv2_click_expose_daily_recommend_30d' THEN field_value END
               )
        ,'') AS user__kv_ratio_style_tag_id_lv2_click_expose_daily_recommend_30d
        ,NULLIF(
               MAX(
                   CASE    WHEN field_name = 'user__kv_ratio_singer_id_click_expose_daily_recommend_30d' THEN field_value END
               )
        ,'') AS user__kv_ratio_singer_id_click_expose_daily_recommend_30d
        ,NULLIF(
               MAX(
                   CASE    WHEN field_name = 'user__kv_ratio_item_id_click_expose_daily_recommend_15d' THEN field_value END
               )
        ,'') AS user__kv_ratio_item_id_click_expose_daily_recommend_15d
        ,NULLIF(
               MAX(
                   CASE    WHEN field_name = 'user__kv_ratio_style_tag_id_lv2_click_expose_daily_recommend_15d' THEN field_value END
               )
        ,'') AS user__kv_ratio_style_tag_id_lv2_click_expose_daily_recommend_15d
        ,NULLIF(
               MAX(
                   CASE    WHEN field_name = 'user__kv_ratio_singer_id_click_expose_daily_recommend_15d' THEN field_value END
               )
        ,'') AS user__kv_ratio_singer_id_click_expose_daily_recommend_15d
        ,NULLIF(
               MAX(
                   CASE    WHEN field_name = 'user__kv_ratio_item_id_click_expose_daily_recommend_3d' THEN field_value END
               )
        ,'') AS user__kv_ratio_item_id_click_expose_daily_recommend_3d
        ,NULLIF(
               MAX(
                   CASE    WHEN field_name = 'user__kv_ratio_style_tag_id_lv2_click_expose_daily_recommend_3d' THEN field_value END
               )
        ,'') AS user__kv_ratio_style_tag_id_lv2_click_expose_daily_recommend_3d
        ,NULLIF(
               MAX(
                   CASE    WHEN field_name = 'user__kv_ratio_singer_id_click_expose_daily_recommend_3d' THEN field_value END
               )
        ,'') AS user__kv_ratio_singer_id_click_expose_daily_recommend_3d
        ,CAST(MAX(
            CASE    WHEN field_name = 'user__num_play_sum_event_value_daily_recommend_30d' THEN field_value END
        ) AS DOUBLE) AS user__num_play_sum_event_value_daily_recommend_30d
        ,CAST(MAX(
            CASE    WHEN field_name = 'user__num_play_sum_event_value_daily_recommend_15d' THEN field_value END
        ) AS DOUBLE) AS user__num_play_sum_event_value_daily_recommend_15d
        ,CAST(MAX(
            CASE    WHEN field_name = 'user__num_play_sum_event_value_daily_recommend_3d' THEN field_value END
        ) AS DOUBLE) AS user__num_play_sum_event_value_daily_recommend_3d
        ,CAST(MAX(
            CASE    WHEN field_name = 'user__num_play_avg_event_value_daily_recommend_30d' THEN field_value END
        ) AS DOUBLE) AS user__num_play_avg_event_value_daily_recommend_30d
        ,CAST(MAX(
            CASE    WHEN field_name = 'user__num_play_avg_event_value_daily_recommend_15d' THEN field_value END
        ) AS DOUBLE) AS user__num_play_avg_event_value_daily_recommend_15d
        ,NULLIF(
               MAX(
                   CASE    WHEN field_name = 'user__kv_ratio_item_id_click_expose_daily_recommend_30d' THEN field_value END
               )
        ,'') AS user__kv_ratio_item_id_click_expose_daily_recommend_30d
        ,CAST(MAX(CASE    WHEN field_name = 'user__cnt_expose_daily_recommend_30d' THEN field_value END) AS BIGINT) AS user__cnt_expose_daily_recommend_30d
        ,CAST(MAX(CASE    WHEN field_name = 'user__cnt_click_daily_recommend_30d' THEN field_value END) AS BIGINT) AS user__cnt_click_daily_recommend_30d
        ,CAST(MAX(CASE    WHEN field_name = 'user__cnt_play_daily_recommend_30d' THEN field_value END) AS BIGINT) AS user__cnt_play_daily_recommend_30d
        ,CAST(MAX(CASE    WHEN field_name = 'user__cnt_valid_play_daily_recommend_30d' THEN field_value END) AS BIGINT) AS user__cnt_valid_play_daily_recommend_30d
        ,CAST(MAX(CASE    WHEN field_name = 'user__cnt_full_play_daily_recommend_30d' THEN field_value END) AS BIGINT) AS user__cnt_full_play_daily_recommend_30d
        ,CAST(MAX(CASE    WHEN field_name = 'user__cnt_expose_daily_recommend_15d' THEN field_value END) AS BIGINT) AS user__cnt_expose_daily_recommend_15d
        ,CAST(MAX(CASE    WHEN field_name = 'user__cnt_click_daily_recommend_15d' THEN field_value END) AS BIGINT) AS user__cnt_click_daily_recommend_15d
        ,CAST(MAX(CASE    WHEN field_name = 'user__cnt_play_daily_recommend_15d' THEN field_value END) AS BIGINT) AS user__cnt_play_daily_recommend_15d
        ,CAST(MAX(CASE    WHEN field_name = 'user__cnt_valid_play_daily_recommend_15d' THEN field_value END) AS BIGINT) AS user__cnt_valid_play_daily_recommend_15d
        ,CAST(MAX(CASE    WHEN field_name = 'user__cnt_full_play_daily_recommend_15d' THEN field_value END) AS BIGINT) AS user__cnt_full_play_daily_recommend_15d
        ,CAST(MAX(CASE    WHEN field_name = 'user__cnt_expose_daily_recommend_3d' THEN field_value END) AS BIGINT) AS user__cnt_expose_daily_recommend_3d
        ,CAST(MAX(CASE    WHEN field_name = 'user__cnt_click_daily_recommend_3d' THEN field_value END) AS BIGINT) AS user__cnt_click_daily_recommend_3d
        ,CAST(MAX(CASE    WHEN field_name = 'user__cnt_play_daily_recommend_3d' THEN field_value END) AS BIGINT) AS user__cnt_play_daily_recommend_3d
        ,CAST(MAX(CASE    WHEN field_name = 'user__cnt_valid_play_daily_recommend_3d' THEN field_value END) AS BIGINT) AS user__cnt_valid_play_daily_recommend_3d
        ,CAST(MAX(CASE    WHEN field_name = 'user__cnt_full_play_daily_recommend_3d' THEN field_value END) AS BIGINT) AS user__cnt_full_play_daily_recommend_3d
        ,CAST(MAX(CASE    WHEN field_name = 'item__cnt_expose_daily_recommend_30d' THEN field_value END) AS BIGINT) AS item__cnt_expose_daily_recommend_30d
        ,CAST(MAX(CASE    WHEN field_name = 'item__cnt_click_daily_recommend_30d' THEN field_value END) AS BIGINT) AS item__cnt_click_daily_recommend_30d
        ,CAST(MAX(CASE    WHEN field_name = 'item__cnt_play_daily_recommend_30d' THEN field_value END) AS BIGINT) AS item__cnt_play_daily_recommend_30d
        ,CAST(MAX(CASE    WHEN field_name = 'item__cnt_valid_play_daily_recommend_30d' THEN field_value END) AS BIGINT) AS item__cnt_valid_play_daily_recommend_30d
        ,CAST(MAX(CASE    WHEN field_name = 'item__cnt_full_play_daily_recommend_30d' THEN field_value END) AS BIGINT) AS item__cnt_full_play_daily_recommend_30d
        ,CAST(MAX(CASE    WHEN field_name = 'item__cnt_expose_daily_recommend_7d' THEN field_value END) AS BIGINT) AS item__cnt_expose_daily_recommend_7d
        ,CAST(MAX(CASE    WHEN field_name = 'item__cnt_click_daily_recommend_7d' THEN field_value END) AS BIGINT) AS item__cnt_click_daily_recommend_7d
        ,CAST(MAX(CASE    WHEN field_name = 'item__cnt_play_daily_recommend_7d' THEN field_value END) AS BIGINT) AS item__cnt_play_daily_recommend_7d
        ,CAST(MAX(CASE    WHEN field_name = 'item__cnt_valid_play_daily_recommend_7d' THEN field_value END) AS BIGINT) AS item__cnt_valid_play_daily_recommend_7d
        ,CAST(MAX(CASE    WHEN field_name = 'item__cnt_full_play_daily_recommend_7d' THEN field_value END) AS BIGINT) AS item__cnt_full_play_daily_recommend_7d
        ,CAST(MAX(CASE    WHEN field_name = 'item__cnt_expose_daily_recommend_3d' THEN field_value END) AS BIGINT) AS item__cnt_expose_daily_recommend_3d
        ,CAST(MAX(CASE    WHEN field_name = 'item__cnt_click_daily_recommend_3d' THEN field_value END) AS BIGINT) AS item__cnt_click_daily_recommend_3d
        ,CAST(MAX(CASE    WHEN field_name = 'item__cnt_play_daily_recommend_3d' THEN field_value END) AS BIGINT) AS item__cnt_play_daily_recommend_3d
        ,CAST(MAX(CASE    WHEN field_name = 'item__cnt_valid_play_daily_recommend_3d' THEN field_value END) AS BIGINT) AS item__cnt_valid_play_daily_recommend_3d
        ,CAST(MAX(CASE    WHEN field_name = 'item__cnt_full_play_daily_recommend_3d' THEN field_value END) AS BIGINT) AS item__cnt_full_play_daily_recommend_3d
        ,CAST(MAX(
            CASE    WHEN field_name = 'item__cnt_expose_identity_id_daily_recommend_30d' THEN field_value END
        ) AS BIGINT) AS item__cnt_expose_identity_id_daily_recommend_30d
        ,CAST(MAX(
            CASE    WHEN field_name = 'item__cnt_click_identity_id_daily_recommend_30d' THEN field_value END
        ) AS BIGINT) AS item__cnt_click_identity_id_daily_recommend_30d
        ,CAST(MAX(
            CASE    WHEN field_name = 'item__cnt_play_identity_id_daily_recommend_30d' THEN field_value END
        ) AS BIGINT) AS item__cnt_play_identity_id_daily_recommend_30d
        ,CAST(MAX(
            CASE    WHEN field_name = 'item__cnt_valid_play_identity_id_daily_recommend_30d' THEN field_value END
        ) AS BIGINT) AS item__cnt_valid_play_identity_id_daily_recommend_30d
        ,CAST(MAX(
            CASE    WHEN field_name = 'item__cnt_full_play_identity_id_daily_recommend_30d' THEN field_value END
        ) AS BIGINT) AS item__cnt_full_play_identity_id_daily_recommend_30d
        ,CAST(MAX(
            CASE    WHEN field_name = 'item__cnt_expose_identity_id_daily_recommend_7d' THEN field_value END
        ) AS BIGINT) AS item__cnt_expose_identity_id_daily_recommend_7d
        ,CAST(MAX(
            CASE    WHEN field_name = 'item__cnt_click_identity_id_daily_recommend_7d' THEN field_value END
        ) AS BIGINT) AS item__cnt_click_identity_id_daily_recommend_7d
        ,CAST(MAX(
            CASE    WHEN field_name = 'item__cnt_play_identity_id_daily_recommend_7d' THEN field_value END
        ) AS BIGINT) AS item__cnt_play_identity_id_daily_recommend_7d
        ,CAST(MAX(
            CASE    WHEN field_name = 'item__cnt_valid_play_identity_id_daily_recommend_7d' THEN field_value END
        ) AS BIGINT) AS item__cnt_valid_play_identity_id_daily_recommend_7d
        ,CAST(MAX(
            CASE    WHEN field_name = 'item__cnt_full_play_identity_id_daily_recommend_7d' THEN field_value END
        ) AS BIGINT) AS item__cnt_full_play_identity_id_daily_recommend_7d
        ,CAST(MAX(
            CASE    WHEN field_name = 'item__cnt_expose_identity_id_daily_recommend_3d' THEN field_value END
        ) AS BIGINT) AS item__cnt_expose_identity_id_daily_recommend_3d
        ,CAST(MAX(
            CASE    WHEN field_name = 'item__cnt_click_identity_id_daily_recommend_3d' THEN field_value END
        ) AS BIGINT) AS item__cnt_click_identity_id_daily_recommend_3d
        ,CAST(MAX(
            CASE    WHEN field_name = 'item__cnt_play_identity_id_daily_recommend_3d' THEN field_value END
        ) AS BIGINT) AS item__cnt_play_identity_id_daily_recommend_3d
        ,CAST(MAX(
            CASE    WHEN field_name = 'item__cnt_valid_play_identity_id_daily_recommend_3d' THEN field_value END
        ) AS BIGINT) AS item__cnt_valid_play_identity_id_daily_recommend_3d
        ,CAST(MAX(
            CASE    WHEN field_name = 'item__cnt_full_play_identity_id_daily_recommend_3d' THEN field_value END
        ) AS BIGINT) AS item__cnt_full_play_identity_id_daily_recommend_3d
        ,CAST(MAX(
            CASE    WHEN field_name = 'item__ratio_valid_play_play_daily_recommend_30d' THEN field_value END
        ) AS DOUBLE) AS item__ratio_valid_play_play_daily_recommend_30d
        ,CAST(MAX(
            CASE    WHEN field_name = 'item__ratio_click_expose_daily_recommend_30d' THEN field_value END
        ) AS DOUBLE) AS item__ratio_click_expose_daily_recommend_30d
        ,CAST(MAX(
            CASE    WHEN field_name = 'item__ratio_valid_play_play_daily_recommend_7d' THEN field_value END
        ) AS DOUBLE) AS item__ratio_valid_play_play_daily_recommend_7d
        ,CAST(MAX(
            CASE    WHEN field_name = 'item__ratio_click_expose_daily_recommend_7d' THEN field_value END
        ) AS DOUBLE) AS item__ratio_click_expose_daily_recommend_7d
        ,CAST(MAX(
            CASE    WHEN field_name = 'item__ratio_valid_play_play_daily_recommend_3d' THEN field_value END
        ) AS DOUBLE) AS item__ratio_valid_play_play_daily_recommend_3d
        ,CAST(MAX(
            CASE    WHEN field_name = 'item__ratio_click_expose_daily_recommend_3d' THEN field_value END
        ) AS DOUBLE) AS item__ratio_click_expose_daily_recommend_3d
FROM    temp03
GROUP BY request_id
         ,request_time
         ,identity_id
         ,item_id
         ,event_scene_id
;
ALTER TABLE callback_datahub_ghost_corrected_raw_feat PARTITION (p_date = '${bdp.system.bizdate}') MERGE SMALLFILES
;





