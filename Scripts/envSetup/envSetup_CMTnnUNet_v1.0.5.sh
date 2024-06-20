#!/usr/bin/env bash 

# remove old Conda environment: CartiMorphToolbox-nnUNet 
conda remove --name CartiMorphToolbox-nnUNet --all -y

# create Conda environment 
conda create -n CartiMorphToolbox-nnUNet -y

# activate Conda environment 
eval "$(conda shell.bash hook)"
conda activate CartiMorphToolbox-nnUNet

# Python 
conda install python=3.10 -y
python -m pip install update

# Nvidia libraries 
conda install -c conda-forge cudatoolkit -y
python -m pip install nvidia-cudnn-cu11
mkdir -p $CONDA_PREFIX/etc/conda/activate.d
echo "CUDNN_PATH=$(dirname $(python -c "import nvidia.cudnn;print(nvidia.cudnn.__file__)"))" >> $CONDA_PREFIX/etc/conda/activate.d/env_vars.sh
echo "export LD_LIBRARY_PATH=$CONDA_PREFIX/lib/:$CUDNN_PATH/lib:$LD_LIBRARY_PATH" >> $CONDA_PREFIX/etc/conda/activate.d/env_vars.sh
source $CONDA_PREFIX/etc/conda/activate.d/env_vars.sh

# PyTorch 
python -m pip install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu121

# CartiMorph-nnUNet 
python -m pip install CartiMorph-nnUNet
python -m pip install batchgenerators
python -m pip install mkl
