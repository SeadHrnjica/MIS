%%
%slike
t=0:.01:5;
a=[ones(1,100) zeros(1,100) ones(1,100) ones(1,100) zeros(1,101)];subplot(3,2,1);
plot(t,a,'r','LineWidth',3);
n=rand(1,501);
subplot(3,2,3);
plot(t,n);
subplot(3,2,5);
plot(t,n+a);
a=3*sin(2*pi*.3*t)-3*cos(3*pi*.9*t);
a=a/max(a);
subplot(3,2,2);
plot(t,a);
n=rand(1,501);
subplot(3,2,4);
plot(t,n);
subplot(3,2,6);
plot(t,n+a);
%%
brojnik=[0.3 1];        % brojnik
s1=[1 1];                       
s2=[1 0.5];
nazivnik=conv(s1,s2);   % nazivnik
H=tf(brojnik, nazivnik); % prijenosna funkcija   
pzmap(H);
damp(H);
rlocus(H);
step(H);
bode(H)
nyquist(H);
%%
% CTCV, DTCV, DTDV signali 
t=0:0.001:5;
T=5; 
f=1/T; 
a=1.5*(5*sin(2*pi*f*t)+sin(7*pi*f*t));
subplot(3,1,1); 
plot(t,a,'k'); 
subplot(3,1,2); 
t1=0:0.5:5; 
a1=1.5*(5*sin(2*pi*f*t1)+sin(7*pi*f*t1)); 
stem(t1,a1,'k');
subplot(3,1,3); 
% rezolucija 
res=20/8;
[r c]=size(a1);
s=zeros(1,9); 
s(1)=-10; 
for i=2:9 
    s(i)=s(i-1)+2.5; 
end; 

for i=1:c 
    for j=2:9 
        if (a1(i)<=s(j) & a1(i)>=s(j-1)) a2(i)=(s(j-1)+s(j))/2; 
        end; 
    end; 
end; 

stem(t1,a1,'k');
hold on;
stairs(t1,a2,'k--');
%%
%kvantizacija
N=40;
n=0:(N-1);
t=0:0.025:1;
x=0.8*cos(2*pi*t)+0.15;
b = 2;  %dva-bitni
L = 2^b; %4 nivoa
xq=floor((x+1)*2^(b-1));
xq=xq/(2^(b-1));
xq=xq-(2^(b)-1)/2^(b);
xe=x-xq;
stem(x,'b');
hold on;
stem(xq,'r');
hold on;
stem(xe,'g');
hold off