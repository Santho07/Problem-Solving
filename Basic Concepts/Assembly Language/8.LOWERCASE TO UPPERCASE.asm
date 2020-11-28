.MODEL SMALL
.STACK 100H
.CODE
MAIN PROC
    
    ; CODE STARTS HERE
    
    MOV AH,1            ; INPUT A CHAR
    INT 21H
     
    

    SUB AL,32           ; MAKE IT UPPERCASE  
    
    
    MOV AH,2            ; print it
    MOV DL,AL
    INT 21H   
    
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN