function [board, strboard] = updateBoardO(move, m, n)
%the purpose of this function is to change the game board as we go along,
%input: move
%output: board is the updated game board.

m = 0;
n = 0; 
switch move
    case 1
        
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
        board(2,2) = 'O';
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
    
strboard('79') = 'O';

end