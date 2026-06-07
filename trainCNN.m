clear;
clc;

%% Dataset Path
datasetPath = 'Dataset';

%% Load Images
imds = imageDatastore(datasetPath,...
    'IncludeSubfolders',true,...
    'LabelSource','foldernames');

%% Resize Images
inputSize = [224 224];

augimds = augmentedImageDatastore(inputSize,imds);

%% Split Dataset
[trainData,testData] = splitEachLabel(imds,0.8,'randomized');

augTrain = augmentedImageDatastore(inputSize,trainData);
augTest = augmentedImageDatastore(inputSize,testData);

%% CNN Layers
layers = [
    imageInputLayer([224 224 3])

    convolution2dLayer(3,8,'Padding','same')
    batchNormalizationLayer
    reluLayer

    maxPooling2dLayer(2,'Stride',2)

    convolution2dLayer(3,16,'Padding','same')
    batchNormalizationLayer
    reluLayer

    maxPooling2dLayer(2,'Stride',2)

    convolution2dLayer(3,32,'Padding','same')
    batchNormalizationLayer
    reluLayer

    fullyConnectedLayer(2)
    softmaxLayer
    classificationLayer
];

%% Training Options
options = trainingOptions('adam',...
    'MaxEpochs',5,...
    'MiniBatchSize',32,...
    'ValidationData',augTest,...
    'Verbose',false,...
    'Plots','none');

%% Train Network
net = trainNetwork(augTrain,layers,options);

%% Save Model
save('trainedCNN.mat','net');

disp('CNN Model Trained Successfully');