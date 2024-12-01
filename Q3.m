%% Qeustion 3 - Part A Phase C 
n = -10000:10000; 
lenofFFT = 2*length(n); % double time vecotor in order imporve sampling
w = linspace(-pi, pi, lenofFFT);
T = 4;

figure;

subplot(2,2,1);
x1 = sinc((n*T/6));
x1_FFT = fftshift(fft(x1,lenofFFT));
plot(w,abs(x1_FFT));
title('Frequency Response of sinc(n*4/6) - T=4')
xlabel('\omega[rad]'),ylabel('Magnitude');

subplot(2,2,2);
x2 = sinc((n*T/12)).*sinc((n*T/12));
x2_FFT = fftshift(fft(x2,lenofFFT));
plot(w,abs(x2_FFT));
title('Frequency Response of sinc((n*4/12))^2 - T=4')
xlabel('\omega[rad]'),ylabel('Magnitude');

subplot(2,2,3);
x3 = cos((pi*n*T)/12);
x3_FFT = fftshift(fft(x3,lenofFFT));
plot(w,abs(x3_FFT));
title('Frequency Response of cos((pi*n*4)/12 - T=4')
xlabel('\omega[rad]'),ylabel('Magnitude');
 
subplot(2,2,4);
x4 = cos((pi*n*T)/12) + sin((pi*n*T)/6);
x4_FFT = fftshift(fft(x4,lenofFFT));
plot(w,abs(x4_FFT));
title('Frequency Response of cos((pi*n*4)/12) + sin((pi*n*4)/6) - T=4')
xlabel('\omega[rad]'),ylabel('Magnitude');
 
%% Qeustion 3 - Part A Phase D
T = 8;

figure;

subplot(2,2,1);
x1 = sinc((n*T/6));
x1_FFT = fftshift(fft(x1,lenofFFT));
plot(w,abs(x1_FFT));
title('Frequency Response of sinc(n*8/6) - T=8')
xlabel('\omega[rad]'),ylabel('Magnitude');

subplot(2,2,2);
x2 = sinc((n*T/12)).*sinc((n*T/12));
x2_FFT = fftshift(fft(x2,lenofFFT));
plot(w,abs(x2_FFT));
title('Frequency Response of sinc((n*8/12))^2 - T=8')
xlabel('\omega[rad]'),ylabel('Magnitude');

subplot(2,2,3);
x3 = cos((pi*n*T)/12);
x3_FFT = fftshift(fft(x3,lenofFFT));
plot(w,abs(x3_FFT));
title('Frequency Response of cos((pi*n*8)/12) - T=8')
xlabel('\omega[rad]'),ylabel('Magnitude');

subplot(2,2,4);
x4 = cos((pi*n*T)/12) + sin((pi*n*T)/6);
x4_FFT = fftshift(fft(x4,lengthOfFFT));
plot(w,abs(x4_FFT));
title('Frequency Response of cos((pi*n*8)/12) + sin((pi*n*8)/6) - T=8')
xlabel('\omega[rad]'),ylabel('Magnitude');

%% Qeustion 3 - Part B Phase C

n_values = -10000:10000;
lenofFFT = 2*length(n); % double time vecotor in order imporve sampling
w = linspace(-pi, pi, lenofFFT);
T=4;

figure;

subplot(2,3,1);
x1 = rectangularPulse(-80,80,n_values*T);
k = -40:40;
stem(k,x1(9960:10040)); % where the rectangularPulse located in x
title('first xc(t) - T=4');
xlabel('n values'), ylabel('Amplitude');
axis([-50 50 -1 2]);

subplot(2,3,4);
x1_fft = fftshift(fft(x1,lenofFFT));
plot(w,abs(x1_fft));
title('Frequency of first xc(t) - T=4')
xlabel('\omega[rad]'),ylabel('Magnitude');


subplot(2,3,2);
x2 = triangularPulse(-160,160,n*T);
k = -50:50;
stem(k,x2(9950:10050)); % where the triangularPulse located in x
title('second xc(t) - T=4');
xlabel('n values'),ylabel('Amplitude');
axis([-60 60 -1 2]);

subplot(2,3,5);
x2_fft = fftshift(fft(x2,lenofFFT));
plot(w,abs(x2_fft));
title('Frequency of second xc(t) - T=4')
xlabel('\omega[rad]'),ylabel('Magnitude');

subplot(2,3,3);
x3 = rectangularPulse(-80,80,n*T) + triangularPulse(-160,-80,-80,n*T) + triangularPulse(80,80,160,n*T) ; 
k = -60:60;
stem(k,x3(9940:10060));
title('third xc(t) - T=4');
xlabel('n values'),ylabel('Amplitude');
axis([-60 60 -1 2]);

subplot(2,3,6);
x3_fft = fftshift(fft(x3,lenofFFT));
plot(w,abs(x3_fft));
title('Frequency of third xc(t) - T=4')
xlabel('\omega[rad]'),ylabel('Magnitude');
