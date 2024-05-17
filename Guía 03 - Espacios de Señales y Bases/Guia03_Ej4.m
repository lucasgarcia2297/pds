#PROCESAMIENTO DIGITAL DE SEÑALES [2024]
#GUIA 03 - EJERCICIO 4
#Genera una senal como combinacion lineal de un conjunto de 
#seÑales con frecuencias de 1,2,3,4,5,6,7,8,9,10 Hz.
clear all 
clc
ti = 0;
tf = 1;
fm = 100;
fs1 = 1; fs2 = 2; fs3 = 3; fs4 = 4; fs5 = 5; fs6 = 6; fs7 = 7; fs8 = 8; fs9 = 9; fs10 = 10;
fi = 0;
A = 1;

%----------------------------------%
%-------------INCISO A-------------%
[t1,s1] = senoidal(ti, tf, fm, fs1, A,fi);
[t2,s2] = senoidal(ti, tf, fm, fs2, A,fi);
[t3,s3] = senoidal(ti, tf, fm, fs3, A,fi);
[t4,s4] = senoidal(ti, tf, fm, fs4, A,fi);
[t5,s5] = senoidal(ti, tf, fm, fs5, A,fi);
[t6,s6] = senoidal(ti, tf, fm, fs6, A,fi);
[t7,s7] = senoidal(ti, tf, fm, fs7, A,fi);
[t8,s8] = senoidal(ti, tf, fm, fs8, A,fi);
[t9,s9] = senoidal(ti, tf, fm, fs9, A,fi);
[t10,s10] = senoidal(ti, tf, fm, fs10, A,fi);

coef = [1 8 6 1 2 15 1 12 1 1];

x1 = coef(1)*s1 + coef(2)*s2 + coef(3)*s3 + coef(4)*s4 + coef(5)*s5 + coef(6)*s6 + coef(7)*s7 + coef(8)*s8 + coef(9)*s9 + coef(10)*s10;

disp('Inciso (a) -> ')
disp('Pareceria haber una relacion entre los coeficientes de la combinacion lineal y su producto interno')

vector_parecidos = [dot(x1,s1), dot(x1,s2), dot(x1,s3), dot(x1,s4), dot(x1,s5),...
        dot(x1,s6), dot(x1,s7), dot(x1,s8), dot(x1,s9), dot(x1,s10)];
                
disp('==========================================================================')         
figure(1)
bar(vector_parecidos)


#{
En este inciso hay una relacion entre los coeficientes que usemos en la combinacion lineal y el parecido calculado con el producto interno
#}

%----------------------------------%
%-------------INCISO B-------------%
[t1_b,s1_b] = senoidal(ti, tf, fm, 1, A,0);
[t2_b,s2_b] = senoidal(ti, tf, fm, 1, A,0.2*pi);
[t3_b,s3_b] = senoidal(ti, tf, fm, 1, A,0.4*pi);
[t4_b,s4_b] = senoidal(ti, tf, fm, 1, A,0.5*pi);
[t5_b,s5_b] = senoidal(ti, tf, fm, 1, A,0.8*pi);
[t6_b,s6_b] = senoidal(ti, tf, fm, 1, A,1*pi);
[t7_b,s7_b] = senoidal(ti, tf, fm, 1, A,1.2*pi);
[t8_b,s8_b] = senoidal(ti, tf, fm, 1, A,1.4*pi);
[t9_b,s9_b] = senoidal(ti, tf, fm, 1, A,1.6*pi);
[t10_b,s10_b] = senoidal(ti, tf, fm, 1,A, 1.8*pi);

x1 = coef(1)*s1_b + coef(2)*s2_b + coef(3)*s3_b + coef(4)*s4_b + coef(5)*s5_b + coef(6)*s6_b + coef(7)*s7_b + coef(8)*s8_b + coef(9)*s9_b + coef(10)*s10_b;

disp('Inciso (b) -> ')
disp('Pareceria no haber una relacion entre los coeficientes de la combinacion lineal y su producto interno')
disp('Pero si lo hay si variamos la fase')

vector_parecidos_b = [dot(x1,s1_b), dot(x1,s2_b), dot(x1,s3_b), dot(x1,s4_b), dot(x1,s5_b),...
                dot(x1,s6_b), dot(x1,s7_b), dot(x1,s8_b), dot(x1,s9_b), dot(x1,s10_b)];
               
figure(2)
bar(vector_parecidos_b)

%----------------------------------%
%-------------INCISO C-------------%
#{
Ahora lo que tengo que hacer es, en vez de comparar con la CL, 
comparo contra una cuadrada de 5.5 HZ
#}

[t,y_c]=cuadrada(0,1,50,5.5,1,0);

[t,y1_c1]=senoidal(0,1,50,1,1,0);
[t,y2_c1]=senoidal(0,1,50,2,1,0);
[t,y3_c1]=senoidal(0,1,50,3,1,0);
[t,y4_c1]=senoidal(0,1,50,4,1,0);
[t,y5_c1]=senoidal(0,1,50,5,1,0);
[t,y6_c1]=senoidal(0,1,50,6,1,0);
[t,y7_c1]=senoidal(0,1,50,7,1,0);
[t,y8_c1]=senoidal(0,1,50,8,1,0);
[t,y9_c1]=senoidal(0,1,50,9,1,0);
[t,y10_c1]=senoidal(0,1,50,10,1,0);

vector_parecidos_c1 = [dot(y_c,y1_c1) dot(y_c,y2_c1) dot(y_c,y3_c1) dot(y_c,y4_c1) dot(y_c,y5_c1) dot(y_c,y6_c1) dot(y_c,y7_c1) dot(y_c,y8_c1) dot(y_c,y9_c1) dot(y_c,y10_c1)];

disp('Inciso (c) -> ')
disp('Si comparamos contra una cuadrada variando la frecuencia de la senoidal el producto interno siempre dara cero')

figure(3)
bar(vector_parecidos_c1)
##figure(5)
##plot(t,y1_c1,'r-o')
##hold on
##plot(t,y_c,'b-o')
##hold off;