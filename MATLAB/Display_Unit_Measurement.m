close all
clc

voltage = [3 2.8 2.55 2.3 2.27 2.06];
blue = [3.95 3.95 0.1 0.1 0.1 0.1];
green = [0.6 3.4 3.4 3.4 3.4 0.6];
red = [0.07 0.07 0.07 3.9 3.9 3.9];

figure("Name","Input Voltage vs Voltage of RGB LEDs")
plot(voltage,blue, Color='b')
hold on
plot(voltage,green, Color='g')
hold on
plot(voltage,red, Color='r')
xlabel("Input Voltage (V)")
ylabel("LED Voltage (V)")
title("Input Voltage vs Voltage of RGB LEDs")
legend("Blue", "Green", "Red")
ylim([-0.1,4])
grid on
hold off