function [normDayNMean] = weightNormalizer (Weight, DayN)
% The function creates weight normalized mean values for one day of
% strength data.
%
% INPUTS: Weight, Day#
%
% OUTPUTS: normDay#Mean
%
% Replace N or # with the number of Day_

for i = 1:size(Weight)
    
    normDayN(i) = ((DayN(i))/(Weight(i)));
    normDayNMean = mean(normDayN);
    
end