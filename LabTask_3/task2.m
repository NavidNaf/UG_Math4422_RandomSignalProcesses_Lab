# Someone mistakenly deleted the source code of built-in function cumsum from your computer. Can you implement this function by yourself? Use this function to compute the CDF of previous problem.

function[cdf]=lab3_assignment_task2_152428(N)
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
cdf=pmf;
for i=2:N+1
cdf(i)=cdf(i-1)+pmf(i);
end
figure('Name','Cumulative Distribution Function','NumberTitle','off');
stem(x,cdf);
end
