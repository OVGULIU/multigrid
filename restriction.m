function Rrh = restriction(rh, nh)
Rrh = zeros( (nh + 1)/2, (nh + 1)/2); 
dim = size(Rrh); 
for i = 1:dim(1); 
    for j = 1:dim(2); 
        Rrh(i, j) = rh(2 * i-1, 2 * j -1 ); 
    end; 
end; 

end