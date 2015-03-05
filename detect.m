negativeFolder= fullfile('C:\Users\Surya Teja Cheedella\Documents\MATLAB\carDetection\carData\trainImagesNeg')

%initialising the variable detector with the xml file
detector= vision.CascadeObjectDetector('carTraindata4.xml');
%reading an image file in current dir.
img= imread('sun.png');
%bounding box around detected object
box= step(detector, img);
%inserting that bounding box in given picture and showing it
figure,imshow(insertObjectAnnotation(img, 'rectangle', box,' '));