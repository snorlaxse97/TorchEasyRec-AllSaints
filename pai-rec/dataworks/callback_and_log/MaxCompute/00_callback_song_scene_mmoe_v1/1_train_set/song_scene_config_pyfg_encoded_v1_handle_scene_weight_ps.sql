--odps sql 
--********************************************************************--
--author:吴一鸣
--create time:2026-04-16 12:01:58
--********************************************************************--
CREATE TABLE IF NOT EXISTS dws_rec.song_scene_config_pyfg_encoded_v1_handle_scene_weight_ps LIKE dws_rec.song_scene_config_pyfg_encoded_v1_handle_scene_weight
LIFECYCLE 30
;

INSERT OVERWRITE TABLE dws_rec.song_scene_config_pyfg_encoded_v1_handle_scene_weight_ps PARTITION (p_date = '${bdp.system.bizdate}')
SELECT  `(p_date)?+.+` -- 选择除了p_date外的所有字段
FROM    dws_rec.song_scene_config_pyfg_encoded_v1_handle_scene_weight
WHERE   p_date = '${bdp.system.bizdate}'
AND     event_scene_id[0] = 'personalSong'
;
