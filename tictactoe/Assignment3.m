%% This is a script to create a playable tic-tac-toe game %%
% Created by: Kevin Hooks
% Due Date: September 27

%% REQUIREMENTS %%
%{
2.) Welcome message for the user.
3.) Show game board.
4.) Prompt user for move.
5.) Display updated game board.
6.) Generate computer move.
7.) Keep going until there is a winner or no more available moves.
8.) Show final prompt with game result and a finishing message.
9.) You may NOT use loops.
10.) Once a space is taken, another player cannot move to that spot.
Bonus Requirements Challenge (Worth extra points if correct):
1.) Allow computer to go first (5 bonus points)
2.) Make computer impossible to beat (tie every time). (10 bonus points)
%}


clear all

%Welcome message%
welcome = ('Welcome to tic-tac-toe for MATLAB! When you are ready to begin, please enter your name: \n');
username = input(welcome ,'s');

% Create Game board %

board = [1:3;4:6;7:9];
strboard = num2str(board);
disp(strboard)

%The first move will be made by the computer%

move1 = randi(9);
strboard = num2str(board);
board(move1) = 'O';
disp(strboard)

%The next move is the player move.%
move2 = input('It is now your turn, Pick a number between 1 and 9 to choose your space: \n');

if move2 == move1
    move2 = input('That move has already been played, try again!: \n');
end

board(move2) = char('X');

