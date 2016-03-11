function [ indbin ] = CromoBin( individuo , tamCromossomo , limInf , limSup )
%retorna o individuo em formatacao binaria
%   Detailed explanation goes here


[i j]=size(individuo);

indbase =((individuo-limInf)*(2^tamCromossomo)-(individuo-limInf))/(limSup-limInf);
    


indbin = dec2bin(indbase(i),tamCromossomo);

    for i=2:j
    
    indbin = horzcat(indbin,dec2bin(indbase(i),tamCromossomo));
    
    
    end



return
end

