;Nombre: Gonzalez Beltran Jose David
;Materia: Leng de Interfaz
;Maestro: Jose Luis Medina
;Horario: 9:00 - 10:00 hrs

INCLUDE Irvine32.inc

.data
   ; estados de computadora
   ; 0 - computadora encendida  0:no  1:si
   ; 1 - alarma                 0:no  1:si
   ; computadora conectada
   ; condiciones iniciales: 0000 0101

   Encendida BYTE "ALARMA ESTA ENCENDIDA", 0
   Apagada BYTE "ALARMA APAGADA", 0

.code
main PROC  

    ; 1-and: evaluacion de alarma
    mov eax, 0
    mov al, 00000111b  ; inicialmente
    and al, 00000111b  ; apaga los bits

    call WriteBin
    call Crlf

    ; 2-or: encender la alarma
    mov eax, 0
    mov al, 00000101b
    or al, 00000010b   ; enciende los bits

    call WriteBin
    call Crlf

    ; 3-xor: apagar computadora y encenderla
    ; estado inicial = 0000 0101
    mov eax, 0
    mov al, 00000101b
    xor al, 00000001b  ; cambia el estado del bit 0 

    call WriteBin
    call Crlf

    ; 4-not:
    mov eax, 0
    mov al, 00000101b
    not al             ; invierte todos los bits del registro

    call WriteBin
    call Crlf
  
    ; 5-test: evaluar alarma encendida y apagada
    ; realizar salto y mostrar mensaje de "alarma esta encendida" o "alarma apagada"
    mov eax, 0
    mov al, 00000101b  
    test al, 00000010b 
    jnz alarma_encendida ; si el resultado no es cero, la alarma esta encendida

    ; si el resultado es cero, la alarma esta apagada
    mov edx, OFFSET Apagada

    call WriteString
    call Crlf
    jmp fin

    alarma_encendida:
    mov edx, OFFSET Encendida
    call WriteString
    call Crlf

    fin:                ; corregido: agregado dos puntos a la etiqueta fin
    exit

main ENDP
END main