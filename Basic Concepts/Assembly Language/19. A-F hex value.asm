.MODEL SMALL
.STACK 100H
.CODE
    
MAIN PROC           
    MOV CX,6
    
    
    PRINT:
        MOV AH,1
        INT 21H   ; FOR INPUT
        MOV BL,AL  
            
        SUB BL,17 ; BL IS SUBTRACTING FROM 17
        
        MOV AH,2 
        MOV DL,' '    ;  EKTA SPACE DILAM
        INT 21H  
        
         
        MOV DL,'1' ; A-F,ALL HAS ALWAYS ONE '1'
        INT 21H         
        
        MOV DL,BL  ; DAN E VALUE TA
        INT 21H  
        
        MOV DL,'H' ; FOR HEXADECIMAL IDENTIFICATION
        INT 21H 
        
        MOV DL,0DH
        INT 21H    ; NEWLINE PRINTING
        MOV DL,0AH
        INT 21H               
    
    LOOP PRINT    


    EXIT:
    MOV AH,4CH
    INT 21H
   MAIN ENDP
END MAIN
