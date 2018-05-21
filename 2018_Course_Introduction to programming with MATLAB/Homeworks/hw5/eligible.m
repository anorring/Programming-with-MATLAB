% This function helps admission officer decide wheter the applicant is
% eligible for admission based on GRE scores.
% input 1: v, a positive scalar
% input 2: q, a positive scalar
% output: logical value

function a = eligible(v,q)
a = (mean([v q]) >= 92) && (v > 88) && (q > 88);
end
