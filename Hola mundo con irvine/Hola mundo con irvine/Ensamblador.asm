;Nombre: Gonzalez Beltran Jose David
;Materia: Leng de Interfaz
;Maestro: Jose Luis Medina
;Horario: 9:00 - 10:00 hrs

INCLUDE Irvine32.inc

.data
    mensaje BYTE "¡Hola Mundo!", 0      ;define la cadena de texto con terminador en 0

.code
main PROC
    mov edx, OFFSET mensaje     ;pasa los datos de mensaje a EDX

    call WriteString        ;imprime la cadena en pantalla

    call Crlf       ;salto de linea

    exit

main ENDP
END main
