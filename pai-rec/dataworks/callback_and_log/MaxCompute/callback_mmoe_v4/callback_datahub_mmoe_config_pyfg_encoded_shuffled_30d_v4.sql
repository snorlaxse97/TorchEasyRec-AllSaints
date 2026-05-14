CREATE TABLE IF NOT EXISTS callback_datahub_mmoe_config_pyfg_encoded_shuffled_30d_v4 LIKE callback_datahub_mmoe_config_pyfg_encoded_v4
LIFECYCLE 30
;

INSERT OVERWRITE TABLE dws_rec.callback_datahub_mmoe_config_pyfg_encoded_shuffled_30d_v4 PARTITION (p_date = '${bdp.system.bizdate}')
SELECT  `(p_date)?+.+` -- 选择除了p_date外的所有字段
FROM    dws_rec.callback_datahub_mmoe_config_pyfg_encoded_v4
WHERE   p_date > TO_CHAR(DATEADD(TO_DATE('${bdp.system.bizdate}','yyyymmdd'),-30,'dd'),'yyyymmdd')
AND     p_date <= '${bdp.system.bizdate}'
DISTRIBUTE BY RAND()
SORT BY RAND()
;