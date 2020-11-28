 .MODEL SMALL
 .STACK 100H    
 .DATA

 .CODE
   MAIN PROC   
     ; display the character 'a'.
    
     MOV AH, 2   ; MOV AH, 2 -> print function
     MOV DL, "a"
     INT 21H   
     
     
     MOV AH,4CH
    INT 21H 
     
   MAIN ENDP
 END MAIN


