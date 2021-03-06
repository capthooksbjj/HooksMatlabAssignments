%% Assignment 5 %%
% Created by: Kevin Hooks
% Due date: October 20
% This script is designed to import and analyze isokinetic strength data
% and export results to a csv file.

%% Step one: file import 
% Each variable name is needed to get a result in that column

[SubjectID, Age, Gender, Weight, Day1, Day2, Day3] = importfile('isok_data_6803.csv');


%% Step Two: Three day average

Gender = char(Gender); % function needs characters to scan for F or M
[maleIsoIndMeans, femaleIsoIndMeans, maleIsoGroupMean, femaleIsoGroupMean] = genderIsoCalc(Gender, Day1, Day2, Day3);

%% Step Three: Day comparison

[day1toDay2] = dayComparator(SubjectID, Day1, Day2);
[day2toDay3] = dayComparator(SubjectID, Day2, Day3);

%% Step Four: Weight Normalize

[normDay1mean] = weightNormalizer(Weight, Day1);
[normDay2mean] = weightNormalizer(Weight, Day2);
[normDay3mean] = weightNormalizer(Weight, Day3);


%% Step Five: Export

% Variables are of different lengths so they need to replace the zeros of
% the matrix A with the values from the results.

A = zeros(13, 9);
%create for loops to replace the zeros with each variable values.
for j = 1:length(maleIsoIndMeans)
    A(j,1) = maleIsoIndMeans(j);
end
for j = 1:length(femaleIsoIndMeans)
    A(j,2) = femaleIsoIndMeans(j);
end
for j = 1:length(maleIsoGroupMean)
    A(j,3) = maleIsoGroupMean(j);
end
for j = 1:length(femaleIsoGroupMean)
    A(j,4) = femaleIsoGroupMean(j);
end
for j = 1:length(day1toDay2)
    A(j,5) = day1toDay2(j);
end
for j = 1:length(day2toDay3)
    A(j,6) = day2toDay3(j);
end
for j = 1:length(normDay1mean)
    A(j,7) = normDay1mean(j);
end
for j = 1:length(normDay2mean)
    A(j,8) = normDay2mean(j);
end
for j = 1:length(normDay3mean)
    A(j,9) = normDay3mean(j);
end

%To create headers, need to make cells and have a two step file creation
header = {'maleIsoIndMeans' 'femaleIsoIndMeans' 'maleIsoGroupMean' 'femaleIsoGroupMean' ...
    'day1toDay2' 'day2toDay3' 'normDay1mean' 'normDay2mean' 'normDay3mean'};
commaHeader = [header;repmat({','},1,numel(header))]; %insert commas to header
commaHeader = commaHeader(:)';
textHeader = cell2mat(commaHeader); %header in text with commas

%write header to original file
fid = fopen('iso_results.csv','w');
fprintf(fid, '%s\n',textHeader);
fclose(fid);

%append data to results file
dlmwrite('iso_results.csv', A, '-append');


