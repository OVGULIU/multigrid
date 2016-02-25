function Auh = gridMatVec(uh, nh, h)

Auh = zeros(size(uh)); 

for i = 1:nh; 
    for j = 1:nh; 
        if (i > 1); 
            a = uh(i-1, j); 
        else
            a = 0; 
        end; 
        if (i < nh); 
            b = uh(i+1, j); 
        else
            b = 0; 
        end; 
        if (j > 1); 
            c = uh(i, j-1); 
        else
            c = 0; 
        end; 
        if (j < nh); 
            d = uh(i, j+1); 
        else
            d = 0; 
        end; 
        
        Auh(i, j) = (1/h^2) * ( 4 * uh(i, j) - a - b - c - d ); 
    end;



end