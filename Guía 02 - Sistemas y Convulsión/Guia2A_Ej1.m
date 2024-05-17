#PROCESAMIENTO DIGITAL DE SEÑALES [2024]
#GUIA 2.1 (SISTEMAS) - EJERCICIO 1
clc; clf; clear all;
#===============================INCISO 1========================================
ti = 0;
tf = 2;
fm = 10;
T = 1/fm;
n = ti:T:tf-T;
fs = 2;
# g[n] = Asin(wnT) 
A = 1; 
w=2*pi*fs;

##n=1:1:10;
n=4:1:13;
g = A*sin(w*n*T);

##x =-A*sin(w*n'*T);
##x = cos(n);
x = 1:1:10;

#Graficar
figure(1)
plot(n,g,'r-+');   %g[n]
hold on
grid on
plot(n,x,'b-*');   %x[n]  
#Sistema y[n] = g[n]x[n] 
y1 = g.*x;
plot(n,y1,'k-o')
legend('g[n]','x[n]','y[n]')
hold off

## CARACTERÍSTICAS:
##  *Causal: Salida depende de entradas actuales. 
##  *Lineal: Ya que se cumple la homogeneidad y superposición.
##  *Variante: Coeficientes de la ecuación no son constantes.  -> x[n-k] => y[n-k] != A*sin(w*(n-k)*T)x[n-k];
##  *No tiene memoria: Salida no depende de entradas anteriores.
##
##
#===============================================================================
#===============================INCISO 2========================================
n0 = 2;
nx = length(x);
y2 = zeros(1,nx);
for i = 1:nx
  for k = i-n0:i+n0
    if (k >= 1 && k <= nx)
      % y[n] = sum(x[k]) para k=n-n0:n+n0
      y2(i) += x(k);
    endif
  endfor
endfor
#Graficar
figure(2)
stem(n,x,'b-*');   %x[n]
hold on
grid on
#Sistema y[n] = sum(x[k]) 
stem(n,y2,'k-o')
legend('x[n]','y[n]')
hold off

## CARACTERÍSTICAS:
##  *No Causal: ya que para valores de n0 > 0 el sistema toma valores posteriores    
##  *Lineal: Ya que se cumple la homogeneidad y superposición.
##  *Invariante: Aplicando la definición se llega a que cumple con invarianza temporal.
##  *Tiene memoria: La salida depende de entradas anteriores.

#===============================================================================
#===============================INCISO 3========================================
y3 = x+2;
#Graficar
figure(3)
stem(n,x,'b-*');   %x[n]
hold on
grid on
#Sistema y[n] = x[n]+2 
stem(n,y3,'k-o')
legend('x[n]','y[n]')
hold off

## CARACTERÍSTICAS:
##  *Causal: La salida sólo depende de entradas actuales. 
##  *No Lineal: Ya que no cumple la homogeneidad.
##  *Invariante: Aplicando la definición se llega a que cumple con invarianza temporal. x[n-k] =>y[n-k] = x[n-k] + 2
##  *No tiene memoria: Salida no depende de entradas anteriores.

#===============================================================================
#===================================INCISO 4========================================
y4 = n.*x;
#Graficar
figure(4)
stem(n,x,'b-*');   %x[n]
hold on
grid on
#Sistema y[n] = n*x[n] 
stem(n,y4,'k-o')
legend('x[n]','y[n]')
hold off

## CARACTERÍSTICAS:
##  *Causal: La salida sólo depende de entradas actuales. 
##  *Lineal: ya que cumple con la homogeneidad y la superposición.
##  *Variante: Coeficientes de la ecuación (n) no constante.
##  *No tiene memoria: Salida no depende de entradas anteriores.
#===============================================================================