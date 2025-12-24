% MATLAB Script to Analyze Latency Distributions
clear; clc;

% Simulating latency data points (ms) based on paper findings [cite: 9]
wifi6_latency = 40 + 15 * randn(1000, 1);
wifi6e_latency = 30 + 10 * randn(1000, 1);
wifi7_latency = 15 + 5 * randn(1000, 1); % Targeted < 50ms with low jitter [cite: 9]

% Calculate Jitter (Standard Deviation of Latency)
jitter = [std(wifi6_latency), std(wifi6e_latency), std(wifi7_latency)];

% Visualization
figure;
hold on;
box on;
histogram(wifi6_latency, 'BinWidth', 2, 'DisplayName', 'Wi-Fi 6');
histogram(wifi6e_latency, 'BinWidth', 2, 'DisplayName', 'Wi-Fi 6E');
histogram(wifi7_latency, 'BinWidth', 2, 'DisplayName', 'Wi-Fi 7');

xlabel('Latency (ms)');
ylabel('Frequency');
title('Latency Distribution in Smart Campus Simulation');
legend;
hold off;

fprintf('Calculated Jitter (ms): \nWi-Fi 6: %.2f\nWi-Fi 6E: %.2f\nWi-Fi 7: %.2f\n', ...
    jitter(1), jitter(2), jitter(3));