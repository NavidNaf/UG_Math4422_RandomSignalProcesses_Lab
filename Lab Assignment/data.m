%Considering the no. of voice & data calls are uniformly distributed
E=0;
a=input('Enter the no. of calls:');
p=input('Enter the cost of voice call:');
q=input('Enter the cost of data call:');
fprintf('Expressing T as a function of N:%d*n+%d*(%d-n)',p,q,a);
for i=0:a
    fprintf('\nWhen n=%d,',i);
    pn(1,i+1)=input('\nEnter the PMF:');
    t(1,i+1)=p*i+q*(a-i);
    E=E+t(1,i+1)*pn(1,i+1);
end
for i=0:a
    fprintf('PMF of T:%d when t=%d\n',pn(1,i+1),t(1,i+1));
end
fprintf('\nExpected Value of T:%d',E);
