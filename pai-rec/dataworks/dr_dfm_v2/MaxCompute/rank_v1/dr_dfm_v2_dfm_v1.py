from feature_store_py.fs_client import FeatureStoreClient
from feature_store_py.fs_project import FeatureStoreProject
from feature_store_py.fs_datasource import LabelInput, MaxComputeDataSource, TrainingSetOutput
from feature_store_py.fs_features import FeatureSelector
from feature_store_py.fs_config import LabelInputConfig, PartitionConfig, FeatureViewConfig
from feature_store_py.fs_config import TrainSetOutputConfig, EASDeployConfig
import datetime
import sys
from odps.accounts import StsAccount

cur_day = args['dt']
print('cur_day = ', cur_day)
offset = datetime.timedelta(days=-1)
pre_day = (datetime.datetime.strptime(cur_day, "%Y%m%d") + offset).strftime('%Y%m%d')
print('pre_day = ', pre_day)

access_key_id = o.account.access_id
access_key_secret = o.account.secret_access_key
sts_token = None
if isinstance(o.account, StsAccount):
    sts_token = o.account.sts_token
endpoint = 'paifeaturestore-vpc.cn-shenzhen.aliyuncs.com'
fs = FeatureStoreClient(access_key_id=access_key_id, access_key_secret=access_key_secret, security_token=sts_token, endpoint=endpoint)
cur_project_name = 'prd_fs'
project = fs.get_project(cur_project_name)
if project is None:
    raise ValueError("feature store project is None, need to create featore store project in PAI.")
user_feature_view = project.get_feature_view('dr_dfm_v2_dim_rec_user_info_dfp_1001_all_feat_v1')
if user_feature_view is None:
    ds = MaxComputeDataSource(data_source_id=project.offline_datasource_id, table='dr_dfm_v2_dim_rec_user_info_dfp_1001_all_feat_v1')
    user_feature_view = project.create_batch_feature_view(name='dr_dfm_v2_dim_rec_user_info_dfp_1001_all_feat_v1', datasource=ds, online=True, entity='user', primary_key='identity_id', register=True)
item_feature_view = project.get_feature_view('dr_dfm_v2_dim_rec_item_song_info_dfp_1001_all_feat_v1')
if item_feature_view is None:
    ds = MaxComputeDataSource(data_source_id=project.offline_datasource_id, table='dr_dfm_v2_dim_rec_item_song_info_dfp_1001_all_feat_v1')
    item_feature_view = project.create_batch_feature_view(name='dr_dfm_v2_dim_rec_item_song_info_dfp_1001_all_feat_v1', datasource=ds, online=True, entity='item', primary_key='item_id', register=True)
sequence_feature_view = project.get_feature_view('dr_dfm_v2_identity_id_all_seq_feat_v1')
if sequence_feature_view is None:
    raise ValueError("sequence_feature_view is None, please run feature_view_create_sync script to create feature view.")

label_partitions = PartitionConfig(name = 'p_date', value = cur_day)
label_input_config = LabelInputConfig(partition_config=label_partitions)

user_partitions = PartitionConfig(name = 'p_date', value = pre_day)
feature_view_user_config = FeatureViewConfig(name = 'dr_dfm_v2_dim_rec_user_info_dfp_1001_all_feat_v1', partition_config=user_partitions)

item_partitions = PartitionConfig(name = 'p_date', value = pre_day)
feature_view_item_config = FeatureViewConfig(name = 'dr_dfm_v2_dim_rec_item_song_info_dfp_1001_all_feat_v1', partition_config=item_partitions)

seq_partitions = PartitionConfig(name = 'p_date', value = cur_day)
feature_view_seq_config = FeatureViewConfig(name = 'dr_dfm_v2_identity_id_all_seq_feat_v1', partition_config=seq_partitions, event_time='request_id', equal=True)
feature_view_config_list = [feature_view_user_config, feature_view_item_config, feature_view_seq_config]
train_set_partitions = PartitionConfig(name = 'p_date', value = cur_day)
train_set_output_config = TrainSetOutputConfig(partition_config=train_set_partitions)

model_name = 'dr_dfm_v2_dfm_v1'
cur_model = project.get_model(model_name)
if cur_model is None:
    print("start create model")
    output_ds = MaxComputeDataSource(data_source_id=project.offline_datasource_id)
    train_set_output = TrainingSetOutput(output_ds)
    label_table = project.get_label_table('dr_dfm_v2_dfm_label_table_v1')
    if label_table is None:
        print("start create label table")
        label_ds = MaxComputeDataSource(data_source_id=project.offline_datasource_id, table = 'dr_dfm_v2_dfm_label_table_v1')
        label_table = project.create_label_table(label_ds, event_time='request_id')
    user_fea_list = FeatureSelector('dr_dfm_v2_dim_rec_user_info_dfp_1001_all_feat_v1', '*')
    item_fea_list = FeatureSelector('dr_dfm_v2_dim_rec_item_song_info_dfp_1001_all_feat_v1', '*')
    seq_fea_list = FeatureSelector('dr_dfm_v2_identity_id_all_seq_feat_v1', '*')
    feature_select_list = [user_fea_list, item_fea_list, seq_fea_list]
    train_set = project.create_training_set(train_set_output=train_set_output, feature_selectors=feature_select_list, label_table_name='dr_dfm_v2_dfm_label_table_v1')
    # 如果是 label 表优先，即特征优先从 label 表取，则设置 label_priority_level 为 1.
    # 如果是特征视图优先，即特征优先从特征视图取，则设置  label_priority_level 为 2.
    cur_model = project.create_model(model_name, train_set, label_priority_level=1)
task = cur_model.export_train_set(label_input_config, feature_view_config_list, train_set_output_config)
task.wait()
task.print_summary()