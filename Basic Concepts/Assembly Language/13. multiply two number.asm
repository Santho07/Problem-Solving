.model small
.stack 100h
.code
main proc
    mov ah,1
    int 21h     ; input one number 
    mov bl,al
    int 21h     ; input another number in AL      
    
    sub bl,48   
    sub al,48
        
    mul bl      ; 'MUL' for multiplication 
    add al,48
    
    mov cl,al  
             
    mov ah,2 
    mov dl,' '
    int 21h     ; printing output
    mov dl,cl
    int 21h     ;output
    
    exit:
    mov ah,4ch
    int 21h
   main endp
end main