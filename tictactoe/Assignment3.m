%% This is a script to create a playable tic-tac-toe game %%
% Created by: Kevin Hooks
% Due Date: September 27
% The current 'beta' version should make the computer unbeatable and assumes
% correct play by user e.g. blocking potential wins by computer.
% This happens to be the most enjoyable project I have ever stressed and
% lost insane amounts of sleep over, btw. 

% There are redundancies in the win checking and board assignment sections
% at some points, this was done for time saving sake (e.g. the user cannot
% win, but the option is still available

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

%% Main Script %%

clear variables
%Welcome message%
welcome = ('Welcome to tic-tac-toe for MATLAB! When you are ready to begin, please enter your name: \n');
username = input(welcome ,'s');

% Create Game board %

board = [1:3;4:6;7:9];
strboard = num2str(board);
disp(strboard)

%The first move will be made by the computer%

compmove = 'Please wait while the computer decides where to play';
disp(compmove)
pause(2) % Added a pause so the user thinks the computer is "thinking"
move1 = 5; %Computer will always go in the middle to win easier

% To change the board, must change to string variables
% after num2str(board) the column of 2 and 3 become 4 and 7
if move1 == 1
    strboard(1,1) = 'O';
elseif move1 == 2
    strboard(1,4) = 'O';
elseif move1 == 3
    strboard(1,7) = 'O';
elseif move1 == 4
    strboard(2,1) = 'O';
elseif move1 == 5
    strboard(2,4) = 'O';    
elseif move1 == 6
    strboard(2,7) = 'O';
elseif move1 == 7
    strboard(3,1) = 'O';
elseif move1 == 8
    strboard(3,4) = 'O';
elseif move1 == 9
    strboard(3,7) = 'O';    
end
disp(strboard)

%The next move is the player move.%
move2 = input('It is now your turn, Pick a number between 1 and 9 to choose your space: \n');

%Check to make sure the new move hasn't been done
if move2 == move1
    move2 = input('That space has already been played, try again!: \n');
end

%Assign the move to the game board
if move2 == 1
    strboard(1,1) = 'X';
elseif move2 == 2
    strboard(1,4) = 'X';
elseif move2 == 3
    strboard(1,7) = 'X';
elseif move2 == 4
    strboard(2,1) = 'X';
elseif move2 == 5
    strboard(2,4) = 'X';    
elseif move2 == 6
    strboard(2,7) = 'X';
elseif move2 == 7
    strboard(3,1) = 'X';
elseif move2 == 8
    strboard(3,4) = 'X';
elseif move2 == 9
    strboard(3,7) = 'X';    
end                                                
disp(strboard)

disp(compmove)
pause(2)
%Computer's second move 
if move2 < 4
    move3 = 6;
elseif move2 > 6
    move3 = 4;
else move3 = 3;
end

%Convert move to string variable
if move3 == 1
    strboard(1,1) = 'O';
elseif move3 == 2
    strboard(1,4) = 'O';
elseif move3 == 3
    strboard(1,7) = 'O';
elseif move3 == 4
    strboard(2,1) = 'O';
elseif move3 == 5
    strboard(2,4) = 'O';    
elseif move3 == 6
    strboard(2,7) = 'O';
elseif move3 == 7
    strboard(3,1) = 'O';
elseif move3 == 8
    strboard(3,4) = 'O';
elseif move3 == 9
    strboard(3,7) = 'O';    
end                                                
disp(strboard)

%The next move is the player move.%
move4 = input('It is now your turn, Pick a number still available to choose your space: \n');

%Check to make sure the new move hasn't been done
if move4 == move1 || move4==move2 || move4==move3
    move4 = input('That space has already been played, try again!: \n');
end

if move4 == 1
    strboard(1,1) = 'X';
elseif move4 == 2
    strboard(1,4) = 'X';
elseif move4 == 3
    strboard(1,7) = 'X';
elseif move4 == 4
    strboard(2,1) = 'X';
elseif move4 == 5
    strboard(2,4) = 'X';    
elseif move4 == 6
    strboard(2,7) = 'X';
elseif move4 == 7
    strboard(3,1) = 'X';
elseif move4 == 8
    strboard(3,4) = 'X';
elseif move4 == 9
    strboard(3,7) = 'X';    
end                                                
disp(strboard)

disp(compmove)
pause(2)

%Computer's third move is the first a win could happen (for the computer)
if move3 == 6 && move4 ~=4
    move5 = 4;
elseif move3 == 4 && move4 ~= 6
    move5 = 6;
elseif move3 == 3 && move4 ~= 7
    move5 = 7;
elseif move2 == 8 && move4 == 6
    move5 = 1;
elseif move2 == 1 && move4 == 4
    move5 = 7;
elseif move3 == 3 && move4 == 7
    move5 = 1;
elseif move2 == 3 && move4 == 4
    move5 = 2;
elseif move2 == 9 && move4 == 6
    move5 = 3;
elseif move4 == 6 && strboard(3,4) ~= 'X'
    move5 = 2;
elseif move2 == 2 && move4 == 4
    move5 = 3;
end

%Apply move to game board
if move5 == 1
    strboard(1,1) = 'O';
elseif move5 == 2
    strboard(1,4) = 'O';
elseif move5 == 3
    strboard(1,7) = 'O';
elseif move5 == 4
    strboard(2,1) = 'O';
elseif move5 == 5
    strboard(2,4) = 'O';    
elseif move5 == 6
    strboard(2,7) = 'O';
elseif move5 == 7
    strboard(3,1) = 'O';
elseif move5 == 8
    strboard(3,4) = 'O';
elseif move5 == 9
    strboard(3,7) = 'O';    
end                                                
disp(strboard)

%check for win
if strboard(:,1) == 'X' % Vertical 3 in a row
    error('You win!')
elseif strboard(:,1) == 'O'
    error('You lose!')
elseif strboard(:,4) == 'X'
    error('You win!')
elseif strboard(:,4) == 'O'
    error('You lose!')
elseif strboard(:,7) == 'X'
    error('You win!')
elseif strboard(:,7) == 'O'
    error('You lose!')
elseif strboard(1,1)=='X' && strboard(1,4)=='X' && strboard(1,7)=='X' %Horizontal
    error('You win!')
elseif strboard(1,1)=='O' && strboard(1,4)=='O' && strboard(1,7)=='O'
    error('You lose!')
elseif strboard(2,1)=='X' && strboard(2,4)=='X' && strboard(2,7)=='X'
    error('You win!')
elseif strboard(2,1)=='O' && strboard(2,4)=='O' && strboard(2,7)=='O'
    error('You lose!')
elseif strboard(3,1)=='X' && strboard(3,4)=='X' && strboard(3,7)=='X'
    error('You win!')
elseif strboard(3,1)=='O' && strboard(3,4)=='O' && strboard(3,7)=='O'
    error('You lose!')
elseif strboard(1,1)=='O' && strboard(2,4)=='O' && strboard(3,7)=='O' %Diagonal
    error('You lose!')
elseif strboard(3,1)=='O' && strboard(2,4)=='O' && strboard(1,7)=='O'
    error('You lose!')
end

%The next move is the player move.%
move6 = input('It is now your turn, Pick a number still available to choose your space: \n');

%Check to make sure the new move hasn't been done
if move6 == move1 || move6==move2 || move6==move3 || move6==move4 || move6==move5
    move6 = input('That space has already been played, try again!: \n');
end

if move6 == 1
    strboard(1,1) = 'X';
elseif move6 == 2
    strboard(1,4) = 'X';
elseif move6 == 3
    strboard(1,7) = 'X';
elseif move6 == 4
    strboard(2,1) = 'X';
elseif move6 == 5
    strboard(2,4) = 'X';    
elseif move6 == 6
    strboard(2,7) = 'X';
elseif move6 == 7
    strboard(3,1) = 'X';
elseif move6 == 8
    strboard(3,4) = 'X';
elseif move6 == 9
    strboard(3,7) = 'X';    
end                                                
disp(strboard)

%check for win
if strboard(:,1) == 'X'
    error('You win!')
elseif strboard(:,1) == 'O'
    error('You lose!')
elseif strboard(:,4) == 'X'
    error('You win!')
elseif strboard(:,4) == 'O'
    error('You lose!')
elseif strboard(:,7) == 'X'
    error('You win!')
elseif strboard(:,7) == 'O'
    error('You lose!')
elseif strboard(1,1)=='X' && strboard(1,4)=='X' && strboard(1,7)=='X'
    error('You win!')
elseif strboard(1,1)=='O' && strboard(1,4)=='O' && strboard(1,7)=='O'
    error('You lose!')
elseif strboard(2,1)=='X' && strboard(2,4)=='X' && strboard(2,7)=='X'
    error('You win!')
elseif strboard(2,1)=='O' && strboard(2,4)=='O' && strboard(2,7)=='O'
    error('You lose!')
elseif strboard(3,1)=='X' && strboard(3,4)=='X' && strboard(3,7)=='X'
    error('You win!')
elseif strboard(3,1)=='O' && strboard(3,4)=='O' && strboard(3,7)=='O'
    error('You lose!')
elseif strboard(1,1)=='O' && strboard(2,4)=='O' && strboard(3,7)=='O'
    error('You lose!')
elseif strboard(3,1)=='O' && strboard(2,4)=='O' && strboard(1,7)=='O'
    error('You lose!')
end

disp(compmove)
pause(2)

%computer's fourth move
if move5 == 3 && move6 == 7 && strboard(3,7) ~= '9'
    move7 = 8;
elseif move5 == 3 && move6 == 7 && strboard(3,7) == '9'
    move7 = 9;
elseif move5 == 2 && move6 == 8
    move7 = 9;
elseif move5 == 1 && move6 == 7
    move7 = 9;
elseif move5 == 1 && move6 == 9 && strboard(3,1) == '7'
    move7 = 7;
elseif move5 == 1 && move6 == 9 && strboard(3,1) ~= '7'
    move7 = 2;
elseif move4 == 7 && move6 == 2
    move7 = 9;
elseif move4 == 7 && move6 == 9
    move7 = 2;
elseif move5 == 7 && move6 == 3
    move7 = 2;
end

if move7 == 1
    strboard(1,1) = 'O';
elseif move7 == 2
    strboard(1,4) = 'O';
elseif move7 == 3
    strboard(1,7) = 'O';
elseif move7 == 4
    strboard(2,1) = 'O';
elseif move7 == 5
    strboard(2,4) = 'O';    
elseif move7 == 6
    strboard(2,7) = 'O';
elseif move7 == 7
    strboard(3,1) = 'O';
elseif move7 == 8
    strboard(3,4) = 'O';
elseif move7 == 9
    strboard(3,7) = 'O';    
end                                                
disp(strboard)

%check for win
if strboard(:,1) == 'X'
    error('You win!')
elseif strboard(:,1) == 'O'
    error('You lose!')
elseif strboard(:,4) == 'X'
    error('You win!')
elseif strboard(:,4) == 'O'
    error('You lose!')
elseif strboard(:,7) == 'X'
    error('You win!')
elseif strboard(:,7) == 'O'
    error('You lose!')
elseif strboard(1,1)=='X' && strboard(1,4)=='X' && strboard(1,7)=='X'
    error('You win!')
elseif strboard(1,1)=='O' && strboard(1,4)=='O' && strboard(1,7)=='O'
    error('You lose!')
elseif strboard(2,1)=='X' && strboard(2,4)=='X' && strboard(2,7)=='X'
    error('You win!')
elseif strboard(2,1)=='O' && strboard(2,4)=='O' && strboard(2,7)=='O'
    error('You lose!')
elseif strboard(3,1)=='X' && strboard(3,4)=='X' && strboard(3,7)=='X'
    error('You win!')
elseif strboard(3,1)=='O' && strboard(3,4)=='O' && strboard(3,7)=='O'
    error('You lose!')
elseif strboard(1,1)=='O' && strboard(2,4)=='O' && strboard(3,7)=='O'
    error('You lose!')
elseif strboard(3,1)=='O' && strboard(2,4)=='O' && strboard(1,7)=='O'
    error('You lose!')
end

%Next move is player move
move8 = input('It is now your turn, Pick a number still available to choose your space: \n');

%Check to make sure the new move hasn't been done
if move8 == move1 || move8==move2 || move8==move3 || move8==move4 || move8==move5 || move8==move6 || move8==move7
    move8 = input('That space has already been played, try again!: \n');
end

if move8 == 1
    strboard(1,1) = 'X';
elseif move8 == 2
    strboard(1,4) = 'X';
elseif move8 == 3
    strboard(1,7) = 'X';
elseif move8 == 4
    strboard(2,1) = 'X';
elseif move8 == 5
    strboard(2,4) = 'X';    
elseif move8 == 6
    strboard(2,7) = 'X';
elseif move8 == 7
    strboard(3,1) = 'X';
elseif move8 == 8
    strboard(3,4) = 'X';
elseif move8 == 9
    strboard(3,7) = 'X';    
end                                                
disp(strboard)

%check for win
if strboard(:,1) == 'X'
    error('You win!')
elseif strboard(:,1) == 'O'
    error('You lose!')
elseif strboard(:,4) == 'X'
    error('You win!')
elseif strboard(:,4) == 'O'
    error('You lose!')
elseif strboard(:,7) == 'X'
    error('You win!')
elseif strboard(:,7) == 'O'
    error('You lose!')
elseif strboard(1,1)=='X' && strboard(1,4)=='X' && strboard(1,7)=='X'
    error('You win!')
elseif strboard(1,1)=='O' && strboard(1,4)=='O' && strboard(1,7)=='O'
    error('You lose!')
elseif strboard(2,1)=='X' && strboard(2,4)=='X' && strboard(2,7)=='X'
    error('You win!')
elseif strboard(2,1)=='O' && strboard(2,4)=='O' && strboard(2,7)=='O'
    error('You lose!')
elseif strboard(3,1)=='X' && strboard(3,4)=='X' && strboard(3,7)=='X'
    error('You win!')
elseif strboard(3,1)=='O' && strboard(3,4)=='O' && strboard(3,7)=='O'
    error('You lose!')
elseif strboard(1,1)=='O' && strboard(2,4)=='O' && strboard(3,7)=='O'
    error('You lose!')
elseif strboard(3,1)=='O' && strboard(2,4)=='O' && strboard(1,7)=='O'
    error('You lose!')
end

%Computer has the last move%
disp(compmove)
pause(2)
if strboard(1,1) == '1'
    move9 = 1;
elseif strboard(1,4) == '2'
    move9 = 2;
elseif strboard(1,7) == '3'
    move9 = 3;
elseif strboard(2,1) == '4'
    move9 = 4;
elseif strboard(2,7) == '6'
    move9 = 6;
elseif strboard(3,1) == '7'
    move9 = 7;
elseif strboard(3,4) == '8'
    move9 = 8;
else move9 = 9;
end

if move9 == 1
    strboard(1,1) = 'O';
elseif move9 == 2
    strboard(1,4) = 'O';
elseif move9 == 3
    strboard(1,7) = 'O';
elseif move9 == 4
    strboard(2,1) = 'O';
elseif move9 == 5
    strboard(2,4) = 'O';    
elseif move9 == 6
    strboard(2,7) = 'O';
elseif move9 == 7
    strboard(3,1) = 'O';
elseif move9 == 8
    strboard(3,4) = 'O';
elseif move9 == 9
    strboard(3,7) = 'O';    
end                                                
disp(strboard)

%check for win
if strboard(:,1) == 'X'
    error('You win!')
elseif strboard(:,1) == 'O'
    error('You lose!')
elseif strboard(:,4) == 'X'
    error('You win!')
elseif strboard(:,4) == 'O'
    error('You lose!')
elseif strboard(:,7) == 'X'
    error('You win!')
elseif strboard(:,7) == 'O'
    error('You lose!')
elseif strboard(1,1)=='X' && strboard(1,4)=='X' && strboard(1,7)=='X'
    error('You win!')
elseif strboard(1,1)=='O' && strboard(1,4)=='O' && strboard(1,7)=='O'
    error('You lose!')
elseif strboard(2,1)=='X' && strboard(2,4)=='X' && strboard(2,7)=='X'
    error('You win!')
elseif strboard(2,1)=='O' && strboard(2,4)=='O' && strboard(2,7)=='O'
    error('You lose!')
elseif strboard(3,1)=='X' && strboard(3,4)=='X' && strboard(3,7)=='X'
    error('You win!')
elseif strboard(3,1)=='O' && strboard(3,4)=='O' && strboard(3,7)=='O'
    error('You lose!')
elseif strboard(1,1)=='O' && strboard(2,4)=='O' && strboard(3,7)=='O'
    error('You lose!')
elseif strboard(3,1)=='O' && strboard(2,4)=='O' && strboard(1,7)=='O'
    error('You lose!')
else fprintf('It''s a tie! Congratulations %s You made it to the end! \n',username)
end