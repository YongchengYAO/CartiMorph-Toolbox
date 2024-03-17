source [path/to/]anaconda3/etc/profile.d/conda.sh
conda activate CartiMorphToolbox-nnUNet

export MKL_NUM_THREADS=6

export gpuIDs='0'
export nnUNet_taskName='Task[ID]_[name]'
export nnUNet_taskID='[taskID]'
export nnUNet_trainer='nnUNetTrainerV2'
export epoch=1000
export nnUNet_architecture='3d_fullres'
export nnUNet_fold='all'

export nnUNet_raw_data_base='[CMT-folder]/Models_training/nnUNet/nnUNet_raw_data_base'
export nnUNet_preprocessed='[CMT-folder]/Models_training/nnUNet/nnUNet_preprocessed'
export RESULTS_FOLDER='[CMT-folder]/Models_training/nnUNet/nnUNet_trained_models/Task[ID]_[name]'

export log_file='[CMT-folder]/Models_training/nnUNet/nnUNet_log/Task[ID]_[name]/training_3dF.log'

CUDA_VISIBLE_DEVICES=$gpuIDs CartiMorph_nnUNet_train $nnUNet_architecture $nnUNet_trainer $nnUNet_taskID $nnUNet_fold --epoch $epoch > "$log_file" 2>&1

