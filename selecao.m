%==========================================================================
% @desc Faz a selecao do individuo mais apto
%
% @param individuos - Individuos de uma populacao em um vetor LINHA
% @param pi         - Probabilidadde de selecao proporcional a aptidao
% @obs              - Caso usar pi=0 indicia o uso de selecao por torneio
%==========================================================================
function pop_lin = selecao(populacao, probSelecao);

    [i , j]=size(populacao);
    
    
    
        
     pop_lin = populacao(Roletta(probSelecao'),:);
     
     for j=2:i
    
    pop_lin = vertcat(pop_lin,populacao(Roletta(probSelecao'),:));
    
    
    end
        
    
    
     
    
return
end