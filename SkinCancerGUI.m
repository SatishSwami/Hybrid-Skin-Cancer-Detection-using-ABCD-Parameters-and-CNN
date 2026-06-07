function SkinCancerGUI()

clc;
close all;

%% =========================
% MAIN FIGURE
%% =========================
fig = uifigure('Name','Skin Cancer Detection System',...
    'Position',[50 50 1450 780],...
    'Color',[0.94 0.96 1]);

%% =========================
% TITLE
%% =========================
uilabel(fig,...
    'Text','Hybrid Skin Cancer Detection using ABCD + CNN',...
    'Position',[350 720 800 40],...
    'FontSize',24,...
    'FontWeight','bold',...
    'FontColor',[0 0.2 0.6]);

%% =========================
% AXES
%% =========================

ax1 = uiaxes(fig,'Position',[20 500 180 180]);
title(ax1,'Original');

ax2 = uiaxes(fig,'Position',[220 500 180 180]);
title(ax2,'Gray');

ax3 = uiaxes(fig,'Position',[420 500 180 180]);
title(ax3,'Median');

ax4 = uiaxes(fig,'Position',[620 500 180 180]);
title(ax4,'Enhanced');

ax5 = uiaxes(fig,'Position',[820 500 180 180]);
title(ax5,'LPF');

ax6 = uiaxes(fig,'Position',[1020 500 180 180]);
title(ax6,'HPF');

ax7 = uiaxes(fig,'Position',[220 250 180 180]);
title(ax7,'Spectrum');

ax8 = uiaxes(fig,'Position',[420 250 180 180]);
title(ax8,'Edges');

ax9 = uiaxes(fig,'Position',[620 250 180 180]);
title(ax9,'Segmented');

%% =========================
% RESULT LABEL
%% =========================
resultLabel = uilabel(fig,...
    'Position',[980 330 350 40],...
    'FontSize',24,...
    'FontWeight','bold',...
    'Text','Prediction: ');

%% =========================
% FEATURE BOX
%% =========================
featureBox = uitextarea(fig,...
    'Position',[930 120 400 180],...
    'FontSize',15,...
    'Editable','off');

%% =========================
% BUTTON
%% =========================
uibutton(fig,...
    'Text','Upload & Analyze Image',...
    'Position',[520 60 300 60],...
    'FontSize',18,...
    'BackgroundColor',[0 0.45 0.74],...
    'FontColor','white',...
    'ButtonPushedFcn',@(btn,event) analyzeImage());

%% =========================
% ANALYZE FUNCTION
%% =========================
function analyzeImage()

    %% LOAD IMAGE
    [file,path] = uigetfile({'*.jpg;*.png;*.jpeg'});

    if isequal(file,0)
        return;
    end

    img = imread(fullfile(path,file));

    imshow(img,'Parent',ax1);

    %% =========================
    % PREPROCESSING
    %% =========================

    [gray,medianImg,equalized,lpf,hpf,spectrum] = preprocess(img);

    %% =========================
    % SEGMENTATION
    %% =========================

    [bw,edges] = segmentation(equalized);

    %% =========================
    % FEATURE EXTRACTION
    %% =========================

    features = featureExtraction(img,bw);

    A = features(1);
    B = features(2);
    C = features(3);
    D = features(4);

    %% =========================
    % CNN PREDICTION
    %% =========================

    [label,score] = predictCNN(img);

    result = char(label);

    confidence = score;

    %% =========================
    % RESULT COLOR
    %% =========================

    if strcmpi(result,'Benign')

        color = [0 0.7 0];

        risk = 'Low Risk';

    else

        color = [1 0 0];

        risk = 'High Risk';

    end

    %% =========================
    % SHOW IMAGES
    %% =========================

    imshow(gray,[],'Parent',ax2);

    imshow(medianImg,[],'Parent',ax3);

    imshow(equalized,[],'Parent',ax4);

    imshow(lpf,[],'Parent',ax5);

    imshow(mat2gray(hpf),[],'Parent',ax6);

    imshow(mat2gray(spectrum),[],'Parent',ax7);

    imshow(edges,[],'Parent',ax8);

    imshow(bw,[],'Parent',ax9);

    %% =========================
    % RESULT DISPLAY
    %% =========================

    resultLabel.Text = ['Prediction: ',result];

    resultLabel.FontColor = color;

    %% =========================
    % FEATURE DISPLAY
    %% =========================

    featureBox.Value = {

        ['Asymmetry (A): ',num2str(A,'%.3f')]
        ['Border (B): ',num2str(B,'%.3f')]
        ['Color (C): ',num2str(C,'%.3f')]
        ['Diameter (D): ',num2str(D,'%.3f')]
        ['Confidence: ',num2str(confidence,'%.2f'),'%']
        ['Risk Level: ',risk]

        };

end

end