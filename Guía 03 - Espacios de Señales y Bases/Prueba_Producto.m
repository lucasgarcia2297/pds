clear all; clc; clf;
A = 2;
fs = 2;
phi = 0;
fm = 200;
ti = 0;
tf= 1;
[t,x] = senoidal(ti,tf,fm,fs,A,phi);
igual = x;
ortogonal = A*cos(2*pi*t*fs+phi);
opuesta = -x;

# Distintas características
A2 = 3;
distAmplitud = A2*x;

fs2 = fs*1.9999;
[t,distFrecuencia]= senoidal(ti,tf,fm,fs2,A,phi);

phi2 = phi+pi/3;
[t,distFase]= senoidal(ti,tf,fm,fs,A,phi2);



#Productos:
ProdIguales = x.*igual; 
ProdOrtogonales= x.*ortogonal; 
ProdOpuestas= x.*opuesta;
ProdDistAmplitud = x.*distAmplitud;
ProdDistFrecuencia= x.*distFrecuencia;
ProdDistFase= x.*distFase;

figure(1)
stem(t,x,'k-o')
hold on 
grid on
stem(t,igual,'r-*')
stem(t,ortogonal,'g-*')
stem(t,opuesta,'b-*')
stem(t,distAmplitud,'y-*')
stem(t,distFrecuencia,'c-*')
stem(t,distFase,'m-*')
legend('Original','Igual','Ortogonal','Opuesta','DistAmplitud','DistFrecuencia','DistFase')
hold off

figure(2)
stem(t,x,'k-o')
hold on 
grid on
stem(t,ProdIguales,'r-*')
stem(t,ProdOrtogonales,'g-*')
stem(t,ProdOpuestas,'b-*')
stem(t,ProdDistAmplitud,'y-*')
stem(t,ProdDistFrecuencia,'c-*')
stem(t,ProdDistFase,'m-*')
legend('Original','ProdIguales','ProdOrtogonales','ProdOpuestas','ProdDistAmplitud','ProdDistFrecuencia','ProdDistFase')
hold off

disp('===========Producto interno===========')
disp('Producto interno Iguales')
ProdInternoIguales = x*igual'
disp('Producto interno Ortogonales')
ProdInternoOrtogonales = x*ortogonal'
disp('Producto interno Opuesta')
ProdInternoOpuestas = x*opuesta'
disp('Producto interno Distinta Amplitud')
ProdInternoDistAmplitud = x*distAmplitud'
disp('Producto interno Distinta Frecuencia')
ProdInternoDistFrecuencia= x*distFrecuencia'
disp('Producto interno Distinta Fase')
ProdInternoDistFase= x*distFase'