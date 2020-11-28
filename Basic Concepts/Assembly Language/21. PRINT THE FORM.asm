.MODEL SMALL
.STACK 100H
.DATA

ID DB "ID:$"
NAM DB "NAME:$"
DEPT  DB "Dept:$"
UNI   DB "University:$"


.CODE
MAIN PROC
    
    ; CODE STARTS HERE  
    
    MOV AX,@DATA              ; INITIALIZATION OF DATA SEGMENT
    MOV DS,AX 
    
    LEA DX,ID                ; LOAD EFFECTIVE ADDRESS
    MOV AH,9                  ; STRING PRINT FUNCTION  
    INT 21H
                                                       
                                                       
   MOV AH,2
   MOV DL,0DH  
   INT 21H      ; NEW LINE
   MOV DL,0AH
   INT 21H   
   
        
    LEA DX,NAM               ; LOAD EFFECTIVE ADDRESS
    MOV AH,9                  ; STRING PRINT FUNCTION  
    INT 21H
   
   MOV AH,2
   MOV DL,0DH  
   INT 21H      ; NEW LINE
   MOV DL,0AH
   INT 21H   
   
   
    LEA DX,DEPT               ; LOAD EFFECTIVE ADDRESS
    MOV AH,9                  ; STRING PRINT FUNCTION  
    INT 21H
   
   MOV AH,2
   MOV DL,0DH  
   INT 21H      ; NEW LINE
   MOV DL,0AH
   INT 21H     
   
   
    LEA DX,UNI              ; LOAD EFFECTIVE ADDRESS
    MOV AH,9                  ; STRING PRINT FUNCTION  
    INT 21H
   
   MOV AH,2
   MOV DL,0DH  
   INT 21H      ; NEW LINE
   MOV DL,0AH
   INT 21H  
        
    
    
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP
END MAIN
    




