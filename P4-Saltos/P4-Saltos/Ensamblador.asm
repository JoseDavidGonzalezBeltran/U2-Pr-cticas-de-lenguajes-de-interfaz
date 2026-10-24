;Nombre: Gonzalez Beltran Jose David
;Materia: Leng de Interfaz
;Maestro: Jose Luis Medina
;Horario: 9:00 - 10:00 hrs

INCLUDE Irvine32.inc

.data
    Mayor BYTE "Es mayor que 5", 0
    Menor BYTE "Es menor o igual a 5", 0

.code
main PROC
    mov eax, 7           ; carga el numero a comparar
    cmp eax, 5           ; compara eax con 5
    jg es_mayor          ; salta si es mayor

    ; si es menor o igual
    mov edx, OFFSET Menor
    call WriteString
    jmp fin              ; salta al final

    ; si es mayor
    es_mayor:            ; corregido: agregado dos puntos a la etiqueta
    mov edx, OFFSET Mayor
    call WriteString

fin:
    call Crlf
    exit

main ENDP
END main