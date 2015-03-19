function [ I ] = image_create2(a,b,c,d)

I=zeros(49,49);

for i=1:49
    I(i,1:49-i+1)=b;
end

for i=1:16
    I(i,1:16-i+1)=a;
end

for i=1:49
    I(i,49-i+1:49)=c;
end

k=49;
for i=33:49
    I(i,k:49)=d;
    k=k-1;
end






end

