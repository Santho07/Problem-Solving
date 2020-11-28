.MODEL SMALL
.STACK 100H
.DATA
    STR DB 0AH,0DH,'OUTPUT: $'
.CODE

MAIN PROC
 
    MOV AX,@DATA   ; DATA INTIALIZATION
    MOV DS,AX
 
    MOV CL,0       ; TAKE THE STRING
    INPUT:           
        MOV AH,1
        INT 21H
        CMP AL,0DH
        JE END_      
     
        PUSH AX
        INC CL
        JMP INPUT  
        
        
    END_:
 
    MOV AH,9
    LEA DX,STR
    INT 21H
 
    OUTPUT:
        CMP CL,0
        JE EXIT
        DEC CL
        MOV AH,2
        POP DX
        INT 21H
        JMP OUTPUT  
        
    EXIT:
 
    MOV AH,4CH
    INT 21H
     
    MAIN ENDP
END MAIN