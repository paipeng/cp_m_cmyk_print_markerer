
clear; clc; close all;



I = ones(800, 800, 4);


M = gen_cmyk_marker();

[mh, mw, mc] = size(M);
for c = 1:4
    I(1:mh, 1:mw,c) = M(:,:,c);
end


figure;
for c=1:4
    subplot(2,2,c);
    imshow(I(:,:,c));
end


figure;
I_rgb = cat(3, I(:,:,1),I(:,:,2),I(:,:,3));

imshow(I_rgb);



