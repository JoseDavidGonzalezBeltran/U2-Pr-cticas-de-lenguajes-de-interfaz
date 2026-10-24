;Nombre: Gonzalez Beltran Jose David
;Materia: Leng de Interfaz
;Maestro: Jose Luis Medina
;Horario: 9:00 - 10:00 hrs

INCLUDE Irvine32.inc

.data
    prompt    BYTE "introduce un numero entero: ", 0
    msgResult BYTE "el numero almacenado es: ", 0
    userValue DWORD ?       ; variable de 32 bits

.code
main PROC
    ; pedir numero
    mov edx, OFFSET prompt
    call WriteString

    ; capturar entrada en eax
    call ReadInt

    ; guardar en variable
    mov userValue, eax

    ; mostrar resultado
    call Crlf
    mov edx, OFFSET msgResult
    call WriteString

    ; cargar y escribir valor
    mov eax, userValue
    call WriteInt
    call Crlf

    exit
main ENDP
END main