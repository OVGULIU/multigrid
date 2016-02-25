function unew = smoothStep(u, f, h)
% u and unew are stored in a nh by nh matrix
dim = size(u); 
nh = dim(1); 

unew = u; 

for i = 1:nh; 
    for j = 1:nh; 
        if( i > 1 ); 
            a = unew(i-1, j); 
        else 
            a = 0; 
        end; 
        if( i < nh ); 
            b = unew(i+1, j); 
        else
            b = 0; 
        end; 
        if( j > 1 ); 
            c = unew(i, j - 1); 
        else
            c = 0; 
        end; 
        if( j < nh); 
            d = unew(i, j + 1); 
        else
            d = 0; 
        end; 
        unew(i, j) = 0.25 * ( ( h^2 ) * f(i, j) + a + b + c + d ); 
        
    end; 
end; 


end