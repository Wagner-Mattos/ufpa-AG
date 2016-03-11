clear all;
clc;
%configuracoes iniciais



    global tamCromossomo ;
    global limInf ;
    global limSup  ;

    tamCromossomo = 21; % bits de cada variavel o cromossomo multiplica pelo n de variaveis 
    limInf = -100 ; % limite inferior do dominio de busca
    limSup = 100 ;  % limite 
    

    numentradas=2;
    tamPopulacao = 100;

    taxaCross   = .75;
    taxaMutacao = .01;

    i=1;
    iteracaoTotal = 100;

    % PASSO 1 - GERAR A POPULACAO INICIAL
    % =====================================================================
    % Inicializar populacao e transformar em binario (cromossomo com 5 bits)

    populacao = randi(limSup,tamPopulacao,numentradas); %[25, 15, 14, 10]';
    


[probSelecao , maxfit(i), minfit(i) , medfit(i)] = aptidao(populacao);



%inicia população
%numero de iteracoe



while i<iteracaoTotal
i=i+1;



pop_lin = selecao(populacao,probSelecao); % retorna a populacao escolhida pela roleta

pop_lin = crossover(pop_lin,taxaCross); % realiza o crossover 

pop_lin = mutacao(pop_lin,taxaMutacao); % varre os cromossomos bit a bit fazendo a alteração caso atenda a taxa de mutacao

%=====================================================================
% retorna a decimal os cromossomos
%=====================================================================
for v=1:tamPopulacao
       
        if v==1
           
            populacao = CromoDec(pop_lin(v,:),tamCromossomo,limInf,limSup);
        
        else
            
            populacao = vertcat(populacao,CromoDec(pop_lin(v,:),tamCromossomo,limInf,limSup));
            
        
        end
end 





%=====================================================================

[probSelecao , maxfit(i), minfit(i) , medfit(i)] = aptidao(populacao);

  
    
    
end
x= 1:1:i;

plot(x,minfit,x,maxfit,x,medfit);
title('Rendimento AG');
xlabel('N de gerações');
ylabel('f(t)');


