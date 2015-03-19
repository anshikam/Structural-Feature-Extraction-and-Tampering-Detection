function [correl] = test(refpat,I)

R=size(I,1);
%size of non overlappin block
r=(size(refpat,1)/2);
F=R/r;
B=F*F;

k=1;
correl=zeros(B,1);
x1=zeros(B,1);
x2=zeros(B,1);
y1=zeros(B,1);
y2=zeros(B,1);

for i=1:r:R
           
    for j=1:r:R
       
        if(i<=(r/2))
            x1(k)=i;    
        else
            x1(k)=ceil(i-(r/2));
        end
           
        if(i+r-1>=R-(r/2))
            x2(k)=i+r-1;
        else
            x2(k)=i+r-1+ceil(r/2);
        end
        
        if(j<=(r/2))
            y1(k)=j;    
        else
            y1(k)=ceil(j-(r/2));
        end

        if(j+r-1>=R-(r/2))
            y2(k)=j+r-1;
        else
            y2(k)=j+r-1+ceil(r/2);
        end
        
        Im=I(x1(k):x2(k),y1(k):y2(k));
        
        if(size(Im,1)~=2*r || size(Im,2)~=2*r)
            Im=bilinearinterpolation(Im,2*r,2*r);
        end
        
        a(k)=size(Im,1);
        [correl(k)]=correlation(refpat,Im);
             
        k=k+1;
    end
    
end

end

