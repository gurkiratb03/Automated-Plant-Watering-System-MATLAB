a=arduino('COM4','uno'); %define Arduino Hardware
stop = false
while ~stop
    %Calling the function
v=minorFunctionGB(a);

%Current Time
t = datetime('now');

%Points for animation
h = animatedline('Marker','o');
addpoints(h,datenum(t),v)

%Update the axes

ax.XLim = datenum([t-seconds(15) t]);
datetick('x','keeplimits')
drawnow

%Verify stop condition
stop = readDigitalPin(a,'D6');
end