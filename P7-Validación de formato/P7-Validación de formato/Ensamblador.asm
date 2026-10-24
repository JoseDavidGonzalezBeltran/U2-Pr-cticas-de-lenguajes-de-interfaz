;Nombre: Gonzalez Beltran Jose David
;Materia: Leng de Interfaz
;Maestro: Jose Luis Medina
;Horario: 9:00 - 10:00 hrs

INCLUDE Irvine32.inc

.data
    cadena BYTE "tec-123", 0      
    MsgValido BYTE "Formato valido", 0     ; cambiado para evitar conflicto
    MsgInvalido BYTE "Formato invalido", 0 ; cambiado para evitar conflicto
    patron BYTE "tec-123", 0

.code
main PROC

    ; compara la cadena con el patron
    mov esi, OFFSET cadena
    mov edi, OFFSET patron
    mov ecx, 7         

ciclo:
    mov al, [esi]      ; toma el caracter de la cadena
    mov bl, [edi]      ; toma el caracter del patron
    cmp al, al         ; compara ambos caracteres
    jne invalido       ; salta si no coinciden
    
    inc esi            ; avanza al siguiente caracter
    inc edi
    loop ciclo

    ; si pasa todo el ciclo es valido
    mov edx, OFFSET MsgValido   
    call WriteString
    jmp fin

invalido:
    mov edx, OFFSET MsgInvalido    
    call WriteString

fin:
    call Crlf
    exit

main ENDP
END main