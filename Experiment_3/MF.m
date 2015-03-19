function [ im_mf ] = MF( im )

R=size(im,1);
C=size(im,2);

im_mf=medfilt2(im);

im_mf(1,1:C)=im(1,1:C);
im_mf(R,1:C)=im(R,1:C);
im_mf(1:R,1)=im(1:R,1);
im_mf(1:R,C)=im(1:R,C);

end

