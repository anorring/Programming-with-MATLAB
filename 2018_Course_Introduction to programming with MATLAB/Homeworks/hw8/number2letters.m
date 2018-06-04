% If the numbers 1 to 5 are written out in words: one, two, three, four,
%   five, then there are 3+3+5+4+4 = 19 letters used in total. 
%   Write a function called number2letters that returns the number of 
%   letters needed to write down the number n in words. For example, 342 
%   (three hundred forty two) contains 20 letters. Notice that we do not 
%   count spaces, nor do we use hyphens. The only input to the function is
%   n, a positive integer smaller than 1000, but you do not need to check 
%   this.
%
% input: n, a positive integer smaller than 1000
% output: n_letters, the number of letters required to write n

function [ n_letters ] = number2letters(n)

% Check the validity of input:
if ~isscalar(n) || n < 1 || n>=1000 || n ~= floor(n)
    fprintf('Input must be a positive integer scalar less than 1000');
    return
end

units={'one','two','three','four','five','six','seven','eight','nine'};
teens={'eleven','twelve','thirteen','fourteen','fifteen','sixteen','seventeen','eighteen','nineteen'};
tens={'ten','twenty','thirty','forty','fifty','sixty','seventy','eighty','ninety'};

nd=length(num2str(n))

d=zeros(1,nd);
number=n;
for j=1:nd
    d(j)=mod(number,10);
    number=floor(number/10);
end   

n_letters=0;
d
if size(d,2)== 1
    n_letters=length(units{d(1)});
end

if size(d,2) >1
    n2=10*d(2)+d(1);
    if n2>0
        if mod(n2,10)==0
            n_letters=length(tens{d(2)});
           
        end
        
        if n2 < 10
            n_letters=length(units{d(1)});
        end
        
        if n2 > 10 && n2 < 20 && mod(n2,10)~=0
            n_letters=length(teens{d(1)});
            
        end
        
        if n2 > 20 && mod(n2,10)~=0
            n_letters=length(tens{d(2)})+length(units{d(1)});
            
        end
    end
end

if size(d,2) ==3
    if mod(n,100)==0
        n_letters=length(units{d(3)})+7; 
        return
    end
    n_letters=n_letters+length(units{d(3)})+7;
end

end