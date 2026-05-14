from pyfg055 import offline_pyfg
offline_pyfg.run(
  o,
  input_table="prd_fs_ps_dfm_v6_dfm_v1_training_set",
  output_table="ps_dfm_v6_dfm_config_pyfg_encoded_v1",
  fg_json_file="ps_dfm_v6_dfm_config_fg_v1.json",
  partition_value=args['bizdate']
)