negativeFolder= fullfile('C:\Users\Surya Teja Cheedella\Documents\MATLAB\carDetection\carData\trainImagesNeg');
detector= vision.CascadeObjectDetector('carTraindata4.xml');

for j= 1:20,
    img= imread(strcat('test-', num2str(j-1), '.pgm'));
    bbox= step(detector, img);
    figure,imshow(insertObjectAnnotation(img, 'rectangle', bbox,' '));
    pause(0.5);
end
