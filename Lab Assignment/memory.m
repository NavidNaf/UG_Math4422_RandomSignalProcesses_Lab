%Total no. of programs=4
E=0;
E1=0;
a=[1,2,3,4];
pa=0.1*(5-a);
for i=1:4
    fprintf('For %d program,',i);
    M(1,i)=input('enter the no. of chips:');
    E=E+a(1,i)*0.1*(5-a(1,i));
end
fprintf('\nM:4a when a=1');
fprintf('\nM:2a when a=2,3,4'); 
for i=1:4
    if(i==1)
        E1=E1+4*a(1,i)*0.1*(5-a(1,i));
    elseif(i>1)
        E1=E1+2*a(1,i)*0.1*(5-a(1,i));
    end
end
fprintf('\nExpected value of A:%d',E);
fprintf('\nExpected value of M:%d',E1);
