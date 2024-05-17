#PROCESAMIENTO DIGITAL DE SE�ALES [2024]
#GUIA 03 - EJERCICIO 5
clc; clf; clear all;


signal=load("te.txt"); % cargo se�al desde archivo de texto

fm = 11025;
T=1/fm;
t=0:T:length(signal)*T-T;
A = 1;
phi = 0;

# Grafica de la se�al 
plot(t,signal,'r');
hold on;

#{
Por la grafica identificamos que se apretaron 7 botones
#}

#Senoidales para filas de arriba hacia abajo

#Frecuencias para filas de arriba hacia abajo:
[k,v1]=senoidal(0,length(signal)*T,fm,697,A,phi); % 1 2 3
[k,v2]=senoidal(0,length(signal)*T,fm,770,A,phi); % 4 5 6
[k,v3]=senoidal(0,length(signal)*T,fm,852,A,phi); % 7 8 9
[k,v4]=senoidal(0,length(signal)*T,fm,941,A,phi); % * 0 #

#Frecuencias para columnas de izquierda a derecha:
[k,h1]=senoidal(0,length(signal)*T,fm,1209,A,phi); % 1 4 7 *
[k,h2]=senoidal(0,length(signal)*T,fm,1336,A,phi); % 2 5 8 0
[k,h3]=senoidal(0,length(signal)*T,fm,1477,A,phi); % 3 6 9 #

#B�squeda de p�lsos de cada bot�n
#{
Viendo la grafica vamos a identificar el medio de cada pulso
#}
hold on;
stem(19500*T,1.75); 
stem(32000*T,1.75); 
stem(41000*T,1.75); 
stem(51000*T,1.75); 
stem(61000*T,1.75); 
stem(72000*T,1.75); 
stem(83000*T,1.75); 

#Declaraci�n de rangos para cada bot�n
%(1000 muestras, 500 abajo y 500 arriba del valor encontrado antes)
r1=19000:20000;
r2=31500:32500;
r3=40500:41500;
r4=50500:51500;
r5=60500:61500;
r6=71500:72500;
r7=82500:83500;

#{
Ahora hacemos producto interno entre se�al de pulso y se�al para 
ver que tan parecido son -> identifico tanto para fila como
para columna el mayor producto interno y ahi saco conclusiones
#}
disp("--------- Boton 1 ----------")
fila1 = abs(dot(signal(r1),v1(r1)))
fila2 = abs(dot(signal(r1),v2(r1)))
fila3 = abs(dot(signal(r1),v3(r1)))
fila4 = abs(dot(signal(r1),v4(r1)))
columna1 = abs(dot(signal(r1),h1(r1)))
columna2 = abs(dot(signal(r1),h2(r1)))
columna3 = abs(dot(signal(r1),h3(r1)))
#El mayor valor corresponde a fila 1 columna 2 -> Boton 2


disp("--------- Boton 2 ----------")
fila1 = abs(dot(signal(r2),v1(r2)))
fila2 = abs(dot(signal(r2),v2(r2)))
fila3 = abs(dot(signal(r2),v3(r2)))
fila4 = abs(dot(signal(r2),v4(r2)))
columna1 = abs(dot(signal(r2),h1(r2)))
columna2 = abs(dot(signal(r2),h2(r2)))
columna3 = abs(dot(signal(r2),h3(r2)))
#El mayor valor corresponde a fila 2 columna 1 -> Boton 4

disp("--------- Boton 3 ----------")
fila1 = abs(dot(signal(r3),v1(r3)))
fila2 = abs(dot(signal(r3),v2(r3)))
fila3 = abs(dot(signal(r3),v3(r3)))
fila4 = abs(dot(signal(r3),v4(r3)))
columna1 = abs(dot(signal(r3),h1(r3)))
columna2 = abs(dot(signal(r3),h2(r3)))
columna3 = abs(dot(signal(r3),h3(r3)))
#El mayor valor corresponde a fila 1 columna 2 -> Boton 2

disp("--------- Boton 4 ----------")
fila1 = abs(dot(signal(r4),v1(r4)))
fila2 = abs(dot(signal(r4),v2(r4)))
fila3 = abs(dot(signal(r4),v3(r4)))
fila4 = abs(dot(signal(r4),v4(r4)))
columna1 = abs(dot(signal(r4),h1(r4)))
columna2 = abs(dot(signal(r4),h2(r4)))
columna3 = abs(dot(signal(r4),h3(r4)))
#El mayor valor corresponde a fila 3 columna 2 -> Boton 8

disp("--------- Boton 5 ----------")
fila1 = abs(dot(signal(r5),v1(r5)))
fila2 = abs(dot(signal(r5),v2(r5)))
fila3 = abs(dot(signal(r5),v3(r5)))
fila4 = abs(dot(signal(r5),v4(r5)))
columna1 = abs(dot(signal(r5),h1(r5)))
columna2 = abs(dot(signal(r5),h2(r5)))
columna3 = abs(dot(signal(r5),h3(r5)))
#El mayor valor corresponde a fila 1 columna 2 -> Boton 2

disp("--------- Boton 6 ----------")
fila1 = abs(dot(signal(r6),v1(r6)))
fila2 = abs(dot(signal(r6),v2(r6)))
fila3 = abs(dot(signal(r6),v3(r6)))
fila4 = abs(dot(signal(r6),v4(r6)))
columna1 = abs(dot(signal(r6),h1(r6)))
columna2 = abs(dot(signal(r6),h2(r6)))
columna3 = abs(dot(signal(r6),h3(r6)))
#El mayor valor corresponde a fila 2 columna 3 -> Boton 6

disp("--------- Boton 7 ----------")
fila1 = abs(dot(signal(r7),v1(r7)))
fila2 = abs(dot(signal(r7),v2(r7)))
fila3 = abs(dot(signal(r7),v3(r7)))
fila4 = abs(dot(signal(r7),v4(r7)))
columna1 = abs(dot(signal(r7),h1(r7)))
columna2 = abs(dot(signal(r7),h2(r7)))
columna3 = abs(dot(signal(r7),h3(r7)))
#El mayor valor corresponde a fila 2 columna 1 -> Boton 5

disp("------------------------------------")
disp("La secuencia de numeros es: 2428265")
disp("------------------------------------")