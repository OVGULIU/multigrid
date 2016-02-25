function f = fhfun(rhs, bdry, h, i, j, nh)
x = i * h; 
y = j * h; 
f = rhs(x, y); 

if( i == 1); 
    f = f + (1/h^2) * bdry(x - h, y);
end; 
if( i == nh); 
    f = f + (1/h^2) * bdry(x + h, y);
end; 
if( j == 1); 
    f = f + (1/h^2) * bdry(x, y - h);
end; 
if( j == nh);
    f = f + (1/h^2) * bdry(x, y + h);
end; 
        

end