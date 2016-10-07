function [user] = winCheck(strboard);
% Check for win. Checks the strboard for winning possibilites
% input: strboard is the active game board with an x,y component
% output: user is the input from the user whether they want to continue or
% not.


user = 'y';
 
if strboard(:,1) == 'X'
    user = input('Game Over! Do you want to play again? y/n: \n', 's');
elseif strboard(:,1) == 'O'
    user = input('Game Over! Do you want to play again? y/n: \n', 's');
elseif strboard(:,4) == 'X'
    user = input('Game Over! Do you want to play again? y/n: \n', 's');
elseif strboard(:,4) == 'O'
    user = input('Game Over! Do you want to play again? y/n: \n', 's');
elseif strboard(:,7) == 'X'
    user = input('Game Over! Do you want to play again? y/n: \n', 's');
elseif strboard(:,7) == 'O'
    user = input('Game Over! Do you want to play again? y/n: \n', 's');
elseif strboard(1,1)=='X' && strboard(1,4)=='X' && strboard(1,7)=='X'
    user = input('Game Over! Do you want to play again? y/n: \n', 's');
elseif strboard(1,1)=='O' && strboard(1,4)=='O' && strboard(1,7)=='O'
    user = input('Game Over! Do you want to play again? y/n: \n', 's');
elseif strboard(2,1)=='X' && strboard(2,4)=='X' && strboard(2,7)=='X'
    user = input('Game Over! Do you want to play again? y/n: \n', 's');
elseif strboard(2,1)=='O' && strboard(2,4)=='O' && strboard(2,7)=='O'
    user = input('Game Over! Do you want to play again? y/n: \n', 's');
elseif strboard(3,1)=='X' && strboard(3,4)=='X' && strboard(3,7)=='X'
    user = input('Game Over! Do you want to play again? y/n: \n', 's');
elseif strboard(3,1)=='O' && strboard(3,4)=='O' && strboard(3,7)=='O'
    user = input('Game Over! Do you want to play again? y/n: \n', 's');
elseif strboard(1,1)=='O' && strboard(2,4)=='O' && strboard(3,7)=='O'
    user = input('Game Over! Do you want to play again? y/n: \n', 's');
elseif strboard(3,1)=='O' && strboard(2,4)=='O' && strboard(1,7)=='O'
    user = input('Game Over! Do you want to play again? y/n: \n', 's');
end


if user == 'n'
    for i=1:2
        input('Are you sure? \n')
    end
    error('Thanks for playing. Sorry for your loss.')
end

        
end


