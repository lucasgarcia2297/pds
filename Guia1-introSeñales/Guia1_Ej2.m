#PROCESAMIENTO DIGITAL DE SEÑALES [2024]
#GUIA 01 - EJERCICIO 2
clc; clf; clear all;

ti = -2;   %Tiempo inicial
tf = 1;    %Tiempo final
fm = 100;  %Frecuencia de muestre 100Hz
fs = 1;    %Frecuencia de la senoidal 
phi = 0;   %Desfase
A = 1;     %Amplitud

#===============================INCISO 1========================================
[t,x] = senoidal(ti,tf,fm,fs,A,phi);
[t2] = inversionT(t); %inversion temporal
figure(1)
stem(t,x,'r-o')
hold on
stem(t2,x,'b-o')
legend('Senoidal Original','Inversión Temporal de Senoidal')
#===============================================================================
#===============================INCISO 2========================================
%[t,x] = senoidal(ti,tf,fm,fs,A,phi);
[xa] = rectificMedOnda(x);
[xb] = rectificOndaCompleta(x);

figure(2)

subplot(3,1,1)
stem(t,x,'r-o')
ylim([-A;A]);
legend('Senoidal Original')

hold on

subplot(3,1,2)
stem(t,xa,'g-o')
ylim([-A;A]);
legend('Rectificación de Media Onda')


subplot(3,1,3)
stem(t,xb,'b-o')
ylim([-A;A]);
legend('Rectificación de Onda Completa')

#===============================================================================
#===============================INCISO 3========================================
[t,x] = senoidal(ti,tf,fm,fs,A,phi);
N = 8;
[x2] = cuantizacionN(x,N,A);
figure(3)
plot(t,x,'r-')
hold on
plot(t,x2,'b-*')
legend('Senoidal Original','Cuantizador 8 Niveles')

#===============================================================================
