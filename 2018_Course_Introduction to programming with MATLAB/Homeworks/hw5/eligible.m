% Write a function called eligible that helps the admission officer of the
%   Graduate School of Vanderbilt University decide whether the applicant 
%   is eligible for admission based on GRE scores. The function takes two 
%   positive scalars called v and q as input. They represent the 
%   percentiles of the verbal and quantitative portions of the GRE 
%   respectively. You do not need to check the input. The applicant is 
%   eligible if the average percentile is at least 92% and both of the 
%   individual percentiles are over 88%. The function returns the logical 
%   true or false.
%
% This function helps admission officer decide wheter the applicant is
%   eligible for admission based on GRE scores.
% 
% input1: v, a positive scalar
% input2: q, a positive scalar
% output: logical value

function a = eligible(v,q)
a = (mean([v q]) >= 92) && (v > 88) && (q > 88);
end
