function L = LhMat(h, i, j, nh)
L = zeros(3, 3); 
L(1, 1) = 0; 
L(2, 2) = 4; 
L(3, 3) = 0; 
L(1, 2) = -1; 
L(2, 1) = -1; 
L(2, 3) = -1; 
L(3, 2) = -1; 
L = 1/h^2 * L; 

if( i == 1); 
    L(2, 1) = 0;
end; 
if( i == nh); 
    L(2, 3) = 0;
end; 
if( j == 1); 
    L(3, 2) = 0;
end; 
if( j == nh);
    L(1, 2) = 0; 
end; 
        

end 

