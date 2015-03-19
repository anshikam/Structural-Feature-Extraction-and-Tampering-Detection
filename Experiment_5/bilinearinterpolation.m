function copyimage =bilinearinterpolation(sourceimage,R1,C1)

R=size(sourceimage,1);
C=size(sourceimage,2);


copyimage=zeros(R1,C1);
for(i=1:R1)
for(j=1:C1)
k=floor(i*R/R1);
l=floor(j*C/C1);
if(k==R||l==C||k==0||l==0)
if(k==0&&l==0)
copyimage(i,j)=sourceimage((k+1),(l+1));
elseif (k==0&&l~=0)
copyimage(i,j)=sourceimage(k+1,l);
elseif (k~=0&&l==0)
copyimage(i,j)=sourceimage(k,l+1);
else
copyimage(i,j)=sourceimage(k,l);
end;
end;
if(~(k==R||l==C||k==0||l==0))
m=i*R/R1-k;
n=j*C/C1-l;
y=sourceimage(k+1,l)*m+sourceimage(k,l)*(1-m);
z=sourceimage(k+1,l+1)*m+sourceimage(k,l+1)*(1-m);
copyimage(i,j)=y*(1-n)+z*n;
end;
end;
end;
copyimage=uint8(copyimage);
