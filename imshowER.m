for j= 1:100,
    img= imread(strcat('test-', num2str(j-1), '.pgm'));
    bbox= step(detector, img);
    figure,imshow(insertObjectAnnotation(img, 'rectangle', bbox,' '));
    pause(0.5);
end
