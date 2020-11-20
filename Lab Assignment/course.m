t=input('Enter the no. of courses:');
m=2^t;
b=input('Enter the probability of getting B:');
c=input('Enter the probability of getting C:');
g=zeros(m,t);
h=zeros(1,m);
for i=1:m
    k=de2bi(i-1,t);
    sum=0;
    prob=1;
    for j=-t:-1
        l=-j;
        g(i,l)=g(i,l)+k(1,j+t+1);
        if g(i,l)==0
            sum=sum+3;
            prob=prob*b;
        else 
            sum=sum+2;
            prob=prob*c;
        end
    end
    GPA(1,i)=sum/t;
    pGPA(1,i)=prob;
end
fprintf('Sample Space (0 representing B & 1 representing C):'); 
disp(g);
fprintf('GPA:'); 
disp(GPA);
fprintf('Probability of each GPA:'); 
disp(pGPA);