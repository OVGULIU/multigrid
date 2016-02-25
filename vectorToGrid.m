function rg = vectorToGrid(vec, nh)

rg = zeros(nh, nh); 
for j = 1:nh; 
    for i = 1:nh; 
        rg(i, j) = vec( ( j-1) * nh + i ); 
    end; 
end; 


end