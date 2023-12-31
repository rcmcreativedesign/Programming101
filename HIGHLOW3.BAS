DECLARE SUB DISPLAYWRONGGUESS (GUESSNUM%, MESSAGE$)
'Higher or Lower 3

RANDOMIZE TIMER

LET NUMBER% = INT(RND * 10) + 1
LET GUESS% = 0
LET GUESSNUMBER% = 1

CLS

LOCATE 1, 1: PRINT "HIGHER OR LOWER: GUESS A NUMBER BETWEEN 1 AND 10"
DO
    LOCATE 25, 1: INPUT "ENTER A GUESS: ", GUESS%
    IF GUESS% = 0 THEN
        GOTO QUIT
    ELSEIF GUESS% < 1 OR GUESS% > 10 THEN
        LOCATE GUESSNUMBER% + 2, 1: PRINT "PLEASE ENTER A NUMBER BETWEEN 1 AND 10"
    ELSEIF GUESS% < NUMBER% THEN
        CALL DISPLAYWRONGGUESS(GUESSNUMBER%, "HIGHER")
    ELSEIF GUESS% > NUMBER% THEN
        CALL DISPLAYWRONGGUESS(GUESSNUMBER%, "LOWER")
    ELSE
        LOCATE GUESSNUMBER% + 2, 1: PRINT "YOU GUESSED THE NUMBER IN"; GUESSNUMBER%; "TRIES"
    END IF
    GUESSNUMBER% = GUESSNUMBER% + 1
LOOP WHILE GUESS% <> NUMBER%

QUIT:

SUB DISPLAYWRONGGUESS (GUESSNUM%, MESSAGE$)
    LOCATE GUESSNUM% + 2, 1: PRINT "GUESS"; GUESSNUM%; ": NUMBER IS "; MESSAGE$
END SUB

