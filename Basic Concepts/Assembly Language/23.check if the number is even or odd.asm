.MODEL SMALL   

.STACK 100H

.DATA
    
    msg1 DB '- odd$'    
    msg2 DB '- even$'
    msg3 DB ' not in range. $' 
    
.CODE 

    MAIN PROC
    
     
    MOV AX, @DATA
    MOV DS, AX
               
        MOV AH, 1 ;input a number
        INT 21h 
        
        
        CMP AL,48
        JL l1;
        
        CMP AL,57
        JG l1; 
                 
    
        MOV BL, 2 ;divide any number in al by bl or 2 here
        DIV BL             
    
        CMP AH, 1 ; ah has the remainder
        JE ODD 
        
         EVEN:
                 
            MOV AH, 9
            LEA DX, msg2
            INT 21h
            JMP EXIT
            
         ODD:
            MOV AH, 9
            LEA DX, msg1
            INT 21h
            JMP EXIT 
            
        l1:
        LEA DX,msg3
        MOV AH,9
        INT 21h
        JMP exit
             
                   
        EXIT:
        MOV AH,4CH
        INT 21H 
        
    MAIN ENDP 
    
END MAIN