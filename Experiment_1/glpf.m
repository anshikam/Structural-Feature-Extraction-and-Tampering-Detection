function modified=glpf(source)

%n=[0.05472157	0.11098164	0.05472157;0.11098164	0.22508352	0.11098164;0.05472157	0.11098164	0.05472157];
%n=[1/9 1/9 1/9; 1/9 1/9 1/9; 1/9 1/9 1/9];

n=[0.00000067	0.00002292	0.00019117	0.00038771	0.00019117	0.00002292	0.00000067;
0.00002292	0.00078633	0.00655965	0.01330373	0.00655965	0.00078633	0.00002292;
0.00019117	0.00655965	0.05472157	0.11098164	0.05472157	0.00655965	0.00019117;
0.00038771	0.01330373	0.11098164	0.22508352	0.11098164	0.01330373	0.00038771;
0.00019117	0.00655965	0.05472157	0.11098164	0.05472157	0.00655965	0.00019117;
0.00002292	0.00078633	0.00655965	0.01330373	0.00655965	0.00078633	0.00002292;
0.00000067	0.00002292	0.00019117	0.00038771	0.00019117	0.00002292	0.00000067];

R=size(source,1);
C=size(source,2);

modified=conv2(single(source),single(n));
modified=modified(4:53,4:53);
end