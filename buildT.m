function T = buildT(nh)
T = 4 * eye(nh, nh);

T(1, 2) = -1; 
T(nh, nh-1) = -1; 

for i = 2:nh-1; 
    T(i, i-1) = -1; 
    T(i, i+1) = -1; 
end; 

end