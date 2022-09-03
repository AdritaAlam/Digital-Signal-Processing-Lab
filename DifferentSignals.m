%%Unit sample sequence
N = 21;
unitSample = zeros(1,N);
unitSample(11) = 1;
n = -10:1:10;
subplot(3,3,1);
stem(n,unitSample,'.');
title('Unit sample sequence');


%%unit step
N = 10;
x = ones(1,N);
n = 0:1:N-1;
subplot(3,3,2);
stem(n,x);
xlabel('n');
ylabel('x(n)');
title('Unit step sequence');


%%Exponential sequence
x = 0.8.^(n);
n = 0:1:N-1;
subplot(3,3,3);
stem(n,x);
xlabel('n');
ylabel('x(n)');
title('Exponential sequence');

%%Ramp sequence
x = 7;
t = 0 : N-1;
subplot(3,3,4);
stem(t,t);
title('Ramp sequence');

%%Sine wave
tmin = -0.5;
tmax = 0.5;
t = linspace(tmin,tmax,400);
x = 10*sin(2*pi*4*t);
subplot(3,3,5);
plot(t,x);
title('Sine wave');

%%Cosine wave
tmin = -0.5;
tmax = 0.5;
t = linspace(tmin,tmax,400);
x = 10*cos(2*pi*4*t);
subplot(3,3,6);
plot(t,x);
title('Cosine wave');

%%Random sequence
N = 100;
x = rand(1,N);
n = 0:1:N-1;
subplot(3,3,7);
plot(n,x);
title('Random Sequence');

