function [ I ] = refpat()

I=zeros(49,49);

for i=1:49
   for j=1:49
       if(mod((i+j),2)==0)
           I(i,j)=15;
       else
           I(i,j)=240;
       end
   end
end

end

