;Nombre: Gonzalez Beltran Jose David
;Materia: Leng de Interfaz
;Maestro: Jose Luis Medina
;Horario: 9:00 - 10:00 hrs

INCLUDE Irvine32.inc

.data
    ; 1. Cadena de texto ASCII que representa un valor hexadecimal
    hex_string BYTE "DEADBEEF", 0
    
    ; 2. Declaración directa de bytes en formato hexadecimal (equivale a "Hola\n")
    hex_bytes  BYTE 0x48, 0x6F, 0x6C, 0x61, 0x0A, 0

.code
main PROC
    ; Mostramos la cadena de texto con los caracteres hexadecimales
    mov edx, OFFSET hex_string
    call WriteString
    call Crlf           ; Salto de línea

    ; Mostramos los bytes declarados en hexadecimal convertidos a texto
    mov edx, OFFSET hex_bytes
    call WriteString

    exit
main ENDP
END main