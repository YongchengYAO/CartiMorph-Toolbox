function CMT_regNIfTI_rigid(movingFile, fixedFile, outputFile)
% -----------------------------------------------
% Register (rigid-body reg.) a moving NIfTI image to a fixed NIfTI image and update the affine matrix.
%
% Inputs:
%   movingFile  - Path to the moving NIfTI image
%   fixedFile   - Path to the fixed (reference) NIfTI image
%   outputFile  - Path to save the registered NIfTI image
%
% Example:
%   CMT_regNIfTI('movingImage.nii', 'fixedImage.nii', 'registeredImage.nii
% -----------------------------------------------

% Load NIfTI volumes
movingVolume = niftiread(movingFile);
fixedVolume = niftiread(fixedFile);

% Get spatial referencing objects
Rmoving = imref3d(size(movingVolume));
Rfixed = imref3d(size(fixedVolume));

% Set up optimizer and metric for registration
[optimizer, metric] = imregconfig('multimodal');

% Compute the transformation matrix (affine)
tform = imregtform(movingVolume, Rmoving, fixedVolume, Rfixed, 'rigid', optimizer, metric);

% Apply the transformation to the moving image
movingRegistered = imwarp(movingVolume, tform, 'OutputView', Rfixed);

% Copy the header info of the moving NIfTI file
outputInfo = niftiinfo(movingFile);

%Update the NIfTI header with the new transformation matrix
outputInfo.Transform.T = tform.T * outputInfo.Transform.T;  % Adjust affine matrix

% Save the registered image with the updated affine matrix
niftiwrite(movingRegistered, outputFile, outputInfo, 'Compressed', true);
end