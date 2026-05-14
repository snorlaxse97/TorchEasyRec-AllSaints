CREATE TABLE IF NOT EXISTS common_feat_dim_rec_item_song_info_dfp_1001_preprocess
(
    item_id              STRING
    ,singer_id           STRING
    ,composer            STRING
    ,lyric_writer        STRING
    ,language_tag_id_lv2 STRING
    ,language_tag_id_lv3 STRING
    ,style_tag_id_lv2    STRING
    ,style_tag_id_lv3    STRING
    ,age_tag_id_lv2      STRING
    ,age_tag_id_lv3      STRING
    ,song_business_model STRING
    ,song_length         DOUBLE
    ,song_name_purified  STRING
    ,item_publish_time   BIGINT COMMENT 'item侧publish_date距今多天'
)
PARTITIONED BY 
(
    p_date               STRING
)
LIFECYCLE 100
;

INSERT OVERWRITE TABLE common_feat_dim_rec_item_song_info_dfp_1001_preprocess PARTITION (p_date = '${bdp.system.bizdate}')
SELECT  item_id
        ,REGEXP_REPLACE(singer_id,',',CHR(29)) singer_id
        ,REGEXP_REPLACE(composer,',',CHR(29)) composer
        ,REGEXP_REPLACE(lyric_writer,',',CHR(29)) lyric_writer
        ,REGEXP_REPLACE(language_tag_id_lv2,',',CHR(29)) language_tag_id_lv2
        ,REGEXP_REPLACE(language_tag_id_lv3,',',CHR(29)) language_tag_id_lv3
        ,REGEXP_REPLACE(style_tag_id_lv2,',',CHR(29)) style_tag_id_lv2
        ,REGEXP_REPLACE(style_tag_id_lv3,',',CHR(29)) style_tag_id_lv3
        ,REGEXP_REPLACE(age_tag_id_lv2,',',CHR(29)) age_tag_id_lv2
        ,REGEXP_REPLACE(age_tag_id_lv3,',',CHR(29)) age_tag_id_lv3
        ,song_business_model
        ,song_length
        ,song_name_purified
        ,DATEDIFF(TO_DATE('${bdp.system.bizdate}','yyyymmdd'),FROM_UNIXTIME(publish_date),'dd') item_publish_time
FROM    dws_rec.dim_rec_item_song_info_dfp_1001
WHERE   p_date = '${bdp.system.bizdate}'
;