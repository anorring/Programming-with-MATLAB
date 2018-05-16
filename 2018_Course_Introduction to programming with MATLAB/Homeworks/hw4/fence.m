% input 1: lng, length of a straight fence
% input 2: seg, length of one segment of fencing material, which needs a
%               pole at both ends but neighbouring elements share one
% output 1: segments, number of segments needed
% output 2: poles, number of poles needed

function [segments, poles] = fence(lng,seg)
segments = ceil(lng/seg);
poles = segments + 1;
end

% SOLUTION:

%function [nums , nump] = fence(lng,seg)
%    nums = ceil(lng/seg);
%    nump = nums+1;
%end