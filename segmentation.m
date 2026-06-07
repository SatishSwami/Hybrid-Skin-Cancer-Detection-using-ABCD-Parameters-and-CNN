function [bw,edges] = segmentation(equalized)

%% Convert image
img = im2double(equalized);

%% Smooth image
img = imgaussfilt(img,2);

%% Inverse threshold for DARK lesion
level = graythresh(img);

bw = imbinarize(img,level);

bw = ~bw;

%% Morphological cleaning
bw = imfill(bw,'holes');

bw = bwareaopen(bw,300);

bw = imclose(bw,strel('disk',5));

%% Keep largest object ONLY
cc = bwconncomp(bw);

if cc.NumObjects > 0

    numPixels = cellfun(@numel,cc.PixelIdxList);

    [~,idx] = max(numPixels);

    bw2 = false(size(bw));

    bw2(cc.PixelIdxList{idx}) = true;

    bw = bw2;

end

%% Edge detection
edges = edge(bw,'Canny');

end