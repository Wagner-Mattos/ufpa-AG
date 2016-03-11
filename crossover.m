function [ pop_bin ] = crossover( pop_lin , taxaCross )
% crossover faz 
%   Detailed explanation goes here


    global tamCromossomo ;
    global limInf ;
    global limSup  ;


[ tam_pop , j ] = size(pop_lin);

    
n = 1;

%===================================================================
% Seleciona os individuos q geram filhos
%===================================================================

    for v=1:tam_pop
        
        r = rand();
        
        if r > taxaCross
            
            ind_cross(n) = v; % indice dos individuos que cruzarao
            n = n+1;
        end
    
    
    end
    
    [i,ncross]= size(ind_cross);
    
    if mod(ncross,2) == 1 %caso o numero de elementos seja impar retira o ultimo
        
        if ncross==1
            
        else
            r=rand();
            
            if r<0.5
            
                ind_cross(end)=[];
                    
            else
                
                
            end
        end
    end
        
     [i,ncross]= size(ind_cross);
    
%===============================================================
% Passa a populacao para binario
%===============================================================
    for v=1:tam_pop
       
        if v==1
           
            pop_bin = CromoBin(pop_lin(v,:),tamCromossomo,limInf,limSup);
        
        else
            
            pop_bin = vertcat(pop_bin,CromoBin(pop_lin(v,:),tamCromossomo,limInf,limSup));
            
        
        end
    end        
%==================================================================
% recombina os pares
%==================================================================

if ncross > 1
    
    for i=1:(ncross/2)
        
        corte = randi(tamCromossomo-1);
        
        filho1 = horzcat(pop_bin(ind_cross(i),1:corte),pop_bin(ind_cross(i+1),corte+1:end));
        filho2 = horzcat(pop_bin(ind_cross(i+1),1:corte),pop_bin(ind_cross(i),corte+1:end));
        
        
        %devolve a a populacao
        
        pop_bin(ind_cross(i),:)= filho1;
        pop_bin(ind_cross(i+1),:)= filho2;
        
    end
        
    
end


    



