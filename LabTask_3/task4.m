# CDF of a random variable is given in a MATLAB vector. Compute the PMF from the CDF.

function[pmf]=lab3_assignment_task4_152428(cdf)
s=length(cdf);
x=1:s;
pmf=zeros(1,s);
for i=2:s
pmf(i)=cdf(i)-cdf(i-1);
end
figure('Name','Cumulative Distribution Function','NumberTitle','off');
stem(x,pmf);
end