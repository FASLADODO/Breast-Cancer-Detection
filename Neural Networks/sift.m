i = imread('C:\Users\acer\Desktop\finalplot110.jpg');
i1 = i(1:400,1:400);
i2 = i(1:400,401:800);
i3 = i(401:800,1:400);
i4 = i(401:800,401:800);
rect = [1,212,218,400];
j1 = imcrop(i1,rect);
j2 = imcrop(i2,rect);
j3 = imcrop(i3,rect);
j4 = imcrop(i4,rect);
j1 = single(rgb2gray(j1));
j2 = single(rgb2gray(j2));
j3 = single(rgb2gray(j3));
j4 = single(rgb2gray(j4));
[F1 D1] = vl_sift(j1);
[F2 D2] = vl_sift(j2);
[F3 D3] = vl_sift(j3);
[F4 D4] = vl_sift(j4);
[matches score] = vl_ubcmatch(D1,D2,1.5)