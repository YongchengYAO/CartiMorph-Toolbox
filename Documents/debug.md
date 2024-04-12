# How to debug the CMT?

==Please open an issue to report bugs==

**Folders in the CMT working directory:**

```
├── [CartiMorph Toolbox folder]
  ├── Models_saved \\ <--- folder for exported models
    ├── segmentation
      ├── [model 1]
      ├── [model 2]
      ├── ...
    ├── registration
      ├── [model 1]
      ├── [model 2]
      ├── ...
  ├── Models_training \\ <--- folder for training data and models
    ├── nnUNet
      ├── nnUNet_autoScripts \\ CMT-generated scripts
      ├── nnUNet_log \\ log files
      ├── nnUNet_trained_models \\ with log file in [some path]/all/training*.txt
      ├── ...
    ├── VoxelMorph
      ├── vxm_autoScripts \\ CMT-generated scripts
      ├── vxm_log \\ log files
      ├── vxm_models \\ with learned template images in project subfolders
      ├── ...
  ├── ProjectConfiguration \\ <--- folder for project configuration
  ├── Results \\ <--- folder for CMT results
```

### How to debug computing environment configuration?

Check these log files:

- `[CMT-folder]/Models_training/nnUNet/nnUNet_log/Task[ID]_[name]/envSetup_CMTnnUNet.log `
- `[CMT-folder]/Models_training/VoxelMorph/vxm_log/Task[ID]_[name]/envSetup_CMTvxm.log`

Manually setup the virtual environment with these scripts:

- [envSetup_CMTnnUNet.sh](https://github.com/YongchengYAO/CartiMorph-Toolbox/blob/main/Scripts/envSetup/envSetup_CMTnnUNet.sh)
- [envSetup_CMTvxm.sh](https://github.com/YongchengYAO/CartiMorph-Toolbox/blob/main/Scripts/envSetup/envSetup_CMTvxm.sh)

### How to debug segmentation network training/inference?

Check the log files under these folders:

- `[CMT-folder]/Models_training/nnUNet/nnUNet_log/Task[ID]_[name]`
- `[CMT-folder]/Models_training/nnUNet/nnUNet_trained_models/Task[ID]_[name]/[…]/all/training*.txt`

Check the CMT-generated scripts for model training/inference.

- `[CMT-folder]/Models_training/nnUNet/nnUNet_autoScripts/Task[ID]_[name]`

### How to debug registration network training/inference?

Check the log files under the folder:

- `[CMT-folder]/Models_training/VoxelMorph/vxm_log/Task[ID]_[name]`

Check the CMT-generated scripts for model training/inference.

- `[CMT-folder]/Models_training/VoxelMorph/vxm_autoScripts/Task[ID]_[name]`

### How to debug or monitor the morphological quantification process?

Check the log files under the folders:

- `[CMT-folder]/Results/Task[ID]_[name]/log_*`

monitor the process with

```bash
watch -n1 tail -n20 [path/to/the/log/file]
```

[<<< Back to the main document](https://github.com/YongchengYAO/CartiMorph-Toolbox)
