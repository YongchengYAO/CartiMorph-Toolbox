## v1.0.4

- Bugfix [v1.0.{0-3}]: swapped subregions for lateral and medial TCs in left knees (an error in TC parcellation; right knee inputs are not affected)
- Improvement: suppress progress bar when auto-saving models

## v1.0.3

- Bugfix [v1.0.2]: missing image preprocessing step for segmentation model evaluation 
- Improvement: improved workflow management for model training and evaluation
- Improvement: disable parallel computing in the model evaluation step
- Improvement: fix the version number when loading project configurations

## v1.0.2

- Improvement: display the encoder and decoder channels after loading the registration model
- Improvement: show progress when saving project configuration
- Improvement: enable parallel computing if the Parallel Computing Toolbox has been installed
- Improvement: start model inference on the inference dataset once model training is completed
- Improvement: [CartiMorph Viewer] automatically updates the segmentation masks when the opacity is changed
- Others: use the same version code for CartiMorph Toolbox and CartiMorph Viewer (standalone version)

## v1.0.1

- Bugfix [v1.0.0]: the `reset` button in section (iv-2) should reset the colour of the lamps 
- Bugfix [v1.0.0]: the `load model files` button in section (iv-2) fails to load all model files

## v1.0.0

- initial release

[<<< Back to the main document](https://github.com/YongchengYAO/CartiMorph-Toolbox)
