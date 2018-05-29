% Write a function called fence that takes two scalar inputs: lng, the 
%   length of a straight fence we need to build and seg, the length of one
%   segment of fencing material. A segment needs to have a pole at both 
%   ends, but two neighboring segments always share a pole. The function 
%   returns two scalar outputs: the number of segments we need for the 
%   given length of fence and the number of poles needed. Note that a 
%   segment can be cut shorter if needed. For example, to build a 75m long
%   straight fence using 10m segments, we need 8 segments. You may find 
%   the ceil built-in function handy.
%
% input 1: lng, length of a straight fence
% input 2: seg, length of one segment of fencing material, which needs a
%               pole at both ends but neighbouring elements share one
% output 1: segments, number of segments needed
% output 2: poles, number of poles needed

function [segments, poles] = fence(lng,seg)
segments = ceil(lng/seg);       % ceil rounds to the nearest integers towards infinity
poles = segments + 1;           
end

% SOLUTION:

%function [nums , nump] = fence(lng,seg)
%    nums = ceil(lng/seg);
%    nump = nums+1;
%end