function Pehh = prolongation(ehh, nhh)
nh = (nhh-1) * 2 + 1;
Pehh = zeros(nh, nh); 
for i = 1:nh; 
    for j = 1:nh; 
        
        if(mod(i, 2) == 1 && mod(j, 2) == 1 ); 
            Pehh(i, j) = ehh((i+1)/2, (j+1)/2); 
        end; 
        
        if( mod(i, 2) == 1 && mod(j, 2) == 0); 
            Pehh(i, j) = 0.5 * ( ehh( (i+1)/2, j/2) + ehh((i+1)/2, j/2 + 1) ); 
        end; 
        if( mod(i, 2) == 0 && mod(j, 2) == 1); 
            Pehh(i, j) = 0.5 * ( ehh( i/2, (j+1)/2) + ehh(i/2 +1, (j+1)/2) ); 
        end; 
        if( mod(i, 2) == 0 && mod(j, 2) == 0); 
            Pehh(i , j) = 0.25 * ( ehh( i/2, j/2 ) + ehh( i/2 + 1, j/2)...
                + ehh( i/2, j/2 + 1) + ehh( i/2+1, j/2+1) ); 
        end; 
    end; 
end; 
            
                


end