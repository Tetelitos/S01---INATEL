DIM pin as integer 
DIM senha as integer 
pin = 4321

INPUT senha

IF pin = senha THEN
    PRINT "Transacao autorizada!"
ELSE 
    PRINT "PIN invalido. Tente novamente."
END IF
