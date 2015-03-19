function [ O ] = mean_filter( I )

O=zeros(50,50);

for i=2:49
    for j=2:49
        O(i,j)=(I(i,j)+I(i,j-1)+I(i,j+1)+I(i-1,j)+I(i+1,j)+I(i-1,j-1)+I(i+1,j+1))/9;
    end
end

O(1,1:50)=I(1,1:50);
O(1:50,1)=I(1:50,1);
O(50,1:50)=I(50,1:50);
O(1:50,50)=I(1:50,50);

end

