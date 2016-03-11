%==========================================================================
% @desc Calcula a aptid�o 
%==========================================================================
function [ps,imx,imi,pmed] =aptidao(populacao);

    % Numero da populacao
    [iTotal,jTotal] = size(populacao);

    % Calcular o f(x) de cada entrada
    for i=1:iTotal     
            
       % for j=1:jTotal     
            % Cada elemento da populacao inicial
            x = populacao(i,1);
            y = populacao(i,2);

            % Funcao objetivo
            f(i) = FuncaoAlvo(x, y);  %  x^2;    
            
        %end
    end

    % Calcular a aptidao
    ps = (f / sum(f))'; %probabilidade de selecao em porcentagem
    
    imx = max(f); %individuo com maior fitness
    imi = min(f); % individuo com pior fitness
    pmed = mean(f); %media de desempenho fitness
    

    
  return  

end

