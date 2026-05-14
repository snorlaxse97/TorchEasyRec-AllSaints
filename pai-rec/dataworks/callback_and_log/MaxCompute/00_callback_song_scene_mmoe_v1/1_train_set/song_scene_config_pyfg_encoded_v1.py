from pyfg055 import offline_pyfg
offline_pyfg.run(
  o,
  input_table="song_scene_trainning_set_v1",
  output_table="song_scene_config_pyfg_encoded_v1",
  fg_json_file="song_scene_config_fg.json",
  partition_value=args['bizdate']
)