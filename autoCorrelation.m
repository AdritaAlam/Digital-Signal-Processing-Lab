clc;
close all;
clear all;

x = input('Enter the input sequence');

XNeg = [];
for i=length(x):-1:1
    XNeg = [XNeg x(i)];
end
z = [];
for i=1:length(x)
    temp = XNeg.* x(i);
    z = [z;temp];
end

[row,column] = size(z);
lastIndex = row+column ;
startingIndex = 2;
y = [];
sum = 0;
while(startingIndex<=lastIndex)
    for i=1:row
        for j=1:column
            if ((i+j)==startingIndex)
                sum = sum + z(i,j);
            end
        end
    end
    startingIndex = startingIndex+1;
    y = [y sum]
    sum = 0;
end
disp(y);
        
nx = [0 1 2 3];
nh = [0 1 2 3];
ny = 0 : length(y)-1;
figure(1)
subplot(3,1,1);
stem(nx,x);
title('Input signal: x(n)');
subplot(3,1,2);
stem(nh,XNeg);
title('Impulse response: Xneg(n)');
subplot(3,1,3);
stem(ny,y);
title('Output signal: y(n)');



