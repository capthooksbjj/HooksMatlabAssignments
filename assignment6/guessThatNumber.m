function guessThatNumber()  % *** WARNING: CONTAINS INTENTIONAL BUGS! ***
%--------------------------------------------------------------- 
%     
%       USAGE: guessThatNumber()
%
%        NAME: Kevin Hooks
%
%         DUE: October 27
%
%
% DESCRIPTION: This program is supposed to allow the user to play
%              the Number Guessing Game, however, it contains bugs.
%              Your job is to find, correct, and mark the errors with
%              comments describing the bug, how you found it,
%              and how you corrected it. Correct the bugs and submit this
%              corrected file on github.
%
%      INPUTS: None
%
%     OUTPUTS: None
%
%---------------------------------------------------------------

beginner = 1;               % beginner level #
moderate = 2;               % moderate level #
advanced = 3;               % advanced level #
beginnerHighest = 10;       % highest possible number for beginner
moderateHighest = 100;      % highest possible number for moderate
advancedHighest = 1000;    % highest possible number for advanced

% clear screen and display game introduction

clc()
fprintf(['Guess That Number Game (v2.0)\n\n', ...
    'This program plays the game of Guess That Number in which you have to guess\n', ...
    'a secret number.  After each guess you will be told whether your \n', ...
    'guess is too high, too low, or correct.\n\n'])

% Get level of play (1-3) from user

fprintf('Please select one of the three levels of play:\n')
fprintf('   1) Beginner (range is 1 to %d)\n', beginnerHighest)
fprintf('   2) Moderate (range is 1 to %d)\n', moderateHighest)
fprintf('   3) Advanced (range is 1 to %d)\n', advancedHighest)

level = input('Enter level (1-3): ');

while level ~= beginner && level ~= moderate && level ~= advanced %The || will make this an infinite loop.
    fprintf('Sorry, that is not a valid level selection.\n')
    level = input('Please re-enter a level of play (1-3): ');
end

% set highest secret number based on level selected

if level == beginner   %Should be double == - found by reading through
    
    highest = beginnerHighest;
    
elseif level == moderate
    
    highest = moderateHighest;
    
else
    highest = advancedHighest;         %Capitalize the 'h' - found by reading through
end

% randomly select secret number between 1 and highest for level of play

secretNumber = floor(rand() * highest); %This will make the number out of bounds. Removed the '+1'
% Found this error by playing and guessing the highest number and it was
% still too low


% initialize number of guesses and User_guess

numOfTries = 0; %Changed to 0 because it will grow each guess before the display
% Found by running and the number of tries was 1 too high
userGuess = 0;

% repeatedly get user's guess until the user guesses correctly

while userGuess ~= secretNumber
    
    % get a valid guess (an integer from 1-Highest) from the user
    
    fprintf('\nEnter a guess (1-%d): ', highest);
    userGuess = input('');
    
    while userGuess < 1 || userGuess > highest %removed = 
        %there is a possibility the secret # could be the boundary
        
        fprintf('Sorry, that is not a valid guess.\nRe-enter a guess (1-%d): ', highest);
        
        userGuess = input('');
        
    end % of guess validation loop
    
    % add 1 to the number of guesses the user has made
    
    numOfTries = numOfTries + 1;
    
    % report whether the user's guess was high, low, or correct
    
    if userGuess < secretNumber  %The > should be < Found by reading through
        fprintf('Sorry, %d is too low.\n', userGuess);
    elseif userGuess > secretNumber 
        fprintf('Sorry, %d is too high.\n', userGuess);
    elseif userGuess == secretNumber && numOfTries == 1%Changed this to include the guess being correct
        %Found by reading through
        fprintf('\nLucky You!  You got it on your first try!\n\n');
    else
        fprintf('\nCongratulations!  You got %d in %d tries.\n\n', ...
            secretNumber, numOfTries); %numOfTries should be included: 
        %Found by reading through
        % Missing an end for the if statement
        % Found by reading through
    end
end %The end of the guessing loop should come before the game over
    
    fprintf('Game Over. Thanks for playing the Guess That Number game.\n\n');
    
end %This needed to be added to keep the game over outside the loop but still play the game. Found by accident.


% end of game