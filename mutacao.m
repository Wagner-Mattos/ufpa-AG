function [ filhoMut ] = mutacao( filho , taxaMutacao )
%mutacao realiza a mutacao bia a bit
%   Detailed explanation goes here

[i,j] = size(filho);

filhoMut=filho;

for l=1:i
    
for c=1:j
    
r = rand;

if taxaMutacao > r
    
    if filho(l,c)==dec2bin(1)
        
        filhoMut(l,c)=dec2bin(0);
        
    else
        
        filhoMut(l,c)=dec2bin(1);
        
    end
    
end
    
    
    
end

end

return
end


