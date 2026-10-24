;Nombre: Gonzalez Beltran Jose David
;Materia: Leng de Interfaz
;Maestro: Jose Luis Medina
;Horario: 9:00 - 10:00 hrs

INCLUDE Irvine32.inc

.data
msgPedir     BYTE "Ingresa tu mensaje: ", 0
msgMostrar   BYTE "El mensaje que ingresaste es: ", 0
buffer       BYTE 50 DUP(0)      ; Espacio reservado para almacenar hasta 49 caracteres + terminador nulo

.code
main PROC
    ; 1. Mostrar el mensaje solicitando la entrada
    mov  edx, OFFSET msgPedir
    call WriteString

    ; 2. Capturar el texto ingresado por el usuario desde el teclado
    mov  edx, OFFSET buffer       ; EDX debe apuntar al buffer de destino
    mov  ecx, SIZEOF buffer       ; ECX especifica la cantidad máxima de caracteres a leer
    call ReadString               ; Lee la cadena escrita por el usuario

    call Crlf                     ; Imprime un salto de línea

    ; 3. Desplegar el mensaje de respuesta
    mov  edx, OFFSET msgMostrar
    call WriteString

    ; 4. Mostrar el texto capturado en el buffer
    mov  edx, OFFSET buffer
    call WriteString
    call Crlf

    exit                          ; Finaliza el programa
main ENDP
END main