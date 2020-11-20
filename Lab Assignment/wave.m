fs=500; % Sample interval
N=500; % Number of points
f=4; % Frequency of sine wave
t=(0:N-1)/fs; % Generate time vector
x=sin(2*pi*f*t); % Generate sine wave
RMS=sqrt(mean(x.^2)); %Calculate RMS
disp (RMS) % and display 
plot(t,x); %Plot sine wave
xlabel('Time(sec)');
ylabel('x(t)'); % Label axes
 
 
xm=mean(x); % Evaluate mean of x
xvar=var(x); % Variance of x 
xstd=std(x); % Evaluate the standard deviation of x

