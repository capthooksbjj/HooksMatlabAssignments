function [row col click] = AIfcn(board,nMines)
% AI function example (makes random clicks)

% Random click-type
clicks = {'left','right'};
click = clicks{randi(2)};

% Random square (possibly already opened/flagged, in which case the click
% will have no effect)
[nRows nCols] = size(board);
row = randi(nRows);
col = randi(nCols);
