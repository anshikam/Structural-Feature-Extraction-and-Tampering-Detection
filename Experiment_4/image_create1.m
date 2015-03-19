function [ I ] = image_create1(a,b,c,d)

I=zeros(49,49);

for i=1:49
    I(i,i:49)=b;
end

for i=1:16
   I(i,33+i:49)=a;   
end


for i=1:49
    I(i,1:i)=c;
end

for i=33:49
     I(i,1:i-32)=d;
end





end

