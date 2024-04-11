#PROCESAMIENTO DIGITAL DE SEÑALES [2024]
#GUIA 01 - EJERCICIO 6
clear all; clc; clf;

tini=0;   %Tiempo inicial
tfin=1;   %Tiempo final
fm=10;    %Frecuencia de muestreo original
T=1/fm;   %Periodo de muestreo original
fs=1;     %Frecuencia de la señall
A=1;      %Amplitud
phi=0;    %Ángulo de fase

# SENOIDAL ORGINAL:
[t,x]=senoidal(tini,tfin,fm,fs,A,phi);

# SEÑAL NUEVA:
factor = 4;
fmi=factor*fm;  %Nueva Frecuencia de muestreo
Ti=1/fmi;       %Nuevo Periodo de muestreo
ti=tini:Ti:tfin-Ti; % intervalo de tiempo nuevo

##====INTERPOLACIÓN==============
m = length(ti);  %Tamaño tiempo nuevo
n = length(t);   %Tamaño tiempo original
xi = zeros(1,m); %Señal sobremuestreada vacía

for i=1:m
  for j=1:n
      index = (ti(i) - t(j))/T;
      % INTERPOLADOR SINC:
##      xi(i) += x(j) * interpolador_sinc(0.5,index);
      % INTERPOLADOR LINEAL:
##      xi(i) += x(j) * interpolador_lineal(index);
      % INTERPOLADOR ESCALON:
       xi(i) += x(j) * interpolador_escalon(index);
    
##    if i==2
##      index = index
##      xj = x(j)
##      interSinc = interpolador_sinc(0.5,index)
##      xii = xi(i)
##    endif
 
 endfor
endfor

#===================GRÁFICAS======================
#------------------Figura 1 ----------------------

figure(1)
subplot(2,1,1)
stem(t,x,'r-')
grid on
legend('señal Original')

subplot(2,1,2)
stem(ti,xi,'b-')
grid on
legend('Señal sobremuestreada')
#-------------------------------------------------
#------------------Figura 2 ----------------------
figure(2)
plot(t,x,'r-+')
grid on
hold on
plot(ti,xi,'b-*')
legend('Señal Original','Señal sobremuestreada')
#-------------------------------------------------
