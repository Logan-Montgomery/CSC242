validmove(1,4). validmove(1,6).

validmove(2,7). validmove(2,9).

validmove(3,10). validmove(3,8).

validmove(4,1). validmove(4,11). validmove(4,6). validmove(4,13).

validmove(5,14). validmove(5,12).

validmove(6,1). validmove(6,13). validmove(6,15). validmove(6,4).

validmove(7,2). validmove(7,9).

validmove(8,3). validmove(8,10).

validmove(9,2). validmove(9,7).

validmove(10,3). validmove(10,8).

validmove(11,4). validmove(11,13).

validmove(12,14). validmove(12,5).

validmove(13,15). validmove(13,6). validmove(13,4).

validmove(14,5). validmove(14,12).

validmove(15,6). validmove(15,13).

move(Start, End) :-
    validmove(Start, End),
    drawboard.



drawboard :-
    row1(A),
    write(A), nl,
    row2(B),
    write(B), nl,
    row3(C),
    write(C), nl,
    row4(D),
    write(D), nl,
    row5(E),
    write(E), nl.
  

/*    
rowcheck :-
    row1([_,"X"]).
  */  
go :-
    assert(row1(["        ","O"])),
    assert(row2(["      ","X"," ","X"])),
    assert(row3(["    ","X"," ","X"," ","X"])),
    assert(row4(["  ","X"," ","X"," ","X"," ","X"])),
    assert(row5(["X"," ","X"," ","X"," ","X"," ","X"])),
    write("This is the tricky triangle game"), nl,
    write("the goal is to leave only one peg"), nl,
    write("left on the board"), nl,
    write("here is your starting configuration..."), nl,
    write("          1        "), nl,
    write("        2  3       "), nl,
    write("      4  5  6      "), nl,
    write("    7  8  9  10    "), nl,
    write("11 12 13 14 15"), nl,
    drawboard.
    