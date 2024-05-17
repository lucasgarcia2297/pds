#PROCESAMIENTO DIGITAL DE SEÑALES [2024]
#GUIA 2.1 (SISTEMAS) - EJERCICIO 4
clc; clf; clear all;

xn = [1,0,0,0,0,0,0,0,0,0];
t = linspace(1,10,10);

#===============================INCISO 1========================================

yn = zeros(1,length(xn));
yn(1) = 0;
yn(2) = 1;
for n = 3:length(xn)
  yn(n) = xn(n) + yn(n-2);
endfor
figure(1)
stem(xn,'r-o')
hold on
plot(yn,'b-o')
grid on
grid minor
legend('Entrada','Salida')
title('Inciso a')
#===============================================================================

#===============================INCISO 2========================================

yn = zeros(1,length(xn));
yn(1) = 0;
for n = 2:length(xn)
  yn(n) = xn(n) + 0.5*xn(n-1);
endfor
figure(2)
stem(xn,'r-o')
hold on
plot(yn,'b-o')
grid on
grid minor
legend('Entrada','Salida')
title('Inciso b')

#===============================================================================
#===============================================================================
#===============================INCISO 3========================================

yn = zeros(1,length(xn));
yn(1) =0;
yn(2) = 0;
for n = 3:length(xn)
  yn(n) = xn(n) + 0.5*yn(n-1) - 0.25*yn(n-2);
endfor
figure(3)
stem(xn,'r-o')
hold on
plot(yn,'b-o')
grid on
grid minor
legend('Entrada','Salida')
title('Inciso c')
#===============================================================================
