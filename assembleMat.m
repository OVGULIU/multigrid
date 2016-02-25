function Ah = assembleMat(nh, h)

Ah = zeros(nh * nh, nh * nh); 

Ah(1:nh, 1:nh) = buildT(nh); 
Ah(1:nh, nh+1: nh + nh) = - eye(nh, nh); 
Ah((nh -1) * nh + 1: nh * nh, (nh - 1) * nh + 1 : nh * nh) = buildT(nh); 
Ah((nh -1) * nh + 1: nh * nh, (nh - 2) * nh + 1 : (nh - 1) * nh) = - eye(nh, nh);  

for i = 2 : nh-1;
    Ah( (i - 1) * nh + 1 : i * nh, (i-1) * nh + 1 : i * nh ) = buildT(nh); 
    Ah( (i - 1) * nh + 1 : i * nh, (i-2) * nh + 1 : (i-1) * nh ) = -eye(nh, nh);  
    Ah( (i - 1) * nh + 1 : i * nh, i * nh + 1 : (i+1) * nh ) = -eye(nh, nh);  
end; 
    
Ah = (1/h^2) * Ah; 


end