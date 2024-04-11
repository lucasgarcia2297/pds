#PROCESAMIENTO DIGITAL DE SEÑALES [2024]
#GUIA 01 - EJERCICIO 1

ti = -1;   %Tiempo inicial
tf = 1;    %Tiempo final
fm = 100;  %Frecuencia de muestre 100Hz
fs = 2;    %Frecuencia de la senoidal 
phi = 0;   %Desfase
A = 1;     %Amplitud

#===============================INCISO 1========================================
[t,x] = senoidal(ti,tf,fm,fs,A,phi);
figure(1)
stem(t,x,'r-o');
grid on
#===============================================================================
#===============================INCISO 2========================================
[t,x] = sinc(ti,tf,fm,fs);
figure(2)
stem(t,x,'b-o');
grid on
#===============================================================================
#===============================INCISO 3========================================
[t,x] = cuadrada(ti,tf,fm,fs,phi);
figure(3)
stem(t,x,'g-o');
grid on
#===============================================================================