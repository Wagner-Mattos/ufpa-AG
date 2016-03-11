function [ i ] = Roletta( probSelecao )
%Roletta retorna o indice do elemento seleciona com base na Probabilidade
%de selecao
%%Detailed explanation goes here

r = rand;
sPs = 0;  % Somatorio da probabilidade de selecao
i = 1;
while sPs < r

    sPs  = sPs + probSelecao(i);
   i = i + 1;
    
end

i = i - 1; %pra evitar dar merda no indice

end

