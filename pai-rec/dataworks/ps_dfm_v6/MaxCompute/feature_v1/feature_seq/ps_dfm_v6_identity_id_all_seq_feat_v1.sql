CREATE TABLE IF NOT EXISTS ps_dfm_v6_identity_id_all_seq_feat_v1
(
    identity_id                           STRING
    ,event_unix_time                      BIGINT
    ,request_id                           STRING
    ,valid_play_100_seq__item_id          STRING
    ,valid_play_100_seq__style_tag_id_lv2 STRING
    ,valid_play_100_seq__singer_id        STRING
    ,valid_play_100_seq__lyric_writer     STRING
    ,valid_play_100_seq__ts               STRING
    ,full_play_100_seq__item_id           STRING
    ,full_play_100_seq__singer_id         STRING
    ,full_play_100_seq__lyric_writer      STRING
    ,full_play_100_seq__style_tag_id_lv2  STRING
    ,full_play_100_seq__ts                STRING
)
PARTITIONED BY 
(
    p_date                                STRING
)
LIFECYCLE 60
;

INSERT OVERWRITE TABLE ps_dfm_v6_identity_id_all_seq_feat_v1 PARTITION (p_date = '${bdp.system.bizdate}')
SELECT  sq0.identity_id
        ,sq0.event_unix_time
        ,sq0.request_id
        ,SINGLE_SEQ_REPLENISH(sq0.user_valid_play_100_seq__item_id,sq1.valid_play_100_seq__item_id,sq0.user_valid_play_100_seq__item_id,sq1.valid_play_100_seq__item_id,0,';',100) valid_play_100_seq__item_id
        ,SINGLE_SEQ_REPLENISH(sq0.user_valid_play_100_seq__style_tag_id_lv2,sq1.valid_play_100_seq__style_tag_id_lv2,sq0.user_valid_play_100_seq__item_id,sq1.valid_play_100_seq__item_id,0,';',100) valid_play_100_seq__style_tag_id_lv2
        ,SINGLE_SEQ_REPLENISH(sq0.user_valid_play_100_seq__singer_id,sq1.valid_play_100_seq__singer_id,sq0.user_valid_play_100_seq__item_id,sq1.valid_play_100_seq__item_id,0,';',100) valid_play_100_seq__singer_id
        ,SINGLE_SEQ_REPLENISH(sq0.user_valid_play_100_seq__lyric_writer,sq1.valid_play_100_seq__lyric_writer,sq0.user_valid_play_100_seq__item_id,sq1.valid_play_100_seq__item_id,0,';',100) valid_play_100_seq__lyric_writer
        ,SINGLE_SEQ_REPLENISH(sq0.user_valid_play_100_seq__ts,sq1.valid_play_100_seq__ts,sq0.user_valid_play_100_seq__item_id,sq1.valid_play_100_seq__item_id,sq0.event_unix_time,';',100) valid_play_100_seq__ts
        ,SINGLE_SEQ_REPLENISH(sq0.user_full_play_100_seq__item_id,sq1.full_play_100_seq__item_id,sq0.user_full_play_100_seq__item_id,sq1.full_play_100_seq__item_id,0,';',100) full_play_100_seq__item_id
        ,SINGLE_SEQ_REPLENISH(sq0.user_full_play_100_seq__singer_id,sq1.full_play_100_seq__singer_id,sq0.user_full_play_100_seq__item_id,sq1.full_play_100_seq__item_id,0,';',100) full_play_100_seq__singer_id
        ,SINGLE_SEQ_REPLENISH(sq0.user_full_play_100_seq__lyric_writer,sq1.full_play_100_seq__lyric_writer,sq0.user_full_play_100_seq__item_id,sq1.full_play_100_seq__item_id,0,';',100) full_play_100_seq__lyric_writer
        ,SINGLE_SEQ_REPLENISH(sq0.user_full_play_100_seq__style_tag_id_lv2,sq1.full_play_100_seq__style_tag_id_lv2,sq0.user_full_play_100_seq__item_id,sq1.full_play_100_seq__item_id,0,';',100) full_play_100_seq__style_tag_id_lv2
        ,SINGLE_SEQ_REPLENISH(sq0.user_full_play_100_seq__ts,sq1.full_play_100_seq__ts,sq0.user_full_play_100_seq__item_id,sq1.full_play_100_seq__item_id,sq0.event_unix_time,';',100) full_play_100_seq__ts
FROM    (
            SELECT  *
            FROM    ps_dfm_v6_identity_id_t_seq_v1
            WHERE   p_date = '${bdp.system.bizdate}'
        ) sq0
LEFT JOIN   (
                SELECT  *
                FROM    ps_dfm_v6_identity_id_pre_t_seq_v1
                WHERE   p_date = '${bdp.system.bizdate}'
            ) sq1
ON      sq0.identity_id = sq1.identity_id
;