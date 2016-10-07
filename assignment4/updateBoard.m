function [board] = updateBoardO(move)
%the purpose of this function is to change the game board as we go along,
%input: move
%output: board is the updated game board.

m = 0;
n = 0; 
switch move
    case 1
        m=1;
        n=1;
    case 2
        m=1;
        n=2;
    case 3
        m=1;
        n=3;
    case 4
        m=2;
        n=1;
    case 5
        m=2;
        n=2;
    case 6
        m=2;
        n=3;
    case 7
        m=3;
        n=1;
    case 8
        m=3;
        n=2;
    case 9
        m=3;
        n=3;
end

if i==1 || i==3 || i==5 || i==7 || i==9
    board(m,n) = '0';
else
    board(m,n) = 'X';
end
strboard = num2str(board);
strboard('88') = 'X';
strboard('79') = 'O';

end