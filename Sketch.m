clc; clear; close all;

%% **1. Block Diagram Sketch (For Hand Drawing)**
figure;
hold on;
axis([0 8 2 5]); % Set axis limits
axis off;
title('Conceptual Sketch: Modulator and Filter System');

% Draw Blocks (Modulator and Filter)
rectangle('Position', [2, 3.5, 2, 1], 'EdgeColor', 'k', 'LineWidth', 2); % Modulator
rectangle('Position', [5, 3.5, 2, 1], 'EdgeColor', 'k', 'LineWidth', 2); % Filter

% Add Text Labels
text(2.7, 4, 'Modulator', 'FontSize', 12);
text(5.6, 4, 'Filter h(t)', 'FontSize', 12);
text(0.5, 4, 'Input 1011', 'FontSize', 12);
text(4.2, 4, 's(t)', 'FontSize', 12);
text(7.2, 4, 'v(t)', 'FontSize', 12);

% Draw Arrows Using Plot Instead of Annotation
plot([1 2], [4 4], 'k', 'LineWidth', 2); % Input → Modulator
plot([4 5], [4 4], 'k', 'LineWidth', 2); % Modulator → s(t)
plot([7 8], [4 4], 'k', 'LineWidth', 2); % Filter → Output

hold off;

%% **2. Signal Sketches for Hand Drawing**
figure;

% Subplot for s(t) - Binary Signal Representation
subplot(3,1,1);
hold on;
title('Sketch of s(t) (Input Signal)');
plot([0 1 1 2 2 3 3 4], [1 1 -1 -1 1 1 1 1], 'k', 'LineWidth', 2); % Ideal binary waveform
xlabel('Time (t)'); ylabel('Amplitude');
grid on;
hold off;

% Subplot for h(t) - Rectangular Pulse
subplot(3,1,2);
hold on;
title('Sketch of h(t) (Impulse Response)');
plot([0 1 1 2], [1 1 0 0], 'k', 'LineWidth', 2); % Simple Rectangular Pulse
xlabel('Time (t)'); ylabel('Amplitude');
grid on;
hold off;

% Subplot for v(t) - Convolution Output
subplot(3,1,3);
hold on;
title('Sketch of v(t) (Filtered Output)');
plot([0 1 2 3 4 5], [0.5 1 0.5 -0.5 0 0], 'k', 'LineWidth', 2); % Smoothed output (conceptual)
xlabel('Time (t)'); ylabel('Amplitude');
grid on;
hold off;
