function [v]=minorFunctionGB(a) 
v = readVoltage(a,'A1'); %defining voltage variable and corresponding port for moisture sensor
if v>2.7
    disp('Soil is Dry!') %message displayed if voltage is higher than assigned threshold
    writeDigitalPin(a,'D2',1); %Defining pump port ; activate pump when voltage is higher than 2.7
    pause(3.0);
    writeDigitalPin(a,'D2',0); %shutoff water supply when voltage is lower than 2.7
elseif v<2.7
    disp('Water Level Stable') %message displayed if voltage is lower than assigned threshold
end %end of program