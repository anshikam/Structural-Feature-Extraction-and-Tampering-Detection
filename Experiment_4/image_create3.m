function [ I ] = image_create3(a,b,c)

I=zeros(49,49);

I(1:25,1:49)=a;
I(26:49,1:49)=b;

for j=49:-1:25
    I(49-j+1:j,j)=c;
end

end