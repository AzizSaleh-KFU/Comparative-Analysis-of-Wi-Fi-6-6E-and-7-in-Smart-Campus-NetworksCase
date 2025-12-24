% BER Comparison for QAM Modulations
snr_db = 15:1:45;
snr_linear = 10.^(snr_db/10);

% BER for 1024-QAM (Wi-Fi 6)
ber_wifi6 = 2 * erfc(sqrt(1.5 * snr_linear / (1024 - 1)));

% BER for 4096-QAM (Wi-Fi 7)
ber_wifi7 = 2 * erfc(sqrt(1.5 * snr_linear / (4096 - 1)));

figure;
semilogy(snr_db, ber_wifi6, 'r--', 'LineWidth', 2); hold on;
semilogy(snr_db, ber_wifi7, 'b-', 'LineWidth', 2);
grid on;
xlabel('SNR (dB)');
ylabel('Bit Error Rate (BER)');
title('Reliability Analysis: 1024-QAM vs 4K-QAM');
legend('Wi-Fi 6/6E (1024-QAM)', 'Wi-Fi 7 (4K-QAM)');