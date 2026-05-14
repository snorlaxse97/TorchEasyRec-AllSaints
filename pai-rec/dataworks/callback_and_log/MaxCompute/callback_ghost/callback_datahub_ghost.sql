CREATE TABLE IF NOT EXISTS callback_datahub_ghost (
  request_id           STRING,
  module               STRING,
  scene                STRING,
  request_time         BIGINT,
  user_features        STRING,
  item_features        STRING,
  request_info         STRING,
  user_id              STRING,
  item_id              STRING,
  raw_features         STRING,
  generate_features    STRING,
  context_features     STRING,
  __rowkey__           STRING
)
PARTITIONED BY 
(
    ds             STRING 
);