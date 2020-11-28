.MODEL SMALL
.STACK 100H
.DATA
.CODE
MAIN PROC
    
    ; CODE STARTS HERE
             
             
    
    MOV AH,1
    INT 21H
    MOV BL,AL
    INT 21H
    MOV BH,AL
    INT 21H
    MOV CL,AL
    
    
    CMP BL,BH
    JLE L2
    
    L1:
    CMP BH,CL
    JLE LL1
    
    
    MOV AH,2
    MOV DL,CL
    INT 21H
    
    JMP EXIT
    
    LL1:
    MOV AH,2
    MOV DL,BH
    INT 21H
    
    JMP EXIT
    
    L2:
    CMP BL,CL
    JLE LL2
    MOV AH,2
    MOV DL,CL
    INT 21H
    
    JMP EXIT
    
    LL2:
    MOV AH,2
    MOV DL,BL
    INT 21H
    
    
  EXIT:
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN
    