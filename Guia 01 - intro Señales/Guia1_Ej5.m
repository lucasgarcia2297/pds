#PROCESAMIENTO DIGITAL DE SEÑALES [2024]
#GUIA 01 - EJERCICIO 5
clear all; clc; clf;

fs = 4000;  %Frecuencia de la señal
tf = 1;  %Tiempo final
ti = 0;  %Tiempo inicial
A = 1;   %Amplitud
phi=0;   %Angulo de fase

%Frecuencias de muestreo
fm1 = 129; 
[t1,x1] = senoidal (ti,tf,fm1,fs,A, phi);

figure(1)
stem(t1,x1,'k-o','MarkerSize',3)
grid on
ylim([-A,A])
legend('fm = 129Hz')


%============Comparaciones====================
%Frecuencias de prueba
fm2 = fm1/2; %fm2 = 64.5
fm3 = fm1*2; %fm3 = 258
fm4 = fs/2+1;  %fm4 = 2001
fm5 = fs+1;    %fm5 = 4001
fm6 = fs*2+1;  %fm6 = 8001


[t2,x2] = senoidal (ti,tf,fm2,fs,A, phi);
[t3,x3] = senoidal (ti,tf,fm3,fs,A, phi);
[t4,x4] = senoidal (ti,tf,fm4,fs,A, phi);
[t5,x5] = senoidal (ti,tf,fm5,fs,A, phi);
[t6,x6] = senoidal (ti,tf,fm6,fs,A, phi);


figure(2)
title('Comparación para distintas Frecuencias de Muestreo')
subplot(3,2,3)
plot(t1,x1,'k-o','MarkerSize',5) 
grid on
ylim([-A,A])
legend('fm1 = 129')

subplot(3,2,1)
plot(t2,x2,'b-o','MarkerSize',5) 
grid on
ylim([-A,A]);
legend('fm2 = 64.5')

subplot(3,2,5)
plot(t3,x3,'c-','MarkerSize',5) 
grid on
ylim([-A,A]);
legend('fm3 = 258')

subplot(3,2,2)
plot(t4,x4,'r-o','MarkerSize',5) 
grid on
ylim([-A,A]);
legend('fm4 = 2001')

subplot(3,2,4)
plot(t5,x5,'g-o','MarkerSize',5) 
grid on
ylim([-A,A]);
legend('fm5 = 4001')

subplot(3,2,6)
plot(t6,x6,'m-o','MarkerSize',5) 
grid on
ylim([-A,A]);
legend('fm6 = 8001')
hold off



figure(3)

subplot(3,2,3)
stem(t1,x1,'k-o','MarkerSize',3) 
grid on
ylim([-A,A]);
legend('fm1 = 129')

subplot(3,2,1)
stem(t2,x2,'b-o','MarkerSize',3) %se toman 25 muestras en 1 seg, la señal pierde la forma senoidal
grid on
ylim([-A,A]);
legend('fm2 = 64,5')

subplot(3,2,5)
stem(t3,x3,'c-o','MarkerSize',3) %se toman 10 muestras en 1 seg que todas coinciden en x=0
grid on
ylim([-A,A]);
legend('fm3 = 258')

subplot(3,2,2)
stem(t4,x4,'r-','MarkerSize',3) %se toman 4 muestras en 1 seg
grid on
ylim([-A,A]);
legend('fm4 = 2001')

subplot(3,2,4)
stem(t5,x5,'g-','MarkerSize',3) %Se observa 1 sola muestra al inicio t=0
grid on
ylim([-A,A]);
legend('fm5 = 4001')

subplot(3,2,6)
stem(t6,x6,'m-','MarkerSize',3) %No se observa ninguna muestra porque se toma una cada 2seg
grid on
ylim([-A,A]);
legend('fm6 = 8001')



%===============================================
