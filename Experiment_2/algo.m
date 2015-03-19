function [correl,covar,i1,j1] = algo( refpat,I )

R=size(I,1);
r=size(refpat,1);
F=R/r;
B=F*F;
correl=zeros(B,1);
covar=zeros(B,1);
k=1;
i1=zeros(B,1);
j1=zeros(B,1);
for i=1:F:B
    
    for j=1:F:B
       
        [correl(k),covar(k)]=correlation(refpat,I(i:i+F-1,j:j+F-1));
        
        i1(k)=i;
        j1(k)=j;
        k=k+1;
    end
    
end

end

