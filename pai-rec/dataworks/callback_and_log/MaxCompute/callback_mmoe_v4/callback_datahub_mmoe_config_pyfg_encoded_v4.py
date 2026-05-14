from pyfg055 import offline_pyfg
offline_pyfg.run(
  o,
  input_table="callback_datahub_mmoe_v4_training_set",
  output_table="callback_datahub_mmoe_config_pyfg_encoded_v4",
  fg_json_file="mmd_mmoe_v1_mmoe_config_fg_v4.json",
  partition_value=args['bizdate']
)