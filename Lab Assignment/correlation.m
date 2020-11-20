N=500; % Number of points
Tt=1.0 % Desired total time
fs=N/Tt; % Calculate sampling   frequency
t=(0:N-1)/fs; % Time vector from 0 (approx.) to 1 sec
x=sin(2*pi*t); % 1 Hz sine wave
y=cos(2*pi*t); % 1 Hz cosine wave
z=[ones(1,N/2) -ones(1,N/2)]; % 1 Hz square wave
rxz=mean(x.*z); % Correlation (Eq.2.15) x and z
rxy=mean(x.*y); % Correlation x and y
disp([rxz rxy]) % Output correlations
