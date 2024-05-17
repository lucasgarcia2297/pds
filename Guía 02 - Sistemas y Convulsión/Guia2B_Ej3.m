#PROCESAMIENTO DIGITAL DE SEÑALES [2024]
#GUIA 2.2 (Convolución) - EJERCICIO 1
clc; clf; clear all;

a = 0.25;
N = 5;

#Respuestas al impulso
for n = 1:N
  ha(n) = sin(8*n);
  hb(n) = a^n;
endfor

#Entrada
x = zeros(1,N);
delta = zeros(1,N);
delta(1) = 1;
x(1) = delta(1);
for n = 2:N
  x(n) = delta(n) - a*delta(n - 1);
endfor

convxha = convolucionLineal(x,ha);
convhahb = convolucionLineal(convxha,hb);

convxhb = convolucionLineal(x,hb);
convhbha = convolucionLineal(convxhb,ha);

figure(1)
stem(convhahb,'b-*');
hold on
stem(convhbha,'r-o');

disp("Comparaciones -> ");
disp("De izquierda a derecha -> ")
disp(convhahb)
disp("De derecha a izquierda -> ")
disp(convhbha)

disp('CONVOLUCION -> Forma natural de comportarse de un sistema LTI, como respuesta a un estimulo de entrada');