

![aboutCMT](README.assets/aboutCMT.png)

**Stay tuned: watch (upper right corner) > custom > Releases**

The toolbox is currently under rapid testing and improvement. You don’t want to miss these updates.

## Toolbox Release:

Check the [CMT releases log file](https://github.com/YongchengYAO/CartiMorph-Toolbox/blob/main/Documents/CMT_releases.md) for details.

- [latest release: v1.0.1](https://github.com/YongchengYAO/CartiMorph-Toolbox/releases/tag/v1.0.1)
  - [CartiMorphToolbox-linux-standalone-v1.0.1.install](https://github.com/YongchengYAO/CartiMorph-Toolbox/releases/download/v1.0.1/CartiMorphToolbox-linux-standalone-v1.0.1.install)

## Model Release:

Check the [model releases log file](https://github.com/YongchengYAO/CartiMorph-Toolbox/blob/main/Models/model_releases.md) for details. Just download the archived file, extract the files, and select the folder when importing models in CMT.

## Features

- [CartiMorph](https://github.com/YongchengYAO/CartiMorph): a framework for knee articular cartilage morphometrics
- User-friendly: 
  - automatic configuration
  - automatic image preprocessing 
  - pause and resume running
  - models import and export functions make fine-tuning and deployment easy
- Deep learning models training, evaluation, and inference
- Transfer learning (fine-tuning)
- Knee articular cartilage morphometrics
  - full-thickness cartilage loss (FCL)
  - cartilage thickness map
  - cartilage surface area
  - cartilage volume
  - regional analysis (20 subregions)
- Data visualization with [CartiMorph Viewer](https://github.com/YongchengYAO/CartiMorph-Viewer)

## Previous & Our Work

CMT is based on previous works on medical image segmentation and registration. Specifically, we made minor modificaiton to the nnUNet (v1) and major changes to VoxelMorph. The training losses and strategy of our registration model is different from the original VoxelMorph model. Our modified packages are published as [CartiMorph-vxm](https://github.com/YongchengYAO/CartiMorph-vxm#cartimorph-vxm) and [CartiMorph-nnUNet](https://github.com/YongchengYAO/CartiMorph-nnUNet#cartimorph-nnunet).

You can find the examplary training scripts:

- 2-stage registraion and template learning: [training_vxm.sh](https://github.com/YongchengYAO/CartiMorph-Toolbox/blob/main/Scripts/regModel/training_vxm.sh)
- segmentation with nnUNet: [training_3dF.sh](https://github.com/YongchengYAO/CartiMorph-Toolbox/blob/main/Scripts/segModel/training_3dF.sh)

Note that the scripts are not intended to be used separately from the CMT as it relies on the automatic preprocessing in the toolbox, which mainly consists of image reorientation, resampling, auto-downsampling (for registration model), and central cropping (for registration model).

## Step-by-step Instruction

For detailed instructions, please go to [this page](https://github.com/YongchengYAO/CartiMorph-Toolbox/blob/main/Documents/instructions.md).

## Debug

Once the preprocessing steps in the segmentation model and registration model training sections are completed, you should be able to observe computing on GPU with the `nvidia-smi` command. One way to monitor the process is by `watch -n1 nvidia-smi`.

When training models on custom data, there is a risk that errors or problems with the data could adversely impact the training process. For detailed instructions on how to debug, go to [this page](https://github.com/YongchengYAO/CartiMorph-Toolbox/blob/main/Documents/debug.md).

## Citation

If you use the toolkit, please cite the CartiMorph paper.

```
@article{yao2024cartimorph,
  title={CartiMorph: A framework for automated knee articular cartilage morphometrics},
  author={Yao, Yongcheng and Zhong, Junru and Zhang, Liping and Khan, Sheheryar and Chen, Weitian},
  journal={Medical Image Analysis},
  volume={91},
  pages={103035},
  year={2024},
  publisher={Elsevier}
}
```

