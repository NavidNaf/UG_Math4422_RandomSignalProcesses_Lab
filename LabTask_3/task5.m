# In an unfair game played between Jack and John, a coin is tossed 40 times. In each case, if Head is turned up, John gives Jack 1$ and if Tail is turned up, Jack gives John 2$ (Yes, it is 2$ and that is why it is an unfair game). A random variable X denotes the number of dollars Jack has got at the end of the game. X could be positive or negative. Calculate the PMF of X statistically. Plot the PMF.

function[pmf]=lab3_assignment_task5_142440()
%we assume that Jack starts at $0
k=0:40; %no. of heads
m=40-k;
p=0.5;
A=p^40;
c=zeros(1,41);
for i=1:41
c(i)=nchoosek(40,k(i));
end
pmf=A.*c;
x=k-(2*m)
figure('Name','Probability Mass Function','NumberTitle','off');
stem(x,pmf);
end