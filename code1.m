% MATLAB Script to Compare Theoretical Throughput
clear; clc;

% Generations and their max channel widths from the paper
generations = {'Wi-Fi 6', 'Wi-Fi 6E', 'Wi-Fi 7'};
bandwidths = [80, 160, 320]; % in MHz [cite: 12, 24]
qam_bits = [10, 10, 12]; % 1024-QAM vs 4096-QAM 

% Simplified Shannon Capacity Formula (Relative comparison)
% Throughput proportional to Bandwidth * log2(1 + SNR)
snr_linear = 10^(25/10); % Assuming 25dB SNR for baseline
throughput = bandwidths .* qam_bits; 

% Plotting the results
figure;
bar(generations, throughput, 'FaceColor', [0.2 0.6 0.8]);
ylabel('Relative Throughput Index');
title('Comparative Throughput: Wi-Fi 6 vs 6E vs 7');
grid on;

fprintf('Wi-Fi 7 Throughput Gain over Wi-Fi 6: %.2fx\n', throughput(3)/throughput(1));