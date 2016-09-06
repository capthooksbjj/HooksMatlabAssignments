%
% AI test script
%
% Challenge: Can you beat the accuracy and/or speed of Minesweeper's
%            built-in EngineMove() method?
%

% Function handle to an artifical intelligence engine
% Try your own!
AI = @AIfcn;

% Open a GUI
M = Minesweeper();

% Loop until the game ends
while (M.isGameOver == false)
    % Flush graphics (if you want to watch the engine's progress)
    drawnow;
    
    % Get encoded board state
    nMines = M.nMines; % Total # mines in the puzzle
    board = M.GetBoardState(); % Current board state
    
    % Query AI for move
    [row col click] = AI(board,nMines);
    
    % Make the move
    switch click
        case 'left'
            % Left-click square @(row,col)
            M.LeftClick(row,col);
        case 'right'
            % Right-click square @(row,col)
            M.RightClick(row,col);
    end
end

% Get solution statistics
puzzleSolved = M.isSolved;
solutionTime = M.timeElapsed;
fprintf('Puzzle Solved - %i, Solution Time = %i seconds\n',puzzleSolved,solutionTime);

% Close the GUI
%M.Close();
