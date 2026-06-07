function [label,score] = predictCNN(img)

data = load('trainedCNN.mat');

net = data.net;

img = imresize(img,[224 224]);

[label,scores] = classify(net,img);

score = max(scores)*100;

end