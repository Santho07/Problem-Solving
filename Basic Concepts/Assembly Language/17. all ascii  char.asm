.MODEL SMALL 
.STACK 100H 
.CODE

MAIN PROC 
    
    MOV CX,0
    L1:
    MOV BX,CX
    MOV CX,8       ;WE WANT 8 ASCII CHAR ON EACH LINE
    L2:
    MOV AH,2
    MOV DL,BL 
    INT 21H 
    
    INC BL
    CMP BL,255
    JE EXIT
    LOOP L2 
   MOV AH,2
   MOV DL,0DH
   INT 21H        ;NEWILNE
   MOV DL,0AH
   INT 21H 
   INC BL
   MOV CX,BX
   LOOP L1  
   EXIT:        
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN
OUTPUT:
                     
