.MODEL SMALL
.STACK 100H
.DATA

CHOICE DB 'enter 1/2/3 for capital letter/small letter/number$' 
WRONG_VAL DB 0AH,0DH,'WRONG VALUE$'

.CODE
MAIN PROC
    
    ; CODE STARTS HERE 
    
    
    MOV AX,@DATA              ; INITIALIZATION OF DATA SEGMENT
    MOV DS,AX
    
    
    CHOLBE:
    
    
   MOV AH,2
   MOV DL,0DH  
   INT 21H                    ; NEW LINE
   MOV DL,0AH
   INT 21H    
    
    LEA DX,CHOICE
    MOV AH,9
    INT 21H  
    
    
    MOV AH,1
    INT 21H
    
                              ; 49/50/51 ARE CORRESSPONDING ASCII OF 1/2/3
    CMP AL,49
    JE L1
    
    CMP AL,50
    JE L2
    
    CMP AL,51
    JE L3   
    
    CMP AL,48
    JMP CHOLBE
    
    
    
    L1:
    MOV AH,1
    INT 21H  
      
    
    CMP AL,65
    JL WRONG
    
    CMP AL,90
    JG WRONG  
     
    MOV AH,2
    MOV DL,AL
    INT 21H
    
    JMP CHOLBE 
    
    
    L2:
    MOV AH,1
    INT 21H   
    
    CMP AL,97
    JL WRONG
    
    CMP AL,122
    JG WRONG  
     
    MOV AH,2
    MOV DL,AL
    INT 21H
    
    JMP CHOLBE
    
    
    L3:
    MOV AH,1
    INT 21H   
    
    
    
    CMP AL,48
    JL WRONG
    
    CMP AL,57
    JG WRONG  
     
    MOV AH,2
    MOV DL,AL
    INT 21H
    
    JMP CHOLBE
    
    
    WRONG:
    LEA DX,WRONG_VAL
    MOV AH,9
    INT 21H 
    JMP CHOLBE;
    
    
    EXIT:
    MOV AH,4CH
    INT 21H  
    
    MAIN ENDP
END MAIN
    