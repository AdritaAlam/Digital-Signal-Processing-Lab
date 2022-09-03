f = 5;
a =12;
t = 0:0.005:1;
x = a*sin(2*pi*f*t);
subplot(2,3,1);
plot(t,x);
title('Continuous Sine wave');

%%Sampled with 2*f
fs = 2*f;
ts = 0:1/fs:1;
x = a*sin(2*pi*f*ts);
subplot(2,3,2);
grid on
stem(ts,x,'.');
hold on;
title('Sampled sine wave');

%%sampled with <2*f
fs = 3;
ts = 0:1/fs:1;
x = a*sin(2*pi*f*ts);
subplot(2,3,3);
grid on
stem(ts,x,'.');
hold on;
title('Under sampled sine wave');

%%sampled with >2*f
fs = f*10;
ts = 0:1/fs:1;
x = a*sin(2*pi*f*ts);
subplot(2,3,4);
grid on
stem(ts,x,'.');
hold on;
title('Under sampled sine wave');

