clc;
clear all;
close all;
vidObj = VideoReader('challenge.mp4');vidFrames = read(vidObj);
 
% Get the number of frames.
numFrames = get(vidObj, 'NumberOfFrames');
 
% Read one frame at a time until the end of the file is reached. 
% Create an array "vid" with MxNx3xT where MxN is the size of the image and T is
% the number of frames.
for k = 1 : numFrames
      vid(:,:,:,k) = vidFrames(:,:,:,k);
end

