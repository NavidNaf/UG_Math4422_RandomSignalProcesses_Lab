%1st case: Geometric random variable
fprintf('The PMF of X will be: p*((1-p)^(X-1))');

%2nd case: Geometric random variable
pX1=0;
p=input('\nEnter the probabilty of reject:');
x=input('Enter the value of X:');
pX=p*((1-p)^(x-1));
fprintf('The Probability of X=%d:%d',x,pX);
for i=1:x
    pX1=pX1+p*((1-p)^(i-1));
end
fprintf('\nThe Probability of X>=%d:%d',x,1-pX1);

%3rd & 4th case: Binomial random variable
pY1=0;
n=input('Enter the no. of bits transferred:');
fprintf('The PMF of Y will be (%d)C(Y)*(p^Y)*((1-p)^(%d-Y))',n,n);
pP=input('Enter the probability of reject:');
y=input('Enter the value of Y:');
pY=nchoosek(n,y)*(pP*y)*((1-pP)*(n-y));
fprintf('The Probability of Y=%d:%d',y,pY);
for j=1:y
    pY1=pY1+nchoosek(n,j)*(pP*j)*((1-pP)*(n-j));
end

fprintf('\nThe Probability of Y<=%d:%d',y,pY1);

%5th & 6th case: Pascal random variable
m=input('Enter the no. errors:');
fprintf('The PMF of Z will be (Z-1)C(%d-1)*(p^%d)*((1-p)^(Z-%d))',m,m);
pp=input('Enter the probability of reject:');
z=input('Enter the value of Z:');
pZ=nchoosek(z-1,m-1)*(pp*m)*((1-pp)*(z-m));
fprintf('The Probability of Z=%d:%d',z,pZ);


