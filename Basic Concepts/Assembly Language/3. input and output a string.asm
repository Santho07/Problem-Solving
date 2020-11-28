.MODEL SMALL
.STACK 100H
.DATA

 
entername  DB  "Welcome, please enter your name:  ","$"
msg   DB  16 DUP('$')   ;It means that you allocate 16 bytes of memory, and 
                             ; these 16 bytes are uninitialized

.CODE
MAIN PROC
    
       ; CODE STARTS HERE
    
    
       MOV AX,@DATA              ; INITIALIZATION OF DATA SEGMENT
       MOV DS,AX 
    
    
       MOV  AH, 09H           
       LEA  DX, entername      ; print string
       INT  021H                  
            
  
       MOV  AH, 0AH           ;function to input a string
       LEA  DX, msg           ;ready to accept msg
       INT  021H              ;take user name    
       
       
       MOV AH,2
       MOV DL,0DH  
       INT 21H                ; NEW LINE
       MOV DL,0AH
       INT 21H    
            
       MOV  AH, 09H           ;function to output a string
       LEA  DX, msg+2         ;ready to accept msg , 1st 2 ta character  MaxLen,Len..so ei 2ta bad
       INT  021H              ;take user name   
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN
    