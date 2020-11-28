.MODEL SMALL
.STACK 100H
.CODE
MAIN PROC
    
    ; CODE STARTS HERE
    
    MOV BL,57
    MOV CX,10
    
    L1:
    MOV AH,2
    MOV DL,BL
    INT 21H
    
    DEC BL 
    LOOP L1
    
    
    
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN
    




