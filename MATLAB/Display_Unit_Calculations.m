close all
clc

IMax = 1;
TempMax = 40;
TempMin = 24;
Temp = TempMin:0.01:TempMax;
Voltage = 3.06:0.001:2.08;

pt1 = int32(length(Temp)/4);
pt2 = pt1 * 2;
pt3 = pt1 * 3;
pt4 = length(Temp);

IBlue = zeros(length(Temp),1);
IBlue(1:pt1) = IMax;
IBlue(pt1:pt2) = linspace(IMax,0,pt2-pt1+1);
IBlue(pt2:pt3) = 0;

IRed = zeros(length(Temp),1);
IRed(1:pt2) = 0;
IRed(pt2:pt3) = linspace(0,IMax,pt3-pt2+1);
IRed(pt3:pt4) = IMax;

IGreen = zeros(length(Temp),1);
IGreen(1:pt1) = linspace(0,IMax,pt1);
IGreen(pt1:pt3) = IMax;
IGreen(pt3:pt4) = linspace(IMax,0,pt4-pt3+1);

figure("Name","Temperature vs Intensity of RGB Led For Different Colors")
plot(Temp,IBlue, Color='b')
hold on
plot(Temp,IGreen, Color='g')
hold on
plot(Temp,IRed, Color='r')
xlabel("Temperature (°C)")
ylabel("Color Intensity")
title("Temperature vs Intensity of RGB Led For Different Colors")
legend("Blue", "Green", "Red")
ylim([-0.1,1.1])
grid on
hold off

%Voltage vs Color
color = [IRed/IMax, IGreen/IMax,IBlue / IMax];
color(color<0) = 0;
color(color>1) = 1;

figure("Name", "Color vs Sensing Unit Voltage")
x = [Temp;Temp];
y = [1,2];
C = [1:length(color) ; 1:length(color)];
s = pcolor(x,y,C);
s.MeshStyle = "row";
s.LineStyle = "-";
colormap(color)
xlabel('Sensing Unit Voltage (V)')
title('Color of RGB Led for Sensing Unit Voltage Values')
yticks([]);