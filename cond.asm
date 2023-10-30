format ELF64 executable 

entry main

main:
    mov eax, 10
    mov ebx, 11
    cmp eax, ebx
    jg next
    
    mov ecx, msgm
    mov edx, lenl
    jmp print_and_exit
    
next:
    mov ecx, msg
    mov edx, len
    jmp print_and_exit
    
print_and_exit:
    mov eax, 4
    mov ebx, 1
    int 0x80

    mov eax, 1
    xor ebx, ebx
    int 0x80

msg  db 'helloworld!', 0
len = $-msg
msgm  db 'ofwelqowd!', 0
lenl = $-msgm
  
