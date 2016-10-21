function [dayMtoDayN] = dayComparator(SubjectID, DayM, DayN)
% Day Comparison function to compare two days and if there was an increase,
% return the Subject ID into a new variable.
% 
% INPUTS: (SubjectID, DayN, DayM) 
%
% OUTPUTS: [day1toDay2, day2toDay3] These will be the SubjectID's

dayMtoDayN = zeros(size(SubjectID));

for i = 1:size(DayN);
    
    if DayN(i) > DayM(i)
        dayMtoDayN(i,1) = SubjectID(i);
    end
end %of the for loop

%Remove zeros from matrix
dayMtoDayN(all(dayMtoDayN==0,2),:) = [];

%end of function
end