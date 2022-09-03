clc
clear all
close all

n = -3:1:7;
index = find(n==0);
x = zeros(1,length(n));
x(index) = 1;
subplot(2,2,1);
stem(n,x,'.');
axis tight

b= [5 0 -4 1]
a = [1 -2]
y = zeros(1,length(n));
for i=1:length(n)
    if(n(i)<0)
        y(i) = 0;
    end
    if (n(i)>=0)
        y(i) = 2*y(i-1)+5*x(i)-4*x(i-2)+x(i-3);
    end
end

subplot(2,2,3)
stem(n,y,'.');
axis tight
    