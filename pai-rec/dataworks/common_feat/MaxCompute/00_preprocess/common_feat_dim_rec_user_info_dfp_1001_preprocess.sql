CREATE TABLE IF NOT EXISTS common_feat_dim_rec_user_info_dfp_1001_preprocess
(
    identity_id               STRING
    ,user_type                BIGINT
    ,terminal_model           STRING
    ,age_group                BIGINT
    ,gender                   BIGINT
    ,music_vip_type           BIGINT
    ,used_competitors_last_7d STRING
    ,province                 STRING
    ,city                     STRING
    ,user_register_date       BIGINT COMMENT 'user侧register_date距今多天'
)
PARTITIONED BY 
(
    p_date                    STRING
)
LIFECYCLE 100
;

INSERT OVERWRITE TABLE common_feat_dim_rec_user_info_dfp_1001_preprocess PARTITION (p_date = '${bdp.system.bizdate}')
SELECT  identity_id
        ,user_type
        ,terminal_model
        ,age_group
        ,gender
        ,music_vip_type
        ,REGEXP_REPLACE(used_competitors_last_7d,',',CHR(29)) used_competitors_last_7d
        ,province
        ,city
        ,DATEDIFF(TO_DATE('${bdp.system.bizdate}','yyyymmdd'),FROM_UNIXTIME(register_date),'dd') user_register_date
FROM    dws_rec.dim_rec_user_info_dfp_1001
WHERE   p_date = '${bdp.system.bizdate}'
;