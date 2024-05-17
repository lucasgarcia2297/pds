#PROCESAMIENTO DIGITAL DE SEÑALES [2024]
#GUIA 2.2 (Convolución) - EJERCICIO 1
clc; clf; clear all;
pkg load signal;
#===============================INCISO 1========================================
##x=[0.25 1 0.75 1.25 1.6 1 0.75 0.6 0.2 0.1 -0.56 -0.34 0.12];
##h=[   0 1   2  1.5 0];
##x=[ 1 2 4 0 1.24 ];
##h=[ 0 1 2 0 1.5 3];
x=[ 1 2 3 0 2];
h=[ 1 0 2];

#h = h=[ 0 1 2 0 1.5 3]
#x = 1

#============================================================
## CONVOLUCIÓN LINEAL
#============================================================
##y[n] = x[n]*h[n] (x convolución h)

##h[n]x[1] = 0 1 2 0  1.5  3
##h[n]x[2] =   0 2 4  0    3     6
##h[n]x[3] =     0 4  8    0     6     12
##h[n]x[4] =       0  0    0     0      0  0
##h[n]x[5] =          0    1.24  2.48   0  1.86 3.72
## ----------------------------------------------------
##    y[n]=[ 0 1 4 8  9.5  7.24 14.48  12  1.86 3.72]  

## CONVOLUCIÓN LINEAL
#============================================================
##y[n] = x[n]*h[n] (x convolución h)

## x[-n] = [ 1.24 0 4 2 1];
##  h[n] = [ 0    1     2      0   1.5   3   ];
##h[n]x[1] =      0    1.24  2.48   0    1.86  3.72
##h[n]x[2] =            0      0    0    0     0     0
##h[n]x[3] =                   0    4    8     0     6     12
##h[n]x[4] =                        0    2     4     0      3     6
##h[n]x[5] =                             0     1     2      0    1.5    3
## ----------------------------------------------------
##    y[n]=[0  1.24  2.48 4  11.86  8.72 8  15  7.5 3]  

#============================================================

#============================================================
## CONVOLUCIÓN CIRCULAR: tomando el tamaño de x[n] n=5
#============================================================

##x=[ 1 2 4 0 1.24 ]; 
##h=[ 0 1 2 0 1.5 (3)];  (tomo los primeros n=5 valores de h[n])
##y[n] = x[n]*h[n] (x convolución h) 

##h[n]x[1] =  0     1     2   0     1.5  
##h[n]x[2] =  3     0     2   4     0        
##h[n]x[3] =  0     6     0   4     8         
##h[n]x[4] =  0     0     0   0     0        
##h[n]x[5] =  1.24  2.48  0   1.86  0      
## ----------------------------------------------------
##    y[n]=[  4.24  9.48  4   5.86  9.5]  
#============================================================

#============================================================
## CONVOLUCIÓN CIRCULAR: tomando el tamaño de h[n] n=6
#============================================================
##x=[ 1 2 4 0 1.24 0];   (Completo con 0's el x[n])
##h=[ 0 1 2 0 1.5  3];
##y[n] = x[n]*h[n] (x convolución h) 

##h[n]x[1] =  0     1  2     0     1.5  3
##h[n]x[2] =  6     0  2     4     0    3      
##h[n]x[3] =  6    12  0     4     8    0     
##h[n]x[4] =  0     0  0     0     0    0     
##h[n]x[5] =  2.48  0  1.86  3.72  0    1.24 
##h[n]x[5] =  0     0  0     0     0    0 
## ----------------------------------------------------
##    y[n]=[ 14.48 13  5.86 11.72  9.5  7.24]  
#============================================================
figure(1)
hold on
grid on
subplot(2,2,1)
stem(x,'r-*')
legend('x[n]')
subplot(2,2,2)
stem(h,'b-+')
legend('h[n]')
% Convolución lineal:
convLineal = convolucionLineal(x,h);
##convCirc = convolucionCircular(x,h);
subplot(2,2,3)
stem(convLineal,'k-*')
legend('convolución lineal')
hold off

% convolución de Octave:
convLinealOctave = conv(x,h)'
convCircOctave = cconv(x,h,length(h))'
convCircOctave2 = cconv(x,h,length(x))'
figure(2)
stem(x,'r-*')
hold on
grid on
stem(h,'b-+')
stem(convLineal,'k-*')
title('Comparación con conv(x,h)')
plot(convLinealOctave,'m-*','linewidth',1)
legend('')


##subplot(1,2,2)
##hold on
##title('Comparación con filter(A,B,x)')
##stem(conv_lineal_yo,'m-*','linewidth',1)
##
##%{
## FUNCIÓN FILTER:
##    A(1) * y(n) = B(1)*x(n) + B(2)*x(n-1) + ... - A(2)*y(n-1) - ...
## En la convolución lineal de mis señales de 4 elementos, tengo:
##    y(n) = h(n)*x(1) + h(n-1)*x(2) + h(n-2)*x(3) + h(n-3)*x(4)
## Evaluando para n = 1:length(x) = 1:4
##    y(1) = h(1)*x(1)
##    y(2) = h(1)*x(2) + h(2)*x(1)
##    y(3) = h(1)*x(3) + h(2)*x(2) + h(3)*x(1)
##    y(4) = h(1)*x(4) + h(2)*x(3) + h(3)*x(2) + h(4)*x(1)
## Notar que me faltan y(5:7)
##%}
##
##% Luego, mi vector A deberá ser [1 0 0 0 ..] porque no tengo salidas anteriores.
A=zeros(1,length(x));
A(1) = 1;
% Mi vector B deberá ser la h con la que convolucioné.
B = h;

y = filter(B,A,x);
plot(y,'g-o','linewidth',1)

##x = [1 2 0.5 4 0 0 0];
##y = filter(B,A,x);
##plot(y,'c-','linewidth',1)
##legend('Funcion propia','Funcion filter','Funcion filter 2','location','northwest')
