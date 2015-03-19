function modified=glpf_r_k(source,k)


for i=1:k
    
if i==1    
    modified=filter2(fspecial('gaussian'),source);
end
if i>1
    modified=filter2(fspecial('gaussian'),modified);
end

end

end