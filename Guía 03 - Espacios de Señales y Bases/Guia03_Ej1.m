#PROCESAMIENTO DIGITAL DE SEÑALES [2024]
#GUIA 03 - EJERCICIO 1
##pkg load signal;

clear all; clc; clf;
ti = -1;   %Tiempo inicial
tf = 1;    %Tiempo final
phi = 0;   %Desfase
A = 1;     %Amplitud
fs = 1;    %Frecuencia de la señal senoidal
fm = 50;   %Frecuencia de muestreo

##  SEÑALES
[t,x_senoidal] = senoidal (ti,tf,fm,fs,A,phi);
x_rampa = t;
[t,x_cuadrada] = cuadrada (ti,tf,fm,fs,A,phi);
x_aleatoria = 2*rand(1, length(t)) - 1; % Señal aleatoria entre -1 y 1

## GRÁFICAS
figure(1)
hold on
grid on
stem(t,x_senoidal,'r-o')
stem(t,x_rampa,'g-o')
stem(t,x_cuadrada,'b-o')
stem(t,x_aleatoria,'c-o')

#===============================INCISO 1========================================
#-------------------------------------------------------------------------------
% Cálculo de valores característicos: SENOIDAL
disp('=============================================');
disp('Valores característicos de la señal senoidal:');
valor_medio_senoidal = mean(x_senoidal)
##valor_medio_senoidal = sum(x_senoidal)/(length(x_senoidal))
valor_max_senoidal = max(x_senoidal)
valor_min_senoidal = min(x_senoidal)
amplitud_senoidal = (valor_max_senoidal - valor_min_senoidal)/2
##amplitud_senoidal = A
amplitud_senoidal = norm(x_senoidal,inf)
energia_senoidal = sum(x_senoidal.^2)
##energia_senoidal = norm(x_senoidal)^2
##energia_senoidal = x_senoidal*x_senoidal'
accion_senoidal = sum(abs(x_senoidal))
##accion_senoidal = norm(x_senoidal,1)
potencia_media_senoidal = energia_senoidal / length(t)
rms_senoidal = sqrt(potencia_media_senoidal)
##rms_senoidal = rms(x_senoidal)
disp('=============================================');

#-------------------------------------------------------------------------------
% Cálculo de valores característicos: RAMPA
disp('=============================================');
disp('Valores característicos de la señal rampa:');
valor_medio_rampa = mean(x_rampa)
valor_max_rampa = max(x_rampa)
valor_min_rampa = min(x_rampa)
amplitud_rampa = (valor_max_rampa - valor_min_rampa)/2
energia_rampa = sum(x_rampa.^2)
accion_rampa = sum(abs(x_rampa))
potencia_media_rampa = energia_rampa / length(t)
rms_rampa = sqrt(potencia_media_rampa)
disp('=============================================');

#-------------------------------------------------------------------------------
% Cálculo de valores característicos: CUADRADA
disp('=============================================');
disp('Valores característicos de la señal cuadrada:');
valor_medio_cuadrada = mean(x_cuadrada)
valor_max_cuadrada = max(x_cuadrada)
valor_min_cuadrada = min(x_cuadrada)
amplitud_cuadrada = (valor_max_cuadrada - valor_min_cuadrada)/2
energia_cuadrada = sum(x_cuadrada.^2)
accion_cuadrada = sum(abs(x_cuadrada))
potencia_media_cuadrada = energia_cuadrada / length(t)
rms_cuadrada = sqrt(potencia_media_cuadrada)
disp('=============================================');

#-------------------------------------------------------------------------------
% Cálculo de valores característicos: ALEATORIA
disp('=============================================');
disp('Valores característicos de la señal aleatoria:');
valor_medio_aleatoria = mean(x_aleatoria)
valor_max_aleatoria = max(x_aleatoria)
valor_min_aleatoria = min(x_aleatoria)
amplitud_aleatoria = (valor_max_aleatoria - valor_min_aleatoria)/2
energia_aleatoria = sum(x_aleatoria.^2)
accion_aleatoria = sum(abs(x_aleatoria))
potencia_media_aleatoria = energia_aleatoria / length(t)
rms_aleatoria = sqrt(potencia_media_aleatoria)
disp('=============================================');
