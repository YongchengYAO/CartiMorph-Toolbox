# Known Issues

These issues have been identified and will be addressed in future releases

- [x] Conda environment configuration fails

  - [future updates] New scripts will be adopted in release v1.0.5
    - [envSetup_CMTnnUNet_v1.0.5.sh](https://github.com/YongchengYAO/CartiMorph-Toolbox/blob/main/Scripts/envSetup/envSetup_CMTnnUNet_v1.0.5.sh)
    - [envSetup_CMTvxm_v1.0.5.sh](https://github.com/YongchengYAO/CartiMorph-Toolbox/blob/main/Scripts/envSetup/envSetup_CMTvxm_v1.0.5.sh)

    Try:
    
    - [CMT-Vxm.yml](https://github.com/YongchengYAO/CartiMorph-Toolbox/blob/main/Scripts/envSetup/CMT-Vxm.yml): `conda env create -f CMT-Vxm.yml`
    - [CMT-nnUNet.yml](https://github.com/YongchengYAO/CartiMorph-Toolbox/blob/main/Scripts/envSetup/CMT-nnUNet.yml):  `conda env create -f CMT-nnUNet.yml`
    
  - [temporary solution] Check the log files for environment configuration as suggested [here](https://github.com/YongchengYAO/CartiMorph-Toolbox/blob/main/Documents/debug.md), modify the scripts as appropriate, and replace the scripts:
    - `[CMT-folder]/Models_training/nnUNet/nnUNet_autoScripts/Task[ID]_[name]/envSetup_CMTnnUNet.sh `
    - `[CMT-folder]/Models_training/VoxelMorph/vxm_autoScript/Task[ID]_[name]/envSetup_CMTvxm.sh`
    
  - [long-term solution] Use Docker (open an issue if you need Docker image support)

<br/>

- [ ] Error messages not displayed in UI

  - [temporary solution] Check the log files for each stage as suggested [here](https://github.com/YongchengYAO/CartiMorph-Toolbox/blob/main/Documents/debug.md)

<br/>

- [ ] UI is less responsive after pressing the `Run` button

  - [expected behaviour] Frozen UI after pressing `Run`

  - [observation] The delay depends on the computing environment. Long delay has been observed when the toolbox runs on a remote server and when “computing environment configuration” has been selected.

  - [temporary solution] Restrain from hitting the button multiple times

<br/>
<br/>

[<<< Back to the main document](https://github.com/YongchengYAO/CartiMorph-Toolbox)
