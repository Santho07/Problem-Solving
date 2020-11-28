.MODEL SMALL 
.STACK 100H  

.DATA
VAL DB 5
  
.CODE

MAIN PROC 
          
    MOV AX,@DATA              ; INITIALIZATION OF DATA SEGMENT
    MOV DS,AX   
             
    MOV BX,0 
     
           
    L1:
    INC BX       
        
        
    MOV CH,0 
    MOV CL,VAL  
    L3:
      MOV AH,2
      MOV DL,' '
      INT 21H
      LOOP L3 
               
                 
    MOV CX,BX 
    L2:
      MOV AH,2
      MOV DL,'*'
      INT 21H
      
      MOV DL,' ' 
      INT 21H
      
      LOOP L2          
      
      
   MOV AH,2
   MOV DL,0DH
   INT 21H        ;NEWILNE
   MOV DL,0AH
   INT 21H 
        
   CMP BX,5
      JE EXIT 
    
   DEC VAL        
   LOOP L1;
    
     
   
   EXIT:        
  
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN