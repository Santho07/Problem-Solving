.MODEL SMALL
.STACK 100H
.CODE
MAIN PROC  
    
    MOV CX ,5   ; LOOP  5 BAR GHURBE..THAT MEANS 5 LINES
    
    MOV AH,2   
    MOV DL,0DH
    INT 21H    ; NEW LINE 
    MOV DL,0AH
    INT 21H
           
    PRINT:
    
        MOV DL,' '
        INT 21H  ; FOR SPACE BEFORE LINE
        
         
        MOV BX,CX       
        
        MOV CX, 15   
                     
        REPRINT:
            MOV DL,'*'
            INT 21H       
        LOOP REPRINT      
        
        MOV DL,0DH
        INT 21H   ; FOR NEWLINE 
        MOV DL,0AH
        INT 21H
        
        MOV CX,BX
    LOOP PRINT           
MOV AH,4CH
INT 21H