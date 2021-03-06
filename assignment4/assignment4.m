%% New tic-tac-toe using loops
% created by: Kevin Hooks
% the purpose of this script is to create a tic tac toe game that utilizes
% loops 
% The game is still designed to function when the user is trying to win,
% yet the computer is still unbeatable. The entire game is in a while loop
% as long as the user wants to play. For loop located in the winCheck
% function.
%% Main Script %%

clear variables
%Welcome message%
welcome = ('Welcome to tic-tac-toe for MATLAB! When you are ready to begin, please press y: \n');
user = input(welcome ,'s');

while user == 'y'
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

    
%Check to make sure the new move hasn't been done and only show twice
for i=1:2
    if move2 == move1
    move2 = input('That space has already been played, try again!: \n');
    end
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
for i=1:2
    if move4 == move1 || move4==move2 || move4==move3
    move4 = input('That space has already been played, try again!: \n');
end
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

winCheck(strboard); %check for win


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
winCheck(strboard);

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
elseif move5 == 7 && move6 == 8 && strboard(1,7) == '3'
    move7 = 3;
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
winCheck(strboard);% check for win

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

winCheck(strboard); %check for win

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
winCheck(strboard);
if winCheck ==0
    user = input('It''s a tie! play again? y/n: \n' , 's');
end

end

