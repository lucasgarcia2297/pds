#PROCESAMIENTO DIGITAL DE SE�ALES [2024]
#GUIA 01 - EJERCICIO 3
clear all; clc; clf;

#Datos observados en la gr�fica:
ti = 0;    %Tiempo inicial observado
tf = 0.1;  %Tiempo final observado
A = 3;     %Amplitud observada

#* En la gr�fica se ven 80 muestras en 0.1s (40*2ciclos de se�al). Por lo tanto, 
#    en 1s tendremos 800muestras, entonces fm=800Hz
fm = 800;  %Frecuencias de muestreo

#* En la gr�fica se ve que la se�al repite su ciclo 2 veces
#    en 0.1s. Por lo tanto, 2/0.1 = 20 => fs = 20Hz
fs = 20;   %20Hz Frecuencia de la se�al


# C�lculo del �ngulo de fase phi=-2*pi*fs*t1
Tm = 1/fm; %priodo de la muestra;
t1 = 5*Tm; %es el primer cruce por cero de la se�al (5 veces el periodo de la muestra Tm).
phi = -2*pi*fs*t1 %Angulo de fase

#Verificaci�n:
[t,x] = senoidal (ti,tf,fm,fs,A, phi);
figure(1)
stem(t,x,'b-o','MarkerSize',4)
grid on
legend('Se�al senoidal')
hold off
%La gr�fica queda id�ntica a la del pdf.