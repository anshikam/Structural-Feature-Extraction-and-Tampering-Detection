function [ output ] = preprocess( input )

R=size(input,1);
%F=50/R;

%resizing to 50*50
%im=imresize(input,F);

%rgb to ycbcr mode
input=rgb2ycbcr(input);

%extracting y
output=input(:,:,1);

end

