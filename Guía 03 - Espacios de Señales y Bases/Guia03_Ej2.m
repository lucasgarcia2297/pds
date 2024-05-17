#PROCESAMIENTO DIGITAL DE SEÑALES [2024]
#GUIA 03 - EJERCICIO 2

clear all; clc; clf;

disp('==================SENOIDALES IGUALES==================')

tia = 0;
tfa = 2;
fsa = 1;
fma = 100;
fia = 0;
Aa = 4; 

[t1,y1] = senoidal(tia,tfa,fma,fsa,Aa,fia);

tib = 0;
tfb = 2;
fsb = 1;
fmb = 100;
fib = 0;
Ab = 4; 

[t2,y2] = senoidal(tib,tfb,fmb,fsb,Ab,fib);

figure(1)
plot(t1,y1,'r')
hold on
plot(t2,y2,'b')
grid on
grid minor
title('SENOIDALES IGUALES')

disp("Produco interno")
prod_int = productoInterno(y1,y2)
prod_int2 = y1*y2'

disp('==================SENOIDALES FASE DISTINTA==================')
tia = 0;
tfa = 2;
fsa = 1;
fma = 100;
fia = -pi/4;
Aa = 4; 

[t1,y1] = senoidal(tia,tfa,fma,fsa,Aa,fia);

tib = 0;
tfb = 2;
fsb = 1;
fmb = 100;
fib = pi/4;
Ab = 4; 

[t2,y2] = senoidal(tib,tfb,fmb,fsb,Ab,fib);

figure(2)
plot(t1,y1,'r')
hold on
plot(t2,y2,'b')
grid on
grid minor
legend('phi1 = -pi/4', 'phi2 = pi/4')
title('SENOIDALES DE FASE DISTINTA')

disp("Produco interno")
prod_int = productoInterno(y1,y2)
prod_int2 = y1*y2'

disp('==================SENOIDALES AMPLITUD DISTINTA Y FASE DISTINTA==================')
tia = 0;
tfa = 2;
fsa = 1;
fma = 100;
fia = -pi/4;
Aa = 2; 

[t1,y1] = senoidal(tia,tfa,fma,fsa,Aa,fia);

tib = 0;
tfb = 2;
fsb = 1;
fmb = 100;
fib = pi/4;
Ab = 3; 

[t2,y2] = senoidal(tib,tfb,fmb,fsb,Ab,fib);

figure(3)
plot(t1,y1,'r')
hold on
plot(t2,y2,'b')
grid on
grid minor
legend('A1 = 2, phi1= -pi/4', 'A2 = 3, phi2=pi/4')
title('SENOIDALES DE AMPLITUD Y FASE DISTINTA ')


disp("Produco interno")
prod_int = productoInterno(y1,y2)
prod_int2 = y1*y2'

disp('==================SENOIDALES DISTINTA FRECUENCIA==================')
tia = 0;
tfa = 2;
fsa = 10;
fma = 100;
fia = pi/4;
Aa = 2; 

[t1,y1] = senoidal(tia,tfa,fma,fsa,Aa,fia);

tib = 0;
tfb = 2;
fsb = 3;
fmb = 100;
fib = pi/4;
Ab = 2; 

[t2,y2] = senoidal(tib,tfb,fmb,fsb,Ab,fib);

figure(4)
plot(t1,y1,'r')
hold on
plot(t2,y2,'b')
grid on
grid minor
legend('fs1 = 10', 'fs2 = 3')
title('SENOIDALES DE FRECUENCIA DISTINTA')


disp("Produco interno")
prod_int = productoInterno(y1,y2)
prod_int2 = y1*y2'

disp('==================SENOIDALES MISMA FASE DISTINTA AMPLITUD==================')
tia = 0;
tfa = 2;
fsa = 1;
fma = 100;
fia = pi/4;
Aa = 2; 

[t1,y1] = senoidal(tia,tfa,fma,fsa,Aa,fia);

tib = 0;
tfb = 2;
fsb = 1;
fmb = 100;
fib = pi/4;
Ab = 4; 

[t2,y2] = senoidal(tib,tfb,fmb,fsb,Ab,fib);

figure(5)
plot(t1,y1,'r')
hold on
plot(t2,y2,'b')
grid on
grid minor
legend('A1 = 2', 'A2 = 4')
title('SENOIDALES MISMA FASE DISTINTA AMPLITUD')

disp("Produco interno")
prod_int = productoInterno(y1,y2)
prod_int2 = y1*y2'

disp('==================SENOIDALES DISTINTA FASE DISTINTA FRECUENCIA==================')
tia = 0;
tfa = 2;
fsa = 20;
fma = 100;
fia = -pi/4;
Aa = 2; 

[t1,y1] = senoidal(tia,tfa,fma,fsa,Aa,fia);

tib = 0;
tfb = 2;
fsb = 30;
fmb = 100;
fib = pi/3;
Ab = 2; 

[t2,y2] = senoidal(tib,tfb,fmb,fsb,Ab,fib);

figure(6)
plot(t1,y1,'r')
hold on
plot(t2,y2,'b')
grid on
grid minor
legend('phi1 = -pi/4, fs1= 10', 'phi2 = pi/3, fs2 = 7')
title('SENOIDALES DISTINTA FASE DISTINTA FRECUENCIA')

disp("Produco interno")
prod_int = productoInterno(y1,y2)
prod_int2 = y1*y2'


%------------------------------------------------
%----------------CONCLUSIONES--------------------

%{
----> VARIAR LA AMPLITUD:
 Variar la amplitud va a cambiar el máximo del producto interno. A mayor
 amplitud de las señales, hay un incremento en el producto interno. Si
 disminuyo la amplitud de una o de las dos, disminuye el producto interno.
 Poner una amplitud negativa y una positiva implica invertir el rango de
 la señal y resulta en un producto interno negativo porque son opuestas
 en relación al eje x.

----> VARIAR LA FRECUENCIA:
 Afecta el parecido de las señales. Si empezamos en la misma frecuencia para
 ambas señales y variamos la frecuencia de una en decimales, vemos como va
 bajando el producto interno hasta acercarse a cero.
 Cuando la variación entre ambas es 1 o más, ya se hace cero.

----> VARIAR EL ÁNGULO DE FASE:
 Recordando que el producto interno es norm(a,2)norm(b,2)cos(a,b), y asumiendo n = 0,1,2...
 Si phi = 0 + 2pin, el producto interno va a ser máximo porque cos(0) = 1.
 Si phi = pi + 2pin, el producto interno va a ser negativo porque son opuestas y cos(npi) = -1.
 Si phi = pi/2 2pin o phi = 3pi/2 + 2pi*n, las señales van a ser ortogonales y el producto interno va a ser 0.
%}