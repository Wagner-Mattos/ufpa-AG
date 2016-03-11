function [ f ] = FuncaoAlvo( x , y )
%funcaoAlvo funcao onde é baseada o Fitness
%   Detailed explanation goes here

%f=21.5+x.*sin(4*pi*x)+y.*sin(20*pi*y);
f=0.5-([sin(sqrt((x^2)+(y^2)))]^2 -0.5)/(1+0.001*((x^2)+y^2))^2;

return

end

