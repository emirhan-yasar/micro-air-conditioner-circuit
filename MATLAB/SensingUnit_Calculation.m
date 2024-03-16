close all
clc

x = 20:44;
y = ResistanceOfTherm(x+273);

voltage = 6 * y ./ (y+100);

figure("Name","Output Voltage of Sensing Unit vs Ambient Temperature")
plot(x,voltage)
xlabel("Temperature (C)")
ylabel("Voltage (V)")
title("Output Voltage of Sensing Unit vs Ambient Temperature")
grid on
hold off


function r = ResistanceOfTherm(temp)
    B = 3950;
    Rr = 100;
    r = Rr * exp(B*(1./temp-1/298));
end