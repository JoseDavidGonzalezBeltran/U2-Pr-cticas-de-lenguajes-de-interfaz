;Nombre: Gonzalez Beltran Jose David
;Materia: Leng de Interfaz
;Maestro: Jose Luis Medina
;Horario: 9:00 - 10:00 hrs

INCLUDE Irvine32.inc

.data
    msgMenu   BYTE 0dh, 0ah, "=== CONTROL DE ESTACIONAMIENTO ===", 0dh, 0ah
              BYTE "1. Ingresar vehiculo", 0dh, 0ah
              BYTE "2. Retirar vehiculo", 0dh, 0ah
              BYTE "3. Salir", 0dh, 0ah
              BYTE "Seleccione una opcion: ", 0
              
    msgFull   BYTE 0dh, 0ah, "¡Error: Estacionamiento lleno!", 0dh, 0ah, 0
    msgEmpty  BYTE 0dh, 0ah, "¡Error: El estacionamiento ya esta vacio!", 0dh, 0ah, 0
    msgSpaces BYTE 0dh, 0ah, "Espacios ocupados actualmente: ", 0
    msgOut    BYTE 0dh, 0ah, "Saliendo del programa...", 0dh, 0ah, 0
    
    CAPACIDAD EQU 10          ; limite maximo de autos
    ocupados  DWORD 0         ; contador de autos en cero

.code
main PROC
menuLoop:
    call ClrScr               ; limpia la pantalla
    
    mov edx, OFFSET msgMenu   ; carga mensaje del menu
    call WriteString          ; imprime el menu
    
    mov edx, OFFSET msgSpaces ; carga mensaje de ocupados
    call WriteString          ; imprime texto de ocupados
    mov eax, ocupados         ; carga valor de ocupados
    call WriteDec             ; muestra numero de autos
    call CrLf                 ; salto de linea

    call ReadChar             ; lee la tecla presionada
    
    cmp al, '1'               ; compara opcion con uno
    je ingresar               ; salta a ingresar
    cmp al, '2'               ; compara opcion con dos
    je retirar                ; salta a retirar
    cmp al, '3'               ; compara opcion con tres
    je salir                  ; salta a salir
    jmp menuLoop              ; repite menu si es otra tecla

ingresar:
    mov eax, ocupados         ; carga el valor actual
    cmp eax, CAPACIDAD        ; compara con el limite
    jge estacionamientoLlena  ; salta si esta lleno
    inc ocupados              ; suma un auto
    jmp menuLoop              ; regresa al menu

estacionamientoLlena:
    mov edx, OFFSET msgFull   ; carga mensaje de lleno
    call WriteString          ; muestra error de lleno
    call WaitMsg              ; espera tecla del usuario
    jmp menuLoop              ; regresa al menu

retirar:
    mov eax, ocupados         ; carga el valor actual
    cmp eax, 0                ; compara con cero
    jle estacionamientoVacia  ; salta si esta vacio
    dec ocupados              ; resta un auto
    jmp menuLoop              ; regresa al menu

estacionamientoVacia:
    mov edx, OFFSET msgEmpty  ; carga mensaje de vacio
    call WriteString          ; muestra error de vacio
    call WaitMsg              ; espera tecla del usuario
    jmp menuLoop              ; regresa al menu

salir:
    mov edx, OFFSET msgOut    ; carga mensaje de salida
    call WriteString          ; muestra mensaje final
    exit                      ; termina el programa
main ENDP
END main