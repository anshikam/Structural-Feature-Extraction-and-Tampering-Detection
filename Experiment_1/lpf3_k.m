function modified=glpf3_k(source,k)

%averaging blur

n=[1/9 1/9 1/9; 1/9 1/9 1/9; 1/9 1/9 1/9];

for i=1:k
    
if i==1    
    modified=conv2(single(source),single(n));
end
if i>1
    modified=conv2(single(modified),single(n));
end

R=size(modified,1);
C=size(modified,2);

%modified=modified(4:R-3,4:C-3);
modified=modified(2:R-1,2:C-1);
end

%end