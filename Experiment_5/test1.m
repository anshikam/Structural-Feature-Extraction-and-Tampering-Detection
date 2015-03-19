function [ h ] = test1( correl )

c=correl;

no=size(c,1);

p=zeros((no/2),1);
for i=1:(no/2)
    p(i)=c(2*i-1)*c(2*i);
end

h=100*p;
end

