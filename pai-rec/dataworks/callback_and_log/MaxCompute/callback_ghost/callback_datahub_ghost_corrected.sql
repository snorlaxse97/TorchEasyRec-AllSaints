CREATE TABLE IF NOT EXISTS dws_rec.callback_datahub_ghost_corrected
(
    request_id         STRING
    ,module            STRING
    ,scene             STRING
    ,request_time      BIGINT
    ,user_features     STRING
    ,item_features     STRING
    ,request_info      STRING
    ,user_id           STRING
    ,item_id           STRING
    ,raw_features      STRING
    ,generate_features STRING
    ,context_features  STRING
    ,__rowkey__        STRING
)
PARTITIONED BY 
(
    ds                 STRING
)
;

-- 调整原因：datahub存在延迟消费导致错误分区的可能（datahub分区依据为数据写入datahub的系统时间），需调整时间分区
-- 每日修正节点（可选择凌晨04:00执行）
-- 业务日期：${bizdate} = 昨天日期
-- 处理逻辑：正确获取请求时间属于T-1日分区的数据，即从原表中T-1日和T日的分区中取出属于T-1日的数据，插入到修正表的T-1日分区
INSERT OVERWRITE TABLE dws_rec.callback_datahub_ghost_corrected PARTITION (ds = '${bizdate}')
SELECT  request_id
        ,module
        ,scene
        ,request_time
        ,user_features
        ,item_features
        ,request_info
        ,user_id
        ,item_id
        ,raw_features
        ,generate_features
        ,context_features
        ,__rowkey__
FROM    dws_rec.callback_datahub_ghost
WHERE   ds >= '${bizdate}'
AND     ds <= TO_CHAR(DATEADD(TO_DATE('${bizdate}','yyyymmdd'),1,'dd'),'yyyymmdd')
AND     TO_CHAR(FROM_UNIXTIME(request_time),'yyyymmdd') = '${bizdate}'      -- callback中的请求时间为秒级别
;




