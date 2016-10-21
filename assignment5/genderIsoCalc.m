function [maleIsoIndMeans, femaleIsoIndMeans, maleIsoGroupMean, femaleIsoGroupMean] = genderIsoCalc (Gender, Day1, Day2, Day3)
% genderIsoCalc is a custom function to calculate the means of a three day
% exercise program and assign individual and group means to different
% variables for each gender.
%
% INPUTS: Gender, Day1, Day2, Day3
%
% OUTPUTS: maleIsoIndMeans, femaleIsoIndMeans, maleIsoGroupMean, femaleIsoGroupMean

threeDayAverage = zeros(size(Day1));
maleIsoIndMeans = zeros(size(Day1));
femaleIsoIndMeans = zeros(size(Day1));

for i = 1:size(Day1)
    %Calculate all the averages
    threeDayAverage(i) = ((Day1(i) + Day2(i) + Day3(i))/3);

    % create a new variable for the genders
if Gender(i) == 'F'
    femaleIsoIndMeans(i,:) = threeDayAverage(i);
else maleIsoIndMeans(i,:) = threeDayAverage(i);
end

end %of the for loop

% Now eliminate the zeros

femaleIsoIndMeans(all(femaleIsoIndMeans==0,2),:) = [];
maleIsoIndMeans(all(maleIsoIndMeans==0,2),:) = [];

% Calculation for Group Means
maleIsoGroupMean = mean(maleIsoIndMeans);
femaleIsoGroupMean = mean(femaleIsoIndMeans);
end