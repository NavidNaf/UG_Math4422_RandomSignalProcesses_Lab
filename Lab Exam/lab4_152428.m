fs=500;
N=500; 
fs=500; % Assumed sampling frequency
N=500; % Number of points
t=(0:N-1)/fs; % Generate time vector
phase=80*(2*pi/360); % 60 degphase; convert to rad
x1=sin(2*pi*2*t); % Construct sinusoids
x2=sin(2*pi*2*t-phase); % One with a -80 phase shift
hold on;
plot(t,x1); % Plot the unshiftedsinusoid
plot(t,x2,'--'); % Plot using a dashed line