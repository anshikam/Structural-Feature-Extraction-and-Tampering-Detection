function [ I ] = image_create(t,b,l,r)

I=zeros(49,49);

for i=1:25
   I(i,i:49-i+1)=t;   
end

for i=49:-1:26
    I(i,49-i+1:i)=b;
end

for j=1:25
    I(j:49-j+1,j)=l;
end

for j=49:-1:26
    I(49-j+1:j,j)=r;
end





end

