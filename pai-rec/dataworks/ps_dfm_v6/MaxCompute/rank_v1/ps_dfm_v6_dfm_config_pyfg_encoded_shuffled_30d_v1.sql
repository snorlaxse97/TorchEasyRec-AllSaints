CREATE TABLE IF NOT EXISTS ps_dfm_v6_dfm_config_pyfg_encoded_shuffled_30d_v1 LIKE ps_dfm_v6_dfm_config_pyfg_encoded_v1
LIFECYCLE 30
;

INSERT OVERWRITE TABLE ps_dfm_v6_dfm_config_pyfg_encoded_shuffled_30d_v1 PARTITION (p_date = '${bdp.system.bizdate}')
SELECT  `(p_date)?+.+`
FROM    ps_dfm_v6_dfm_config_pyfg_encoded_v1
WHERE   p_date > TO_CHAR(DATEADD(TO_DATE('${bdp.system.bizdate}','yyyymmdd'),-30,'dd'),'yyyymmdd')
AND     p_date <= '${bdp.system.bizdate}'
DISTRIBUTE BY RAND()
SORT BY RAND()
;