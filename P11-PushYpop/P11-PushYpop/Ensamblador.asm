
;Nombre: Gonzalez Beltran Jose David
;Materia: Leng de Interfaz
;Maestro: Jose Luis Medina
;Horario: 9:00 - 10:00 hrs

INCLUDE Irvine32.inc

.code
main PROC

    mov eax, 40   ; movemos el 40 a eax
    push eax      ; copiamos el valor de eax a la pila
    nop

    mov eax, 0    ; limpiamos eax
    pop eax       ; sacamos el valor de la pila y lo regresamos a eax
    nop

    exit
main ENDP
END main
