function [correl] = correlation( R,I )

mR=mean2(R);
mI=mean2(I);

sdR=std2(R);
sdI=std2(I);

covar=0;
it=0;

row=size(R,1);

for i=1:row
    for j=1:row
        a=double(double(R(i,j)-mR)*double(I(i,j)-mI));
        covar=double(covar+a);
        
        it=it+1;
    end
end

covar=covar/(row*row);

correl=0;
if(sdR==0 && sdI==0)
    correl=1;
else if(sdR==0 || sdI==0)
        correl=0;
    else
        correl=covar/(sdR*sdI);
    end
end

end

