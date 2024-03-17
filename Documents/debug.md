# How to debug the CMT?

==Please open an issue to report bugs==

**Folders in the CMT working directory:**

```python
# ├── [CartiMorph Toolbox folder]
#  ├── Models_saved \\ <--- folder for exported models
#   ├── segmentation
#    ├── [model 1]
#    ├── [model 2]
#    ├── ...
# 	├── registration
#    ├── [model 1]
#    ├── [model 2]
#    ├── ...
#  ├── Models_training \\ <--- folder for training data and models
#   ├── nnUNet
#    ├── nnUNet_autoScripts \\ CMT-generated scripts
#    ├── nnUNet_log \\ log files
#    ├── nnUNet_trained_models \\ with log file in [some path]/all/training*.txt
#    ├── ...
#   ├── VoxelMorph
#    ├── vxm_autoScripts \\ CMT-generated scripts
#    ├── vxm_log \\ log files
#    ├── vxm_models \\ with learned template images in project subfolders
#    	├── Task[ID]_[name]
#    ├── ...
# ├── ProjectConfiguration \\ <--- folder for project configuration
# ├── Results \\ <--- folder for CMT results
```

### How to debug computing environment configuration?

Check these log files:

- `[CMT folder]/Models_training/nnUNet/nnUNet_log/Task[ID]_[name]/envSetup_CMTnnUNet.log `
- `[CMT folder]/Models_training/VoxelMorph/vxm_log/Task[ID]_[name]/envSetup_CMTvxm.log`
- 

[<<< Back to the main document](https://github.com/YongchengYAO/CartiMorph-Toolbox)
