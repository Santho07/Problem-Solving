.MODEL SMALL
.STACK 100H
.DATA
STR DB "SA RE GA MA$"

.CODE
MAIN PROC
    
    MOV AX,@DATA              ; INITIALIZATION OF DATA SEGMENT
    MOV DS,AX 
    
    LEA DX,STR                ; LOAD EFFECTIVE ADDRESS
    MOV AH,9                  ; STRING PRINT FUNCTION
    INT 21H
            
            
   MOV AH,2
   MOV DL,0DH  
   INT 21H                    ; NEW LINE
   MOV DL,0AH
   INT 21H     
   
   MOV AH,4CH
   INT 21H
   MAIN ENDP
END MAIN