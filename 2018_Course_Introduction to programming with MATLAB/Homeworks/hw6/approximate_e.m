% input: delta, a positive scalar
% output 1: appr_e, approximate value of e, calculated from Euler's formula
% stopped at k
% output 2: k, index for which the appr_e differs from exp(1) by no more
% than delta

function [app_e, k] = approximate_e(delta)
app_e = 1;                                  % assign an initial value for app_e
k=0;                                        % assign an initial value for k
fact_k=1;                                   % assign an initial value for fact_k, the factorial of k                             % 
while abs(app_e - exp(1)) > delta           % the condition for continuing the while-loop
      k=k+1;                                % increase k by one increment on each iteration
      fact_k = fact_k*k;                    % calculate the factorial of k on each iteration
  app_e = app_e + 1/fact_k;                 % calculate the value of app_e on each iteration
end
end