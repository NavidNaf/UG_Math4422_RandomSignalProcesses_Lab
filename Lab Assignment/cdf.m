n=input('Enter the point where CDF of Y is 1:');
p(1,1)=0;
for i=1:n
    fprintf('At point %d,',i);
    m=input('enter the CDF of Y:');
    p(1,i+1)=m-p(1,i);
end 
fprintf('P[Y<1]=%d',p(1,1));
fprintf('P[Y<=1]=%d',(p(1,1)+p(1,2)));
fprintf('P[Y>2]=%d',(1-p(1,1)-p(1,2)-p(1,3)));
fprintf('P[Y>=2]=%d',(1-p(1,1)-p(1,2)));
fprintf('P[Y=1]=%d', (p(1,1)+p(1,2)));
fprintf('P[Y=3]=%d' ,(p(1,1)+p(1,2)+p(1,3)+p(1,4)));