clc; clear; close all;

% Step 1: Set fixed random seed for reproducibility
rng(123);

% Step 2: Generate random N
N = floor(rand * 20 + 4); %
T = 1;
Ts = T / N;

% Step 3: Generate h(t) = p(t) (Unit pulse from 0 to T)
t_h = 0:Ts:T; 
h = ones(size(t_h)); 

% Step 4: Define input signal s(t)
t_s = 0:Ts:4*T-Ts;
s = [ones(1, N), -ones(1, N), ones(1, N), ones(1, N)];

% Step 5: Pass s(t) through h(t) (convolution)
v = conv(s, h, 'same') * Ts; 
t_v = t_s;

% Plot Input Signal s(t)
figure;
plot(t_s, s, 'r-*', 'LineWidth', 1.5);
xlabel('Time (s)'); ylabel('s(t)');
title('Input Signal s(t)');
legend('s(t)');
grid on;
xlim([0 max(t_v)]);

% Plot Impulse Response h(t) (Keep h(t) the Same, Extend x-Axis to 2 sec)
figure;
plot(t_h, h, 'b-*', 'LineWidth', 1.5);
xlabel('Time (s)'); ylabel('h(t)');
title('Impulse Response h(t)');
legend('h(t)');
grid on;
xlim([0 2]);
ylim([0 1.2]);

% Plot Output Signal v(t)
figure;
plot(t_s, v, 'g-*', 'LineWidth', 1.5);
xlabel('Time (s)'); ylabel('v(t)');
title('Output Signal v(t)');
legend('v(t)');
grid on;
xlim([0 max(t_v)]);
ylim([min(v) max(v)]); 

% Print important values
fprintf('Chosen N: %d\n', N);
fprintf('Sampling Interval Ts: %.4f seconds\n', Ts);
