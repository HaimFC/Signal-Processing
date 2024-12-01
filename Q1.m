
% Define the system's difference equation
% y[n] - 4*y[n-1] + 4*y[n-2] = 20*x[n] + 10*x[n-1];
sys = @(x) filter([20, 10], [1, -4, 4], x);

%% Check linearity:
% Create arbitrary inputs to test linearity
x1 = rand(1, 10);
x2 = rand(1, 10);
alpha = 2;
beta = 3;

output1 = alpha*sys(x1) + beta*sys(x2);
output2 = sys(alpha*x1 + beta*x2);
isLinear = all(abs(output1 - output2) < 1e-5);
fprintf('System is linear: %d\n', isLinear);

%% Check time-invariance:
n0 = 2; % Time shift
x_shifted = [zeros(1, n0), x1];
output_shifted = sys(x_shifted);
isTimeInvariant = all(abs(output_shifted(n0+1:end) - sys(x1)) < 1e-5);
fprintf('System is time-invariant: %d\n', isTimeInvariant);

%% Check LTI:
isLTI = isTimeInvariant & isLinear;
fprintf('System is LTI: %d\n', isLTI);
%% Check if uses memory:
isMemory = 1;
%The system is not Mermoryless as the output depends on past values.
fprintf('System has memory: %d\n', isMemory);
%% Check BIBO stability:

%The first method I used is from this link - https://medium.com/@scinopio/bibo-stability-using-z-transforms-3c019fad37bf
% Define the system's difference equation coefficients
[b, a] = deal([20, 10], [1, -4, 4]); % System coefficients

% Check anatical BIBO stability: Checks if all poles are inside the unit circle
% Analyze poles for BIBO stability
poles = roots(a);
isBIBOStable = all(abs(poles) < 1); % Checks if all poles are inside the unit circle
fprintf('Analytical BIBO stability check: %d\n', isBIBOStable);

% Create an impulse input
impulse_input = [1, zeros(1, 99)]; % 100-point impulse
output = sys(impulse_input);

% Plot the output to visually inspect the response
figure;
stem(output);
title('Impulse Response of the System');
xlabel('Time Index n');
ylabel('Output y[n]');

% Check numerical BIBO stability: check if the output grows unbounded
isBIBOStable = all(abs(output) < 1e5); % Setting a high threshold to check for very large values
fprintf('Numerical BIBO stability check with impulse input: %d\n', isBIBOStable);

%% Check causality:

% Create an impulse input to test causality
impulse = [1, zeros(1, 9)];

% Get the impulse response of the system
impulse_response = sys(impulse);

% Check causality: For causality, the impulse response should be zero for n < 0
% Since MATLAB indexes start at 1, we just need to ensure the impulse response
% starts at the first index
isCausal = impulse_response(1) ~= 0;
fprintf('System is causal: %d\n', isCausal);
