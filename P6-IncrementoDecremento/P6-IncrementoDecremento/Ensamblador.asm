;Nombre: Gonzalez Beltran Jose David
;Materia: Leng de Interfaz
;Maestro: Jose Luis Medina
;Horario: 9:00 - 10:00 hrs

INCLUDE Irvine32.inc

.data
    NInicio BYTE "Valor inicial: ", 0
    NInc BYTE "Despues de incrementar: ", 0
    NDec BYTE "Despues de decrementar: ", 0

.code
main PROC
    mov eax, 5   ; carga el 5 en eax
    
    ; mostrar valor inicial
    mov edx, OFFSET NInicio
    call WriteString
    call WriteInt        ; imprime el numero entero
    call Crlf

    inc eax              ; suma uno a eax
    mov edx, OFFSET NInc
    call WriteString
    call WriteInt        ; imprime el numero incrementado
    call Crlf

    dec eax              ; resta uno a eax
    mov edx, OFFSET NDec
    call WriteString
    call WriteInt        ; imprime el numero decrementado
    call Crlf

    exit

main ENDP
END main