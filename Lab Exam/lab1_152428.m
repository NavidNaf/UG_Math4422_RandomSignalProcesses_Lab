
 load north_hall_data.txt;
figure(1)

[cc,lag]=xcorr(north_hall_data);
plot(lag,cc);grid on
%variance
v=var(north_hall_data);

%standard deviation
s=std(north_hall_data);
 
disp([v s]);

%suppress the noise
figure(2)
Le=length(north_hall_data);
subplot(2,1,1)
plot(north_hall_data);grid on
e=zeros(1,750);
M=0;
f=1;
for i=1:10:7500
   M=mean(north_hall_data(i:9+i,:));
   e(f)=M;
   f=f+1;
end
subplot(2,1,2)
plot(e);grid on

