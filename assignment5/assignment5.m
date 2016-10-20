%% Assignment 5 %%
% Created by: Kevin Hooks
% Due date: October 20
% This script is designed to import and analyze isokinetic strength data
% and export results to a csv file.

%% Step one - file import. 
% Each variable name is needed to get a result in that column

[SubjectID, Age, Gender, Weight, Day1, Day2, Day3] = importfile('isok_data_6803.csv');

%% Step Two - Three day average
threeDayAverage = zeros(size(Day1));
Gender = char(Gender);
maleAvg = zeros(size(Day1));
femaleAvg = zeros(size(Day1));

for i = 1:size(Day1)
    threeDayAverage(i) = ((Day1(i) + Day2(i) + Day3(i))/3);

if Gender(i) == 'F'
    femaleAvg(i) = threeDayAverage(i);
else maleAvg(i) = threeDayAverage(i);
end
end




    