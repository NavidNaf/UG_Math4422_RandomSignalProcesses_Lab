# You find that the source code of built-in function nchoosek has also been deleted. Can you implement this function as well?

function[cdf]=lab3_assignment_task3_152428(N)
x=0:N;
p=0.5;
y=fliplr(x);
c=zeros(1,(N+1));
for i=1:N+1
c(i)=factorial(N)/(factorial(x(i))*factorial(N-x(i)));
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