function [correl,covar,sdR,sdI] = correlation( R,I )

mR=mean2(R);
mI=mean2(I);

sdR=std2(R);
sdI=std2(I);

covar=0;

for i=1:50
    for j=1:50
        a=double((R(i,j)-mR)*(I(i,j)-mI));
        covar=covar+a;
    end
end

covar=covar/2500;

correl=covar/(sdR*sdI);

end

