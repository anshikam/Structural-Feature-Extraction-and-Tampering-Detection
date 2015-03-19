function [ mat_lpf ] = test1(mat)

no=size(mat,3);
mat_lpf=zeros(49,49,no);

for i=1:no;
    mat_lpf(1:49,1:49,i)=glpf1_k(mat(1:49,1:49,i),1);
end;

end

