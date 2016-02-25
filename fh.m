function f = fh(rhs, bdry, h, nh)
f = zeros(nh, nh); 
for i = 1:nh; 
    for j = 1:nh; 
        f(i, j) = fhfun(rhs, bdry, h, i, j, nh); 
    end; 
end; 


end