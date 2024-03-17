conda activate CartiMorphToolbox-Vxm

export LD_LIBRARY_PATH="[path/to]/anaconda3/envs/CartiMorphToolbox-Vxm/lib/python3.10/site-packages/nvidia/cublas/lib:[path/to]/anaconda3/envs/CartiMorphToolbox-Vxm/lib/python3.10/site-packages/nvidia/cudnn/lib:$LD_LIBRARY_PATH"

# [Folders] 
export dir_scripts='[path/to]/anaconda3/envs/CartiMorphToolbox-Vxm/lib/python3.10/site-packages/CartiMorph_vxm/tf/scripts'
export dir_model='[CMT-folder]/Models_training/VoxelMorph/vxm_models/Task[ID]_[name]'

# [Data] 
export img_list='[CMT-folder]/Models_training/VoxelMorph/vxm_data/Task[ID]_[name]/list_imagesTr.txt'
export img_prefix='[CMT-folder]/Models_training/VoxelMorph/vxm_data/Task[ID]_[name]/imagesTr_mdcn/'
export img_suffix=''

# [Training] 
export imgLoss_stage1='mse'
export imgLoss_stage2='ncc'
export weight_meanLoss=1
export weight_gradLoss=0.5
export gpuIDs=3
export batch_size=1
export epochs_stage1=500
export epochs_stage2=1000
export model_saving_step_s1=50
export model_saving_step_s2=50
export lastModel_stage1='[CMT-folder]/Models_training/VoxelMorph/vxm_models/Task[ID]_[name]/000500.h5'
export lastTemplate_stage1='[CMT-folder]/Models_training/VoxelMorph/vxm_models/Task[ID]_[name]/template_epoch000500.nii.gz'
export steps_per_epoch=26

# [Logging] 
export log_file_stage1='[CMT-folder]/Models_training/VoxelMorph/vxm_log/Task[ID]_[name]/training_scratch_s1.log'
export log_file_stage2='[CMT-folder]/Models_training/VoxelMorph/vxm_log/Task[ID]_[name]/training_scratch_s2.log'


# training from scratch: stage 1: with learnable template and network 
CUDA_VISIBLE_DEVICES=$gpuIDs $dir_scripts/train_tempLearnModel.py --enc 32  64  64  64 --dec 64  64  64  64  64  32  32 --mean-loss-weight "$weight_meanLoss" --grad-loss-weight "$weight_gradLoss" --image-loss "$imgLoss_stage1" --imgVoxelSize 1.4088     0.63521     0.41526 --img-list "$img_list" --img-prefix "$img_prefix" --img-suffix "$img_suffix" --model-dir "$dir_model" --batch-size "$batch_size" --epochs "$epochs_stage1" --steps-per-epoch "$steps_per_epoch" --model_saving_step "$model_saving_step_s1" > $log_file_stage1 2>&1
# training from scratch: stage 2: with frozen template and learnable network 
CUDA_VISIBLE_DEVICES=$gpuIDs $dir_scripts/train_tempLearnModel.py --freezeTemp --enc 32  64  64  64 --dec 64  64  64  64  64  32  32 --mean-loss-weight "$weight_meanLoss" --grad-loss-weight "$weight_gradLoss" --image-loss "$imgLoss_stage2" --imgVoxelSize 1.4088     0.63521     0.41526 --img-list "$img_list" --img-prefix "$img_prefix" --img-suffix "$img_suffix" --init-template "$lastTemplate_stage1" --model-dir "$dir_model" --batch-size "$batch_size" --epochs "$epochs_stage2" --steps-per-epoch "$steps_per_epoch" --model_saving_step "$model_saving_step_s2" --load-weights "$lastModel_stage1" --initial-epoch "$epochs_stage1" >> $log_file_stage2 2>&1
