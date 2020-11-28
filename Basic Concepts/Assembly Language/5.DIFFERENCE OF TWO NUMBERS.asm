.MODEL SMALL
.STACK 100H
.CODE
MAIN PROC
    MOV AH,1       ; INPUT FUNCTION
    INT 21H   
    
    MOV BL,AL     ; 1ST INPUT
    INT 21H
    
    MOV CL,AL     ; 2ND INPUT
             
    
    
    SUB BL,CL    ; SUBTRACTION
    ADD BL,48    ; ADJUST ASCII
    
    MOV AH,2      ; OUTPUT FUNCTION
    MOV DL,BL
    INT 21H
    
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN
    
    
    