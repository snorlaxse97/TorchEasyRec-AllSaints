CREATE TABLE IF NOT EXISTS song_scene_config_pyfg_encoded_shuffled_30d_v1 LIKE song_scene_config_pyfg_encoded_v1_handle_scene_weight
LIFECYCLE 30
;

INSERT OVERWRITE TABLE song_scene_config_pyfg_encoded_shuffled_30d_v1 PARTITION (p_date = '${bdp.system.bizdate}')
SELECT  `(p_date)?+.+` -- 选择除了p_date外的所有字段
FROM    song_scene_config_pyfg_encoded_v1_handle_scene_weight
WHERE   p_date > TO_CHAR(DATEADD(TO_DATE('${bdp.system.bizdate}','yyyymmdd'),-30,'dd'),'yyyymmdd')
AND     p_date <= '${bdp.system.bizdate}'
DISTRIBUTE BY RAND()
SORT BY RAND()
;

