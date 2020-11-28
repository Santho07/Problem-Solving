
.MODEL SMALL

.DATA
VAL1 DB 11
VAL2 DB 15
MSG DB 'SUM OF 2 NO.$'

.CODE       

MAIN PROC    
    
    MOV AX, @DATA    ; INITIALIZAION OF DATA SEGMENT
    MOV DS,AX   
    
    
    MOV AX,0 
    
    MOV AL,VAL1       ; ADDITION
    ADD AL,VAL2   
    
    AAM               ; ADJUST AFTER MULTIPLICATION   ; binary coded decimal create , 8 bit-8bit
    
    ADD AX,3030H      ; bcd to hexadecimal
    PUSH AX   
    
    
    LEA DX,MSG             .
    MOV AH,09H        ; PRINT THE STRING
    INT 21H   
    
    
    POP AX            ; ah->vagfol,al->vagsesh
    MOV DL,AH  
    
    MOV DH,AL     
    
    MOV AH,02H        ; PRINT THE HIGHER BIT( BAM PASER DIGIT TA)
    INT 21H 
    
    
    MOV DL,DH
    MOV AL,02H         ; PRINT THE LOWER BIT(DAN PASER DIGIT TA) 
    INT 21H  
    
    
    
    MOV AX,4CH
    INT 21H
    MAIN ENDP
END MAIN