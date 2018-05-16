%function [tw, tv] = total_weight(vol, wd)
%tw = sum(vol.*wd); % .* array multiplication, x will be the weight of the element
%tv = sum(vol);
%end

% Remember to use [ww vv] = total_weight(v,d)

% A second approach:

function [tw, tv] = total_weight(vol, wd)
tv = sum(vol)
tw = vol*wd' %Use transpose to be able to use matrix multiplication, i.e. to make the inner dimensions of vectors same.
end

% Troubleshooting:

whos ww vv

