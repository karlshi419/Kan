% Image display
% img=importdata('./AutoTest/SumLenaTradQ8T_328.txt');%Error Free
% fig=uint8(reshape(img/8,512,512));
% subplot(1,3,1),imshow(fig);
img=importdata('./AutoTest/SumLenaTradQ8T_320.txt');%New
fig=uint8(reshape(img/8,512,512));
subplot(4,2,1),imshow(fig);

img=importdata('./AutoTest/SumLenaTradQ4T_320.txt');%New
fig=uint8(reshape(img/8,512,512));
subplot(4,2,2),imshow(fig);

img=importdata('./AutoTest/SumLenaTradQ8T_300.txt');%New
fig=uint8(reshape(img/8,512,512));
subplot(4,2,3),imshow(fig);

img=importdata('./AutoTest/SumLenaTradQ3T_300.txt');%Corresponding Traditional
fig=uint8(reshape(img/8,512,512));
subplot(4,2,4),imshow(fig);

img=importdata('./AutoTest/SumLenaTradQ8T_280.txt');%New
fig=uint8(reshape(img/8,512,512));
subplot(4,2,5),imshow(fig);

img=importdata('./AutoTest/SumLenaTradQ1T_280.txt');%Corresponding Traditional
fig=uint8(reshape(img/8,512,512));
subplot(4,2,6),imshow(fig);

img=importdata('./AutoTest/SumLenaTradQ8T_240.txt');%New
fig=uint8(reshape(img/8,512,512));
subplot(4,2,7),imshow(fig);

img=importdata('./AutoTest/SumLenaTradQ8T_200.txt');%New
fig=uint8(reshape(img/8,512,512));
subplot(4,2,8),imshow(fig);

