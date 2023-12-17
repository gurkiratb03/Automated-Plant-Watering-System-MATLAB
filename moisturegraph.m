a = arduino('COM4','uno');
x = 0;
for k = 1:1000
    b = readVoltage(a,'A1');
    x = [x,b];
    plot(x);
    grid;
    drawnow;
end