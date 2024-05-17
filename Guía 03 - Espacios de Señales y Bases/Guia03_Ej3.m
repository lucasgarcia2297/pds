#PROCESAMIENTO DIGITAL DE SEÑALES [2024]
#GUIA 03 - EJERCICIO 3
%{
  Ejercicio 3: (?) Calcule el error cuadrático total de aproximaci´on en el ejemplo con funciones de Legendre bajo las siguientes condiciones:
  1. con los coeficientes calculados en el ejemplo, 
  2. con peque˜nas variaciones en torno a estos coeficentes ?, construyendo una gr´afica en 3D con la variaci´on en los coeficientes en x, y y el error cuadr´atico total en z,
  3. con m´as coeficientes ?, para comprobar c´ omo se reduce el error cuadr´atico total al aumentar los coeficientes.}
%}
clc; clf; clear all;

ti = -1;
tf = 1;
fs = 0.5;
fm = 100;
phi = 0;
A = 1; 

[t,y] = cuadrada(ti,tf,fm,fs,A,phi);
y=y';

#===============================INCISO 1========================================
##
### FUNCIONES DE LEGENDRE: (pág 62 - Libro de cátedra Señales)
### Funcion de Legendre de phi0 a phi3 evaluadas en t
##%phi_n = [phi0  ,   phi1,   phi2,   phi3];
phi_3 = [ones(length(t),1)*1/sqrt(2), sqrt(3/2)*t' ,sqrt(5/2)*((3/2)*t'.^2-(1/2)), sqrt(7/2)*((5/2)*t'.^3-(3/2)*t')];
##
### Coeficientes (alpha_k) del ejemplo 
##%alphas = [a0, a1, a2, a3]
alphas3 = [0, sqrt(3/2), 0, -sqrt(7/32)];
##yaprox_1 = alphas(2)*(sqrt(3/2)*t) + alphas(4)*(sqrt(7/2)*((5/2)*t.^3 - (3/2)*t));
y_aprox3 = phi_3*alphas3';      %Escribo y_aprox como combinación lineal de los coeficientes por las funciones de Legendre

##y_aprox= (45/16)*t'-(35/16)*t'.^3; %Expresión obtenida haciendo las cuentas


## GRÁFICAS 
figure(1)
stem(t,y,'k-o')
hold on
grid on
stem(t,y_aprox3','r-*')
##stem(t,y_aprox2','c-o')
hold off

disp('=============================INCISO 1=====================================')
errorCuadraticoTotal = norm((y-y_aprox3))^2
printf('Error Cuatrático Total: %f\n', errorCuadraticoTotal )
#===============================================================================

###===============================INCISO 2========================================
##alphaOptimo1 = 1.2247
##alphaOptimo3 = -0.4677
min=-50;
max=50;
variacion = min:0.5:max-0.5;

alphasB(:,2) = variacion;
alphasB(:,4) = variacion;


disp('=============================INCISO 2=====================================')

errorCuadraticoTotalB = zeros(length(alphasB(:,1)),length(alphasB(1,:)));

for i=1:length(alphasB(:,2))
  for j=1:length(alphasB(:,4))
    y_aproxB(:,j) = phi_3(:,2)*alphasB(i,2)+phi_3(:,4)*alphasB(j,4);   
    errorCuadraticoTotalB(i,j) = norm((y-y_aproxB(:,j)),2)^2;
endfor

endfor

X = alphasB(:,2);
Y = alphasB(:,4);
Z = errorCuadraticoTotalB;
surf(X,Y,Z')

###===============================================================================

#===============================INCISO 3========================================
alphas5 = [0, sqrt(3/2), 0, -sqrt(7/32), 0, sqrt(11/128)];
phi_5 = [ones(length(t),1)*1/sqrt(2), sqrt(3/2)*t' ,sqrt(5/2)*((3/2)*t'.^2-(1/2)), sqrt(7/2)*((5/2)*t'.^3-(3/2)*t'), (3*sqrt(2)*35*t'.^4-30*t'.^2+3)/16, (sqrt(22)*t'.*(63*t'.^4-70*t'.^2+15))/16];
y_aprox5 = phi_5*alphas5';


alphas7 = [0, sqrt(3/2), 0, -sqrt(7/32), 0, sqrt(11/128), 0 , -(5*sqrt(15)/(64*sqrt(2)))];
phi_7 = [ones(length(t),1)*1/sqrt(2), sqrt(3/2)*t' ,sqrt(5/2)*((3/2)*t'.^2-(1/2)), sqrt(7/2)*((5/2)*t'.^3-(3/2)*t'), (3*sqrt(2)*35*t'.^4-30*t'.^2+3)/16, (sqrt(22)*t'.*(63*t'.^4-70*t'.^2+15))/16, zeros(length(t),1), (sqrt(30)*t'.*(429*t'.^6-693*t'.^4+315*t'.^2-35))/32];
y_aprox7 = phi_7*alphas7';

## GRÁFICAS 
figure(3)
stem(t,y,'k-o')
hold on
grid on
stem(t,y_aprox3','r-*')
stem(t,y_aprox5','g-o')
stem(t,y_aprox7','b-+')
legend('y-Original','y_aprox3','y_aprox5','y_aprox7')

hold off

disp('=============================INCISO 3=====================================')
errorCuadraticoTotal3 = norm((y-y_aprox3))^2;
printf('Error Cuadrrático Total: %f\n', errorCuadraticoTotal3 )
errorCuadraticoTotal5 = norm((y-y_aprox5))^2;
printf('Error Cuadrrático Total: %f\n', errorCuadraticoTotal5 )
errorCuadraticoTotal7 = norm((y-y_aprox7))^2;
printf('Error Cuadrrático Total: %f\n', errorCuadraticoTotal7 )
#===============================================================================
