%input: A, matrix of integers of type double
%output: intclass, the name of the smallest signed integer class to which A
%           can be converted without loss of information

function intclass = integerize(A)
if A >= intmin('int8') & A <= intmax('int8')
    intclass = 'int8';
elseif A >= intmin('int16') & A <= intmax('int16')
    intclass = 'int16';
elseif A >= intmin('int32') & A <= intmax('int32')
    intclass = 'int32';
elseif A >= intmin('int64') & A <= intmax('int64')
    intclass = 'int64';
else
    intclass = 'NONE';
end
end