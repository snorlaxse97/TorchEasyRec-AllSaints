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
    'cpu':7,
    "disk": 100,
    'gateway': 'default',
    "instance": 2,
    'memory': 28000,
    "gpu_core_percentage": 30,
    "gpu_memory": 7,
    'resource': 'eas-r-f36efml7f73x3nrten',
    'rpc.max_queue_size': 256,
    'rpc.enable_jemalloc': 1,
    "resource_burstable": True,
    "resource_rebalancing": True,
    "rolling_strategy": {
        "max_unavailable": 0
    }  
  },
  "cloud": {
        "computing": {
            "instances": [
                {
                    "type": "ecs.gn8is.4xlarge"
                }
            ]
        }
    },
  "model_path": "",
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
    },
    {
        "mount_path": "/warmup",
        "oss": {
            "path": "oss://prd-pai-rec/EasyRec/deploy/song_scene_v2/song_scene_pb_file_path",
            "readOnly": False
        }
    }
  ],
  'model_config': {
    "warmup_data_path": "/warmup",  
    "warmup_cnt_per_file": 20, 
    "warmup_pb_files_count": 64, 
    "long_request_threshold": 200,
    "save_long_request": True,
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
  'processor': 'easyrec-torch-1.12'
}

with open('echo.json', 'w') as output_file:
    json.dump(config, output_file)

# os.system(f'wget https://eas-data.oss-cn-shanghai.aliyuncs.com/tools/eascmd/v2/eascmd64')
# os.system(f'chmod +x eascmd64')
os.system(f'/home/admin/usertools/tools/eascmd64 -i {o.account.access_id} -k {o.account.secret_access_key} -t {sts_token} -e pai-eas-manage-vpc.cn-shenzhen.aliyuncs.com modify {service_name} -s echo.json')
