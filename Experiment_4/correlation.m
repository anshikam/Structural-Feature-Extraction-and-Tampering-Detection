function [correl,covar,it] = correlation( R,I )

mR=mean2(R);
mI=mean2(I);

sdR=std2(R);
sdI=std2(I);

covar=0;
it=0;

row=size(R,1);

for i=1:row
    for j=1:row
        a=double((R(i,j)-mR)*(I(i,j)-mI));
        covar=covar+a;
        
        it=it+1;
    end
end

covar=covar/(row*row);

correl=covar/(sdR*sdI);

end

