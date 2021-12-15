function pr = prime(m,n)
%primes is a function that lists all prime numbers between n and m
%   n - the low end of the interval
%   m - the high end of the interval
%   [prime_list] - an array of every prime number between n and m 

if m<0;
    error('m must be greater than zero');
elseif n<m;
    error('n must be greater than m');
end;
if m<=2
    pr=[2];
    index=2;
else;
    pr=[];
    index=1;
end
while m<=n;
    for i=2:(m-1);
        if rem(m,i)==0;
            break;
        elseif i==(m-1);
            pr(1,index)=m;
            index=index+1;
        end;
    end;
    m=m+1;
end

