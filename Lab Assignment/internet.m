%Considering the packets are uniformly distributed between 1 to max range 
nr=0;
ni=input('Enter the maximum range of packet for images:');
nt=input('Enter the maximum range of packet for text:');
pi=input('Enter the probability of a page having images:');
pt=1-pi;
fprintf('Conditional PMF P(N|I):\n%d when n=1 to %d\n0 otherwise',inv(ni),ni);
fprintf('\nConditional PMF P(N|T):\n%d when n=1 to %d\n0 otherwise',inv(nt),nt);
if(ni>nt)
    q1=inv(ni)*pi+inv(nt)*pt;
    q2=inv(ni)*pi;
    fprintf('\nThe PMF of N:\n%d when n=1 to %d\n%d when n=%d to %d\n0 otherwise',q1,nt,q2,(nt+1),ni);
    if(10>nt)
        q3=q1*nt+q2*(10-nt);
        fprintf('\nThe PMF of N|N<1=0:\n%d when n=1 to %d\n%d when n=%d to 10\n0 otherwise',(q1/q3),nt,(q2/q3),(nt+1));
        for a=1:10
            if(a>=nt)
            q4=q4+a*(q1/q3);
            q5=q5+(a^2)*(q1/q3);
            else
            q4=q4+a*(q2/q3);
            q5=q5+(a^2)*(q2/q3);
            end
        end
    q6=q5-(q4^2);
    fprintf('E[N|N<=10]:%d',q4);
    fprintf('Var[N|N<=10]:%d',q6);
    elseif(10<=nt)
        q3=q1*10;
        fprintf('\nThe PMF of N|N<=10:\n%d when n=1 to %d\n0 otherwise',(q1/q3));
        for a=1:10
        q4=q4+a*(q1/q3);
        q5=q5+(a^2)*(q1/q3);
        end
    q6=q5-(q4^2);
    fprintf('E[N|N<=10]:%d',q4);
    fprintf('Var[N|N<=10]:%d',q6);
    end
   
elseif(nt>ni)
    r1=inv(ni)*pi+inv(nt)*pt;
    r2=inv(ni)*pi;
    fprintf('\nThe PMF of N:\n%d when n=1 to %d\n%d when n=%d to %d\n0 otherwise',r1,ni,r2,(ni+1),nt); 
    if(10>ni)
        r3=r1*ni+r2*(10-ni);
        fprintf('\nThe PMF of N|N<=10:\n%d when n=1 to %d\n%d when n=%d to 10\n0 otherwise',(r1/r3),ni,(r2/r3),(ni+1));
        for b=1:10
            if(b>=ni)
            r4=r4+b*(r1/r3);
            r5=r5+(b^2)*(r1/r3);
            else
            r4=r4+b*(r2/r3);
            r5=r5+(b^2)*(r2/r3);
            end
        end
    r6=r5-(r4^2);
    fprintf('E[N|N<=10]:%d',r4);
    fprintf('Var[N|N<=10]:%d',r6);
    elseif(10<=ni)
        r3=r1*10;
        fprintf('\nThe PMF of N|N<=10:\n%d when n=1 to 10\n0 otherwise',(r1/r3));
        for b=1:10
        r4=r4+b*(r1/r3);
        r5=r5+(b^2)*(r1/r3);
        end
    r6=r5-(r4^2);
    fprintf('E[N|N<=10]:%d',r4);
    fprintf('Var[N|N<=10]:%d',r6);
    end
    
elseif(nt==ni)
    l1=inv(ni)*pi+inv(nt)*pt;
    fprintf('\nThe PMF of N:\n%d when n=1 to %d\n0 otherwise',l1,nt);
    l2=l1*10;
    fprintf('\nThe PMF of N|N<=10:\n%d when n=1 to 10\n0 otherwise',(l1/l2));
    l3=0;
    l4=0;
    for c=1:10
    l3=l3+c*(l1/l2);
    l4=l4+(c^2)*(l1/l2);
    end
    l5=l4-(l3^2);
    fprintf('E[N|N<=10]:%d',l3);
    fprintf('Var[N|N<=10]:%d',l5);
end

