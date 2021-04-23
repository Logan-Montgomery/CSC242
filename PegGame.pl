validmove(1,4).
validmove(1,6).

move(Start, End) :-
    validmove(Start, End).

board :-
    write("This is the tricky triangle game"), nl,
    write("the goal is to leave only one peg"), nl,
    write("left on the board"), nl,
    write("here is your starting configuration..."), nl,
    drawboard.

drawboard :-
    write("draw").
    
rows :-
    Row1 = ["        ","O"],
    Row2 = ["      ","X"," ","X"],
    Row3 = ["    ","X"," ","X"," ","X"],
    Row4 = ["  ","X"," ","X"," ","X"," ","X"],
    Row5 = ["X"," ","X"," ","X"," ","X"," ","X"],
    write(Row1), nl,
    write(Row2), nl,
    write(Row3), nl,
    write(Row4), nl,
    write(Row5).

    
go :-
    board.