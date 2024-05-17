#PROCESAMIENTO DIGITAL DE SEÑALES [2024]
#GUIA 2.2 (Convolución) - EJERCICIO 2
clc; clf; clear all;
pkg load signal;
#{
  #Escriba una funcion que haga la convolucion circular discreta o convolucion
  periodica entre dos senales, ambas de longitud N muestras utilizando ciclos for.
  Se debe considerar a x[n] periodica, pero h[n] debe ser nula fuera
  de su rango de definicion.
#}
                
x = [1 2  2  0];   %=>[1 0  2  2] , [2 1  0  2] ,  [2 2  1  0], [0 2  2  1] <= x[-n], x[1-n], x[2-n], x[3-n]     
h = [2 1 0.5 0];   %=>[2 1 0.5 0] , [2 1 0.5 0] ,  [2 1 0.5 0], [2 1 0.5 0] <=  h[n] , h[n] ,  h[n] ,  h[n] 
                   %  [2+0+ 1 +0  ,  4+1+ 0 +0  ,  4+2+0.5+0  ,  0+2+ 1 +0] 
                %y[n]=[    3      ,       5     ,    6.5      ,     3     ]

cconv_octave = cconv(x,h,length(x));
cconv_yo = convolucionCircular(x,h);
##conv_Linealoctave = conv(x,h)
##cconv_Lineal = convolucionLineal(x,h)

disp('Comparaciones')
disp('Convolucion circular de octave')
disp(cconv_octave)
disp('Convolucion circular mia')
disp(cconv_yo)

figure(1)
stem(x,'r-*')
hold on
stem(h,'b-+')
stem(cconv_yo,'k-o')
legend('x','h')