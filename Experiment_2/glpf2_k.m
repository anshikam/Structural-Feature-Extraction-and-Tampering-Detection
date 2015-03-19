function modified=glpf2_k(source,k)

%3*3 gaussian kernel

n=[0.05472157	0.11098164	0.05472157;0.11098164	0.22508352	0.11098164;0.05472157	0.11098164	0.05472157];

for i=1:k
    
if i==1    
    modified=conv2(single(source),single(n));
end
if i>1
    modified=conv2(single(modified),single(n));
end

R=size(modified,1);
C=size(modified,2);

modified=modified(2:R-1,2:C-1);
end

%end