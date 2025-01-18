syms s t;
Y=(2/s^2)+(3/s)+(2*s)+5/(2*s^2+s+2);
ilaplace(Y)
 t=0:0.1:10;
% x1=1 - cos(t);
% plot(t, x1,Color='blue' ), legend('1 - cos(t)');
% hold on;
%%
syms s t;
y=((4*s^3+4*s^2+3*s+1)/(s^2*(2*s^2+s+1)));
ilaplace(y);
%%
syms s t;
y=((4*s^2+5)/((4*s-1)(s^2+1));
x=ilaplace(y);
pretty
