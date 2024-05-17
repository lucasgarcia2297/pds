#PROCESAMIENTO DIGITAL DE SEÑALES [2024]
#GUIA 01 - EJERCICIO 4
clear all; clc; clf;

fs = 5;  %5Hz Frecuencia de la señal
ti = 0;  %Tiempo inicial
tf = 1;  %Tiempo final
A = 1;   %Amplitud
phi=0;   %Angulo de fase

%Frecuencias de muestreo
fm1 = 100;  %100 muestras en 1segundo
fm2 = 25;
fm3 = 10;
fm4 = 4;
fm5 = 1;
fm6 = 0.5;  %1 muestra cada 2 segundos

[t1,x1] = senoidal (ti,tf,fm1,fs,A, phi);
[t2,x2] = senoidal (ti,tf,fm2,fs,A, phi);
[t3,x3] = senoidal (ti,tf,fm3,fs,A, phi);
[t4,x4] = senoidal (ti,tf,fm4,fs,A, phi);
[t5,x5] = senoidal (ti,tf,fm5,fs,A, phi);
[t6,x6] = senoidal (ti,tf,fm6,fs,A, phi);

figure(1)
subplot(3,2,1)
plot(t1,x1,'k-o','MarkerSize',5) %se toman 100 muestras en 1 seg
grid on
xlim([ti,tf]);
ylim([-A,A]);
legend('fm1 = 100')

subplot(3,2,2)
plot(t2,x2,'b-o','MarkerSize',5) %se toman 25 muestras en 1 seg, la señal pierde la forma senoidal
grid on
xlim([ti,tf]);
ylim([-A,A]);
legend('fm2 = 25')

subplot(3,2,3)
plot(t3,x3,'c-o','MarkerSize',5) %se toman 10 muestras en 1 seg que todas coinciden en x=0
grid on
xlim([ti,tf]);
ylim([-A,A]);
legend('fm3 = 10')

subplot(3,2,4)
plot(t4,x4,'r-o','MarkerSize',5) %se toman 4 muestras en 1 seg
grid on
xlim([ti,tf]);
ylim([-A,A]);
legend('fm4 = 4')

subplot(3,2,5)
plot(t5,x5,'g-o','MarkerSize',5) %Se observa 1 sola muestra al inicio t=0
grid on
xlim([ti,tf]);
ylim([-A,A]);
legend('fm5 = 1')

subplot(3,2,6)
plot(t6,x6,'m-o','MarkerSize',5) %No se observa ninguna muestra porque se toma una cada 2seg
grid on
xlim([ti,tf]);
ylim([-A,A]);
%legend('fm6 = 0.5')
hold off



figure(2)
hold on

subplot(3,2,1)
stem(t1,x1,'k-o','MarkerSize',5) %se toman 100 muestras en 1 seg
grid on
xlim([ti,tf]);
ylim([-A,A]);
legend('fm1 = 100')

subplot(3,2,2)
stem(t2,x2,'b-o','MarkerSize',5) %se toman 25 muestras en 1 seg, la señal pierde la forma senoidal
grid on
xlim([ti,tf]);
ylim([-A,A]);
legend('fm2 = 25')

subplot(3,2,3)
stem(t3,x3,'c-o','MarkerSize',5) %se toman 10 muestras en 1 seg que todas coinciden en x=0
grid on
xlim([ti,tf]);
ylim([-A,A]);
legend('fm3 = 10')

subplot(3,2,4)
stem(t4,x4,'r-o','MarkerSize',5) %se toman 4 muestras en 1 seg
grid on
xlim([ti,tf]);
ylim([-A,A]);
legend('fm4 = 4')

subplot(3,2,5)
stem(t5,x5,'g-o','MarkerSize',5) %Se observa 1 sola muestra al inicio t=0
grid on
xlim([ti,tf]);
ylim([-A,A]);
legend('fm5 = 1')

subplot(3,2,6)
stem(t6,x6,'m-o','MarkerSize',5) %No se observa ninguna muestra porque se toma una cada 2seg
grid on
xlim([ti,tf]);
ylim([-A,A]);
legend('fm6 = 0.5')

hold off