% Write a function called maxproduct that takes a matrix A and a positive 
%   integer scalar n as inputs and computes the largest product of n 
%   adjacent elements in the same direction in A. That is, we are looking
%   for products of consecutive elements in the same row, column, diagonal
%   or reverse diagonal. The function must return an n-by-2 matrix 
%   containing the row and column indexes ordered first by row and then by
%   column. If no such product exists, the function returns the empty 
%   array. For example, valid outputs for a max product of 3 neighbors in 
%   four different matrices might be [2 2; 2 3; 2 4] or [1 1; 2 1; 3 1] or
%   [3 5; 4 4; 5 3] or [4 2; 5 3; 6 4]. If there are multiple products 
%   with the same maximum value, return the first one you find. 
%
% input 1: A, a matrix
% input 2: n, a positive integer scalar
% output: maxprod, the alrgest product of n adjacent elements in A

function B = maxproduct(A,n)

% After checking that we do not have to return an empty array, we initialize a row vector
% for remembering a product, home row and column, and one of four direction codes.
% Home is a location in the matrix from which we can move in one of the directions
% (1=East, 2=South, 3=SouthEast, 4=SouthWest). For each direction, home is systematically 
% moved to everywhere it legally can be the start of n values. For each location, we 
% potentially update the L vector with the largest product so far, the home location and
% direction that corresponded to that product. After scanning in all four directions, we 
% use L to reconstruct the required indices based on the last updated home and direction. 

  [r,c] = size(A);
  if n>r && n>c
    B = [];                                    % cannot be solved
    return
  end

  L = [-Inf,0,0,0];                            % [product, home-row, home-col, direction]
      
  for i=1:r                            
    for j=1:c-n+1
      L = check(A(i,j:j+n-1),[i,j,1],L);       % row, right case
    end
  end 
  for i=1:r-n+1                        
    for j=1:c
      L = check(A(i:i+n-1,j),[i,j,2],L);       % column, down case
    end
  end
  for i=1:r-n+1
    for j=1:c-n+1
      S=A(i:i+n-1,j:j+n-1);
      L = check(diag(S),[i,j,3],L);            % diagonal, down case
      L = check(diag(flip(S,2)),[i,j,4],L);    % reverse diagonal, down case
    end
  end
  
  i=L(2); j=L(3);                              % reconstruct coordinates
  switch L(4)                                  
    case 1, B = [ones(n,1)*i,(j:j+n-1)'];      
    case 2, B = [(i:i+n-1)',ones(n,1)*j];
    case 3, B = [(i:i+n-1)',(j:j+n-1)'];
    case 4, B = [(i:i+n-1)',(j+n-1:-1:j)'];
  end
end

function L = check(V,d,L)
  p = prod(V);
  if p>L(1)                                    % if new product larger than any previous
    L = [p,d];                                 % then update product, home and direction 
  end  
end

%% My proposal, which was not correct:

function [maxprod] = my_maxproduct(A,n)
   
    [mpr,maxpR]=mpRows(A,n); if mpr>-Inf maxpR=sortrows(maxpR,1); end;
    [mpc,maxpC]=mpRows(A',n); if mpc>-Inf maxpC=sortrows(fliplr(maxpC),1);end;
    [mpd,maxpD]=mpDiags(A,n); if mpd>-Inf maxpD=sortrows(maxpD,1); end;
    [mpod,maxpOD]=mpDiags(fliplr(A),n); if mpod >-Inf maxpOD=sortrows(maxpOD,1);end;

    for i=1:size(maxpOD,1)
        maxpOD(i,2)=size(A,2)-maxpOD(i,2)+1;
    end
    [mp,index]=max([mpr,mpc,mpd,mpod]);
    switch index
        case 1
            maxprod=maxpR;
        case 2
            maxprod=maxpC;
        case 3
            maxprod=maxpD;
        case 4
            maxprod=maxpOD;
    end
end

function [mp,max_prods]=mpRows(A,n)
    if n > size(A,2)
        mp=-Inf;
        max_prods=[];
        return
    end
    mp=-Inf;
    rows=size(A,1);
    cols=size(A,2);
    for i= 1:rows
        for j=1:cols-n+1
          thisprod=prod(A(i,j:j+n-1));
          if thisprod==Inf
              thisprod=-Inf;
          end
          if thisprod>mp
              mp=thisprod;
              max_prods(1:n,1)=i;
              max_prods(1:n,2)=j:j+n-1;
          end   
        end    
    end
       
end

function [mp,newxp]=mpDiags(A,n)
   
    d=diags(A,n);
    [mp,max_prods]=mpRows(d,n) ; 
    
    x=1:size(A,1);
    y=1:size(A,2);
    [RR,CC]=ndgrid(x,y);
    RR=diags(RR,n);
    CC=diags(CC,n);
    newxp=zeros(size(max_prods,1),2);
    for i=1:size(max_prods,1)
        newxp(i,1)=RR(max_prods(i,1),max_prods(i,2));
        newxp(i,2)=CC(max_prods(i,1),max_prods(i,2));
    end
end

function d=diags(A,n)
    rows=size(A,1);
    cols=size(A,2);
    if rows>cols
        A=A';
        rows=size(A,1);
        cols=size(A,2);
    end
    Aninf=-inf(rows,cols);
    Abig=[Aninf,A,Aninf];
    diagonals=zeros(rows,2*cols);
    for i = 1:2*cols
        for j=1:rows
            diagonals(j,i)=Abig(j,i+j-1);
        end
    end
    d=diagonals';  
end