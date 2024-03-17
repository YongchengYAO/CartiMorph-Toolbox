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

# PyTorch 
conda install pytorch torchvision torchaudio pytorch-cuda=12.1 -c pytorch -c nvidia -y 

# CartiMorph-nnUNet 
python -m pip install CartiMorph-nnUNet 
python -m pip install batchgenerators 

