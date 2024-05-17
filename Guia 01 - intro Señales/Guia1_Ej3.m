#PROCESAMIENTO DIGITAL DE SEÑALES [2024]
#GUIA 01 - EJERCICIO 3
clear all; clc; clf;

#Datos observados en la gráfica:
ti = 0;    %Tiempo inicial observado
tf = 0.1;  %Tiempo final observado
A = 3;     %Amplitud observada

#* En la gráfica se ven 80 muestras en 0.1s (40*2ciclos de señal). Por lo tanto, 
#    en 1s tendremos 800muestras, entonces fm=800Hz
fm = 800;  %Frecuencias de muestreo

#* En la gráfica se ve que la señal repite su ciclo 2 veces
#    en 0.1s. Por lo tanto, 2/0.1 = 20 => fs = 20Hz
fs = 20;   %20Hz Frecuencia de la señal


# Cálculo del ángulo de fase phi=-2*pi*fs*t1
Tm = 1/fm; %priodo de la muestra;
t1 = 5*Tm; %es el primer cruce por cero de la señal (5 veces el periodo de la muestra Tm).
phi = -2*pi*fs*t1 %Angulo de fase

#Verificación:
[t,x] = senoidal (ti,tf,fm,fs,A, phi);
figure(1)
stem(t,x,'b-o','MarkerSize',4)
grid on
legend('Señal senoidal')
hold off
%La gráfica queda idéntica a la del pdf.