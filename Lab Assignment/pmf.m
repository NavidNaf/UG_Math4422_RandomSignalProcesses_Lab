m=input('No. of values of n:');
sum=0;
sum1=0;
sum2=0;
%n!=0
for i=1:m
    n(1,i)=input('Enter value of n:');
    sum=sum+inv(n(1,i));
end
c=inv(sum);
fprintf('The value of c is %d',c);
fprintf('\nThe value of p[n=1] is %d',c);
for i=1:m
    if n(1,i)<2
        sum1=sum1+c/n(1,i);
    end
    if n(1,i)<3 || n(1,i)==3
            sum2=sum2+c/n(1,i);
    end
end 

fprintf('\nThe value of p[n>=2] is %d',1-sum1);
fprintf('\nThe value of p[n>3] is %d',1-floor(sum2));
