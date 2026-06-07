function features = featureExtraction(img,bw)

img = imresize(img,[256 256]);

bw = imresize(bw,[256 256]);

bw = logical(bw);

props = regionprops(bw,'Area','Perimeter');

if isempty(props)

    features = zeros(1,8);

    return;

end

[~,idx] = max([props.Area]);

area = props(idx).Area;

perimeter = props(idx).Perimeter;

%% A - Asymmetry
center = round(size(bw,2)/2);

left = bw(:,1:center);

right = fliplr(bw(:,center+1:end));

minCols = min(size(left,2),size(right,2));

overlap = left(:,1:minCols) & right(:,1:minCols);

A = 1 - sum(overlap(:))/sum(bw(:));

%% B - Border
B = (perimeter^2)/(4*pi*area);

%% C - Color
hsvImg = rgb2hsv(img);

H = hsvImg(:,:,1);

S = hsvImg(:,:,2);

V = hsvImg(:,:,3);

C = std(double(H(bw))) + ...
    std(double(S(bw))) + ...
    std(double(V(bw)));

%% D - Diameter
D = sqrt((4*area)/pi);

%% Texture Features
gray = rgb2gray(img);

glcm = graycomatrix(gray);

stats = graycoprops(glcm);

contrast = stats.Contrast;

energy = stats.Energy;

homogeneity = stats.Homogeneity;

correlation = stats.Correlation;

%% Feature Vector
features = [A B C D contrast energy homogeneity correlation];

end