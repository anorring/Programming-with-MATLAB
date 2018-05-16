%This function computes the "exponentially weighted moving average" of a
%sequence of scalars. 
%input 1: in1, the first value in the sequence 
%input 2: b, the weight
%output: out, the weighted moving average

function out = exp_average(in1,b)
    persistent avg;
    persistent alpha;
    if isempty(avg)
        avg = in1;
        alpha = 0.1;
    end
    if nargin == 2
        avg = in1;
        alpha = b;
    end
    avg = in1 * alpha + avg * (1-alpha);
    out = avg;
end