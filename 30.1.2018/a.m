%30.1.2018
%%1.a
syms s t; 
Y=((2*s^3+18*s^2+47*s+33))/((s^2+1)*(2*s^2+14*s+24));
x=ilaplace(Y)
pretty(x)
 t=0:0.1:10;
 x1=(39.*cos(t))/34 - (5.*exp(-4.*t))/34 + (24.*sin(t))/17;
  plot(t,x1);


%%
%1.b
syms s t; 
Y=((2*s^2+24*s+9))/(s*(2*s^2+14*s+24));
x=ilaplace(Y)
pretty(x)
 t=0:0.1:10;
x1=(15.*exp(-3.*t))/2 - (55.*exp(-4.*t))/8 + 3/8;
  plot(t,x1);

  
  %%
  %drugi
  
  E=10;
  R1=10;
  R2=0.1;
  C=0.01;
  L=0.1;
A=[-1/R1*C 0 ; 0 0];
B=[E/R1*C ; E/L];
C=[0 1];
D=0;
sys=ss(A,B,C,D);
step(sys);
%%
%treci

A=[0 1 0;0 0 1;-12 -19 -8];
B=[0 ;0 ; 5];
C=[5 0 0];
D=0;
sys=ss(A,B,C,D);
step(sys);
