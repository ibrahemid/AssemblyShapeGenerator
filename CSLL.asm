JUMPS
.model small ;memory model
.stack 1024h ; stack size 
.data ; define data
      
                        Menu db '----------------------------------------',13,10
db '#########-------written-------##########',13,10
db '############-------By-------############',13,10

                        
                     
 db'__ ___ _               _                    ',13,10
db'|_   _| |             | |                   ',13,10
db'  | | | |__  _ __ __ _| |__   ___ _ __ ___  ',13,10
db'  | | | _ \| `__/ _` | `_ \ / _ \ `_ ` _ \ ',13,10
db' _| |_| |_) | | | (_| | | | |  __/ | | | | |',13,10
db' \___/|_.__/|_|  \__,_|_| |_|\___|_| |_| |_|',13,10
db'                                            ',13,10
                 db '| Welcome to apu shape generator system|',13,10,10,10
                 db '| >>>> Selcet the Shape type:          |',13,10,10
                 db '|   =============================      |',13,10
                 db '|  || [1] BOX                   ||     |',13,10
                 db '|  || [2] Number patterns       ||     |',13,10
                 db '|  || [3] Design patterns       ||     |',13,10
                 db '|  || [4] nested loop           ||     |',13,10
                 db '|  || [5] Quit                  ||     |',13,10
                 db '|  || Select(1,2,3,4):          ||     |',13,10
                 db '|   =============================      |',13,10
                 db '----------------------------------------$'
                 
                 
                 
                 
                 
            Back_Message db '  Type in any key to go to the main page $'  
            Wrong_Entry db 'Wrong entry',13,10,10,10
                    db ' Type in any key to go to the main page$'
              NEXT  db  0DH, 0AH, '$'         ;  next line             
                                  
                                       
            Input db ?        ; variable that hold the user choice

           
           
.code
MAIN PROC 
    mov ax,@data
    mov ds,ax
    
    
    begin: ;Start Point that holds the main menu 
    ; background and font function
    mov ax,0600h
    mov bh,0ah
    mov cx,0000h
    mov dx,184Fh
    int 10h
   
    ; cursor position 

        
    mov ah ,2
    mov bh,0
    mov dh,0
    mov dl,2
    int 10h
    
    ;  Print Menu
    mov ah,09h
    mov dx,offset Menu
    int 21h

    
    ; get input service 
    mov ah,1
    int 21H
   
    ; store input data
    mov Input,al
    
    
    ; Menu functionality
    
    ;if user picks 1
    cmp Input,'1'
    je option_1
    
    ; If user enters two
    cmp Input,'2'
    je option_2
    
    ; If user enters three
    cmp Input,'3'
    je option_3
    
    ; If user enters four
    cmp Input,'4'
    je option_4
    
    ; if user enters five
    cmp Input,'5'
    je quit
    
    ; If the user types in an invalid key
    jne wrong_option
    
    ;-----------------------------------------------------
    
    
    ; First choice 
    option_1:
    mov ax,0600h
    mov bh,31
    mov cx,0000h
    mov dx,184Fh
    int 10h
    ;move cursor 
    mov ah ,2
    mov bh,0
    mov dh,0
    mov dl,33
    int 10h
    ;move cursor  
    
    mov dl,10
    int 21h
    
    mov cx,7
    mov ah,02
    sq:
    mov dl,32
    int 21h
    int 21h
    int 21h
    int 21h
    mov dl,"o"
    int 21h
    int 21h
    int 21h
    int 21h
    int 21h
    int 21h
    int 21h
    int 21h
    int 21h
    int 21h
    int 21h
    int 21h
    
    mov dl,10
    int 21h
    loop sq
    
    
    
    mov dl ,10
    int 21h    
    
    mov ah,09h    
    mov dx,offset Back_Message
    int 21h
    
    mov ah,1
    INT 21H
    
    jmp begin

    
    ; second choice
    option_2:
    ;Color
    mov ax,0600h
    mov bh,4eh ;color
    mov cx,0000h
    mov dx,184Fh
    int 10h
    ;color
    
    ;move cursor 
    mov ah ,2
    mov bh,0
    mov dh,0
    mov dl,33
    int 10h
    ;move cursor 
    
    
    mov dl,10
    int 21h
    
    
   mov cx,1
    mov ah,02
    d1:
    mov dl,32
    int 21h
    int 21h
    int 21h
    mov dl,"o"
    int 21h
    mov dl,32
    int 21h
    int 21h
    int 21h
    loop d1
    
    mov dl,10
    int 21h
    
    mov cx,1
    mov ah,02
    d2:
    mov dl,32
    int 21h
    int 21h
    mov dl,"o"
    int 21h
    int 21h
    mov dl,"o"
    int 21h
    mov dl,32
    int 21h
    int 21h
    loop d2
    
    mov dl,10
    int 21h
    
    mov cx,1
    mov ah,02
    d3:
    mov dl,32
    int 21h
    mov dl,"o"
    int 21h    
    int 21h
    int 21h
    int 21h
    mov dl,"o"
    int 21h  
    mov dl,32
    int 21h
    loop d3
    
    mov dl,10
    int 21h
    
    mov cx,1
    mov ah,02
    d4:
    mov dl,"o"
    int 21h 
    int 21h
    int 21h
    int 21h
    int 21h
    int 21h
    mov dl,"o"
    int 21h 
    loop d4
    
    mov dl,10
    int 21h
    
    mov cx,1
    mov ah,02
    d5:
    mov dl,32
    int 21h
    mov dl,"o"
    int 21h    
    int 21h
    int 21h
    int 21h
    mov dl,"o"
    int 21h  
    mov dl,32
    int 21h
    loop d5
    
    mov dl,10
    int 21h
    
    mov cx,1
    mov ah,02
    d6:
    mov dl,32
    int 21h
    int 21h
    mov dl,"o"
    int 21h
    int 21h
    mov dl,"o"
    int 21h
    mov dl,32
    int 21h
    int 21h
    loop d6
    
    mov dl,10
    int 21h
    
    mov cx,1
    mov ah,02
    d7:
    mov dl,32
    int 21h
    int 21h
    int 21h
    mov dl,"o"
    int 21h
    mov dl,32
    int 21h
    int 21h
    int 21h
    loop d7
    
    mov dl,10
    int 21h 
    
    
    mov dl,10
    int 21h
    
    mov ah,09h
    mov dx,offset Back_Message
    int 21h
    
    mov ah,1
    INT 21H
    
    jmp begin
    
    
    
    
    ; Third choice 
    option_3:
    ;Color
    mov ax,0600h
    mov bh,6ah ;color
    mov cx,0000h
    mov dx,184Fh
    int 10h
    ;color
    
    ;move cursor 
    mov ah ,2
    mov bh,0
    mov dh,0
    mov dl,33
    int 10h
    ;move cursor 
    
    
    mov dl,10
    int 21h
    
     
    mov cx,5
    mov ah,02
    f1:
    mov dl,32
    int 21h
    int 21h
    int 21h
    mov dl,"o"
    int 21h
    mov dl,32
    int 21h
    int 21h
    int 21h
    loop f1
    
    mov dl,10
    int 21h
    
    mov cx,5
    mov ah,02
    f2:
    mov dl,32
    int 21h
    int 21h
    mov dl,"o"
    int 21h
    mov dl,32
    int 21h
    mov dl,"o"
    int 21h
    mov dl,32
    int 21h
    int 21h
    loop f2
    
    mov dl,10
    int 21h
    
    mov cx,5
    mov ah,02
    f3:
    mov dl,32
    int 21h
    mov dl,"o"
    int 21h    
    mov dl,32
    int 21h
    int 21h
    int 21h
    mov dl,"o"
    int 21h  
    mov dl,32
    int 21h
    loop f3
    
    mov dl,10
    int 21h
    
    mov cx,5
    mov ah,02
    f4:
    mov dl,"o"
    int 21h 
    mov dl,32
    int 21h
    int 21h
    int 21h
    int 21h
    int 21h
    mov dl,"o"
    int 21h 
    loop f4
    
    mov dl,10
    int 21h
    
    mov cx,5
    mov ah,02
    f5:
    mov dl,32
    int 21h
    mov dl,"o"
    int 21h    
    mov dl,32
    int 21h
    int 21h
    int 21h
    mov dl,"o"
    int 21h  
    mov dl,32
    int 21h
    loop f5
    
    mov dl,10
    int 21h
    
    mov cx,5
    mov ah,02
    f6:
    mov dl,32
    int 21h
    int 21h
    mov dl,"o"
    int 21h
    mov dl,32
    int 21h
    mov dl,"o"
    int 21h
    mov dl,32
    int 21h
    int 21h
    loop f6
    
    mov dl,10
    int 21h
    
    mov cx,5
    mov ah,02
    f7:
    mov dl,32
    int 21h
    int 21h
    int 21h
    mov dl,"o"
    int 21h
    mov dl,32
    int 21h
    int 21h
    int 21h
    loop f7
    
    mov dl,10
    int 21h
    
    mov dl,10
    int 21h
    
    mov ah,09h
    mov dx,offset Back_Message
    int 21h
    
    mov ah,1
    INT 21H
     
    jmp begin
    
    
    
    
    ; fourth choice 
    option_4:
  
    mov ax,0600h
    mov bh,5fh ;color
    mov cx,0000h
    mov dx,184Fh
    int 10h
 
    
    ;move cursor 
    mov ah ,2
    mov bh,0
    mov dh,0
    mov dl,33
    int 10h
    ;move cursor 
    
    
    mov dl,10
    int 21h
    ;code here 
    
    ; 1.creating 3 loops 
    ; first loop
    mov cx,7
    
    Loop1A:
    mov bx,cx
   
   
    
    mov dl,0Ah
    mov ah,02
    int 21h
    
    
    
    mov dl,0Dh
    mov ah,02
    int 21h
   
    mov cx,bx
    
    loop Loop1A
    
    
    ; second loop :
    
    mov ax,@data
    mov ds,ax
    mov cx, 7
    mov bx, 1
    loopA:
        push cx
        mov dl,20h  
        mov ah,2
    loopB:
        int 21h    ;Display Space 
        loop loopB
        mov cx,bx
        mov dl, "o"
        mov ah,2
    loopC:
        int 21h    ; for printing the icon
        loop loopC
        lea dx,NEXT
        mov ah,9
        int 21h    ;next line
        inc bx
        pop cx
        loop loopA
        
        
        
        ;  third loop:   
        
    mov ax,@data
    mov ds,ax
    mov cx, 7
    mov bx, 1
    loopA1:
        push cx
        mov ah,2
    loopB2:  
        loop loopB2
        mov cx,bx
        mov dl, "o"
        mov ah,2
    loopC3:
    
        int 21h    ; for printing the icon
        loop loopC3
        lea dx,NEXT
        mov ah,9
        int 21h    ; moving cursor to the next line
        inc bx
        pop cx
        loop loopA1
 
        
        
        mov  ah, 09h 

     
     MOV dl, 10
    MOV ah, 02h
    INT 21h
    MOV dl, 13
    MOV ah, 02h
    INT 21h
 
    mov  al, 32
mov  bl, 10h
mov  cx, 1000h
int  10h 
    
    
    mov ah,09h
    mov dx,offset back_message
    int 21h
    
    mov ah,1
    INT 21H
    
    jmp begin
    
    
    
    
    
    
    
    
    
    ; fifth choice 
    option_5:
    jmp quit
    
    
    ;invalid key
    wrong_option:
   
   
   
    mov ah,0
    mov bh,0ch
    mov dh,0
    mov dl,25
    int 10h
   
 
    ;Color
    mov ax,0600h
    mov bh,4eh ;color
    mov cx,0000h
    mov dx,184Fh
    int 10h
    ;color
    
    ;move cursor 
    mov ah ,2
    mov bh,0
    mov dh,0
    mov dl,33
    int 10h
    ;move cursor 
    
    
    

    
    mov ah,1
    INT 21H
    
    jmp begin

  
    jmp begin
    
    
    quit:
    mov ah,4ch
    int 21h
    
    
Main endp
End main