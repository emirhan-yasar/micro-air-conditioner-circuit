close all
clear
clc

x = 0:0.1:100;
voltage = 6 * (x+33) ./ (x+133);

figure("Name","Output Voltage of Set Unit vs Resistance of Potentiometer")
plot(x,voltage)
xlabel("Resistance (kΩ)")
ylabel("Voltage (V)")
title("Output Voltage of Set Unit vs Resistance of Potentiometer")
grid on
hold off
