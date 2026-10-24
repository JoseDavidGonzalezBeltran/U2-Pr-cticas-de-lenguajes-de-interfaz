;Nombre: Gonzalez Beltran Jose David
;Materia: Leng de Interfaz
;Maestro: Jose Luis Medina
;Horario: 9:00 - 10:00 hrs

INCLUDE Irvine32.inc

.data
    mensaje BYTE "Entorno configurado correctamente", 0 ; define el mensaje de texto

.code
main PROC
    mov edx, OFFSET mensaje                             ; carga la direccion del mensaje en edx
    call WriteString                                    ; imprime la cadena en la consola
    exit                                                ; termina el programa

main ENDP
END main