l=input('Enter no. of values of N:');
E=0;
Ex=0;
for i=1:l
    n(1,i)=input('Enter the value of N:');
    p(1,i)=input('Enter the corresponding probability of N:');
    E=E+n(1,i)*p(1,i);
    Ex=Ex+(n(1,i)^2)*p(1,i);
end
var=Ex-(E^2);
std=sqrt(var);
fprintf('Expected value:%d\nSecond moment:%d\nVariance:%d\nStandard Deviation:%d',E,Ex,var,std);