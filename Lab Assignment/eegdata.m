load .txt; % Load the data
fs=50; % Sample frequency of 50 Hz
N=length(eegdata); % Get data length
t=(0:N-1)/fs; % Generate time vector
plot(t,eegdata,'k'); 
hold on; % Plot the data
std_dev=sqrt(sum((eegdata - mean(eegdata)).^2)/(N-1)); %Eq. 1.22 
std_dev1=std(eegdata); % MATLAB standard deviation
avg=mean(eegdata); % Determine the mean of EEG
disp([std_dev std_dev1]) % Display both standard deviations
