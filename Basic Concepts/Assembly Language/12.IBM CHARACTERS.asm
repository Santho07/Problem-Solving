.MODEL SMALL
.STACK 100H
.CODE
MAIN PROC
    
    ; CODE STARTS HERE
             
    MOV BL,32
    MOV CX,95
    
    L1:
    MOV AH,2
    MOV DL,BL
    INT 21H
    INC BL
    LOOP L1
  
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN



