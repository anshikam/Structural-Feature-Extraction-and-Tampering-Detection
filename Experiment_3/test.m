function [ correl ] = test( refpat,mat )

no=size(mat,3);
correl=zeros(no,1);

for i=1:no;
    correl(i)=correlation(refpat,mat(1:49,1:49,i));
end;

end

