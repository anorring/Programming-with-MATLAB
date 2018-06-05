% Write a function called circular_primes that finds the number of 
%   circular prime numbers smaller than n, where n is a positive integer 
%   scalar input argument. For example, the number, 197, is a circular 
%   prime because all rotations of its digits: 197, 971, and 719, are 
%   themselves prime. For instance, there are thirteen such primes below 
%   100: 2, 3, 5, 7, 11, 13, 17, 31, 37, 71, 73, 79, and 97. It is 
%   important to emphasize that rotation means circular permutation not 
%   all possible permutations.
%
% input: n, a positive integer
% ouput: n_circular_primes, the number of circular primes smaller than n

function n = circular_primes(k)
    n = 0;
    for p = primes(k-1)
        if circular_prime(p)
            n = n + 1;
        end
    end
end

function yes = circular_prime(k)
    d = num2str(k);
    for ii = 1:length(d)
        d = circshift(d,[0 1]);   % try next circular shifted version
        if ~isprime(str2num(d))   
            yes = false;          % not circular prime
            return;               % so we can return
        end
    end
    yes = true;                   % if we made it here, it is a circular prime
end

%% My proposal:

function [n_circular_primes] = my_circular_primes(n)

n_circular_primes = 0;
circularprimes = [];

prime = primes(n-1);

np = length(prime);

for i=1:np
    n=prime(i);
    for j=1:ndigits(prime(i))
        d(j)=mod(n,10);
        n=floor(n/10);
    end
    
    flag=true;
    for k=1:length(d)
        result=circshift(d,[1,1]);
        d=result;
        number=0;
        for kk=1:length(d)
            number=number+10^(kk-1) * d(kk);
        end
        number;
        
       
        if ~isprime(number)
            flag=false;
        end
    end
    
    if flag==true
        n_circular_primes=n_circular_primes+1;
        circularprimes=[circularprimes,prime(i)];
    end
    
end
circularprimes;
end


function result=shift(nelements, k)      
% function to shift elements of an array forward in a circular way by k elements 
% redundant - does same as MATLAB function circshift

    len = size(nelements,2);
    result = zeros(1,len);
    start = mod((len - k),len);
    for i =1:len
        index=mod(start + i+1 , len)+1;
        result(i)=nelements(index);
     end
end


function nd= ndigits(A)
% find how many digits are in a number
    nd=floor(log10(abs(A)+1)) + 1;
end