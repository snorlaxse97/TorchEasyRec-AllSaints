import json
import os
from odps.accounts import StsAccount

service_name = 'song_scene_v2'

sts_token = None
if isinstance(o.account, StsAccount):
    sts_token = o.account.sts_token

config = {
  'name': service_name,
  'token': 'NTliMjg2MWMxNDc2NmE4YTI4NjkwNjg5ZjcxMTQ2YTg2MWRjY2IzMA==',
  'metadata': {
    'cpu':5,
    "gpu_core_percentage": 30,
    "gpu_memory": 7,
    'rpc.max_queue_size': 256,
    'rpc.enable_jemalloc': 1,
    'gateway': 'default',
    'memory': 38000,
    'resource': 'eas-r-f36efml7f73x3nrten'
  },
  'storage': [
    {
      'mount_path': '/home/admin/docker_ml/workspace/model/',
      'oss': {
        'path': f"oss://prd-pai-rec/EasyRec/deploy/song_scene_v2/{args['ymd']}/export/final_with_fg",
        'readOnly': False
      },
      'properties': {
        'resource_type': 'code'
      }
    }
  ],
  'model_config': {
    'outputs': 'probs_mmd_is_valid,probs_mmd_is_full,probs_mmd_play_duration,probs_ps_is_click,probs_ps_is_valid,probs_ps_is_full,probs_ps_play_duration,probs_dr_is_click,probs_dr_is_valid,probs_dr_is_full,probs_dr_play_duration',
    'storage_api_quota_name': 'pay-as-you-go',
    'fg_mode': 'normal',
    'steady_mode': True,
    'period': 2880,
    'access_key_id': f'{o.account.access_id}',
    'access_key_secret': f'{o.account.secret_access_key}',
    'security_token': f'{sts_token}',
    'region': 'cn-shenzhen',
    'fs_project': 'prd_fs',
    'fs_model': 'Ghost_Model',
    'fs_entity': 'item',
    'featuredb_username': 'featureuser',
    'featuredb_password': 'as*20250410!@#',
    'load_feature_from_offlinestore': True
  },
  'processor': 'easyrec-torch-1.2'
}

with open('echo.json', 'w') as output_file:
    json.dump(config, output_file)

# os.system(f'wget https://eas-data.oss-cn-shanghai.aliyuncs.com/tools/eascmd/v2/eascmd64')
# os.system(f'chmod +x eascmd64')
os.system(f'/home/admin/usertools/tools/eascmd64 -i {o.account.access_id} -k {o.account.secret_access_key} -t {sts_token} -e pai-eas-manage-vpc.cn-shenzhen.aliyuncs.com create echo.json')
    