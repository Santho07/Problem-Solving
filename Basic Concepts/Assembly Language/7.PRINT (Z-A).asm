.MODEL SMALL
.STACK 100H
.CODE
MAIN PROC
    
    ; CODE STARTS HERE

     MOV CX, 26                   ; initialize CX , as 26 iterations required

     MOV AH, 2                    ; set output function  
     MOV DL, 90                     ; set DL with A

     LOOP:                        ; loop start
       INT 21H                    ; print character

       DEC DL                     ; increment DL to next ASCII character
       DEC CX                     ; decrement CX
  
     JNZ LOOP                     ; jump to label LOOP until CX is 0
    
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN




