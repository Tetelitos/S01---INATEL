DIM peso as integer 
DIM agua as integer 
DIM meta as integer

INPUT peso
INPUT agua

meta = peso * 35

IF agua >= meta THEN
    PRINT "Meta atingida!"
ELSE 
    PRINT "Meta nao atingida."
END IF
