for i=0:549,
    mydata(i+1).imageFilename = strcat('trainImagesPos/pos-', num2str(i), '.pgm');
    mydata(i+1).objectBoundingBoxes = [1, 1, 100, 40]
end
