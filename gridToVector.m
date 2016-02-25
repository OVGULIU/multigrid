function vec = gridToVector(r, nh)

vec = zeros(nh * nh, 1); 
for j = 1:nh; 
    for i = 1:nh; 
        vec( (j-1) * nh + i ) = r(i, j); 
    end; 
end; 

end