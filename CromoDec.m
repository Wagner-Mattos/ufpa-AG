function [ inddec ] = CromoDec( individuo ,tamCromossomo, limInf, limSup)
%CromoDec Summary of this function goes here
%function [ inddec ] = CromoDec( individuo ,tamCromossomo, limInf, limSup)
%   Detailed explanation goes here


[i,j]=size(individuo);
    %implementar a mudança de base para a funcao ser mais autonoma

    j = j/tamCromossomo;
    
    indDesloc = bin2dec(individuo(1:tamCromossomo));
    
    for i=2:j
        
    indDesloc = horzcat(indDesloc,bin2dec(individuo(((i-1)*tamCromossomo)+1:(i*tamCromossomo))));
    
    end
    
inddec = limInf + indDesloc * ((limSup-limInf)/((2^tamCromossomo)-1));

return
end

