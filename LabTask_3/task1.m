#N coins are tossed. Write a MATLAB function that takes N as input and plots PMF of X where X is the number of heads.

function[pmf]=lab3_assignment_task1_152428(N)
x=0:N;
p=0.5;
y=fliplr(x);
c=zeros(1,(N+1));
for i=1:N+1
c(i)=nchoosek(N,x(i));
end
A=p.^x;
B=(1-p).^y;
pmf=c.*A.*B;
figure('Name','Probability Mass Function','NumberTitle','off');
stem(x,pmf);
end