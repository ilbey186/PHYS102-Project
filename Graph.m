
temperature = 31:66;
current = [0.580 0.578 0.574 0.571 0.569 0.566 0.563 0.561 0.558 0.556 ...
           0.554 0.551 0.549 0.547 0.544 0.541 0.538 0.535 0.533 0.530 ...
           0.529 0.526 0.523 0.521 0.519 0.517 0.514 0.511 0.510 0.507 ...
           0.505 0.502 0.501 0.498 0.494 0.493];
voltage = 28.7;


resistance = voltage ./ current;


figure;


yyaxis left
plot(temperature, current, '-s', 'Color', [0.2 0.7 0.2], 'LineWidth', 2);
ylabel('Current (A)');
ylim([min(current)-0.01, max(current)+0.01])

yyaxis right
plot(temperature, resistance, '-o', 'Color', [0.1 0.4 0.9], 'LineWidth', 2);
ylabel('Resistance (Ohms)');
ylim([min(resistance)-1, max(resistance)+1])

xlabel('Temperature (°C)');
title('Current and Resistance vs. Temperature');
legend('Current (A)', 'Resistance (Ω)', 'Location', 'northwest');
grid on;
