load('LPF.mat');
%% Question2 - part A
freqRange = linspace(-pi, pi, 80); % Each vector is lengh of 80

% Calculate for each LPF h2, h3, h4, h6
figure;

subplot(2,2,1);
b2 = fftshift(fft(h2));
plot(freqRange, abs(b2));
title('Frequency Response for LPF with cutoff ?/2');
xlabel('\omega[rad]');
ylabel('Magnitude');

subplot(2,2,2);
b3 = fftshift(fft(h3));
plot(freqRange, abs(b3));
title('Frequency Response for LPF with cutoff ?/3');
xlabel('\omega[rad]');
ylabel('Magnitude');

subplot(2,2,3);
b4 = fftshift(fft(h4));
plot(freqRange, abs(b4));
title('Frequency Response for LPF with cutoff ?/4');
xlabel('\omega[rad]');
ylabel('Magnitude');

subplot(2,2,4);
b6 = fftshift(fft(h6));
plot(freqRange, abs(b6));
title('Frequency Response for LPF with cutoff ?/6');
xlabel('\omega[rad]');
ylabel('Magnitude');

%% Question2 - part B Phase B

w = linspace(-pi,pi,20001);
time_vector = -10000:10000;
n = time_vector;
x = cos((pi/5)*n) + cos(((2*pi)/5)*n);
fft_of_x = fftshift(fft(x));
 
figure;
plot(w,abs(fft_of_x));
title(' Frequency Response')
ylabel('Magnitude');
xlabel('\omega[rad]');

%% Question2 - part B Phase D
w = linspace(-pi,pi,20080); % length of convolution

figure;
subplot(2,2,1);
convh2 = conv(h2,x); % calc conv in time of x and h2
f_trans_convh2 = fftshift(fft(convh2)); % fourier transform
plot(w,abs(f_trans_convh2));           % absolute
title('Absolute Frequency Response of filter h2 on x');
ylabel('Magnitude');
xlabel('\omega[rad]');

subplot(2,2,2);
convh3 = conv(h3,x); % calc conv in time of x and h3
f_trans_convh3 = fftshift(fft(convh3)); % fourier transform
plot(w,abs(f_trans_convh3));           % absolute
title('Absolute Frequency Response of filter h3 on x');
ylabel('Magnitude');
xlabel('\omega[rad]');

subplot(2,2,3);
convh4 = conv(h4,x); % calc conv in time of x and h4
f_trans_convh4 = fftshift(fft(convh4)); % fourier transform
plot(w,abs(f_trans_convh4));           % absolute
title('Absolute Frequency Response of filter h4 on x');
ylabel('Magnitude');
xlabel('\omega[rad]');

subplot(2,2,4);
convh6 = conv(h6,x); % calc conv in time of x and h6
f_trans_convh6 = fftshift(fft(convh6)); % fourier transform
plot(w,abs(f_trans_convh6));           % absolute
title('Absolute Frequency Response of filter h6 on x');
ylabel('Magnitude');
xlabel('\omega[rad]');

%% Question2 - part B Phase E
figure;

 
% Plot conv in time of x and h2
subplot(2,2,1);
convh2 = conv(h2,x); % calc conv in time of x and h2
plot(convh2,'black');
hold on;
plot(x,'red');
axis([0 500 -3 3]);
title('y2 with x on same graph');
ylabel('Magnitude');
xlabel('n values');
legend('y2[n]','x[n]');

 
% Plot conv in time of x and h3
subplot(2,2,2);
convh3 = conv(h3,x); % calc conv in time of x and h3
plot(convh3,'black');
hold on;
plot(x,'red');
axis([0 500 -3 3]);
title('y3 with x on same graph');
ylabel('Magnitude');
xlabel('n values');
legend('y3[n]','x[n]');
axis([0 500 -3 3]);


% Plot conv in time of x and h4
subplot(2,2,3);
convh4 = conv(h4,x); % calc conv in time of x and h4
plot(convh4,'black');
hold on;
plot(x,'red');
axis([0 500 -3 3]);
title('y4 with x on same graph');
ylabel('Magnitude');
xlabel('n values');
legend('y4[n]','x[n]');
axis([0 500 -3 3]);
 
% Plot conv in time of x and h6
subplot(2,2,4);
convh6 = conv(h6,x); % calc conv in time of x and h6
plot(convh6,'black');
hold on;
plot(x,'red');
axis([0 500 -3 3]);
title('y6 with x on same graph');
ylabel('Magnitude');
xlabel('n values');
legend('y6[n]','x[n]');



