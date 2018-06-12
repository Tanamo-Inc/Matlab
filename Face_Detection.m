%face detection
clc 
clear

faceDetect = vision.CascadeObjectDetector ;

% read our image file

I = imread('face.jpg');

%Box

BB = step(faceDetect,I);

figure

imshow(I)
hold on

%loop no of faces

for i =1:size(BB,1)
rectangle('Position',BB(1,:),'LineWidth',5,'LineStyle','-','EdgeColor','r')
end
title('FACE DETECTION')
hold off




