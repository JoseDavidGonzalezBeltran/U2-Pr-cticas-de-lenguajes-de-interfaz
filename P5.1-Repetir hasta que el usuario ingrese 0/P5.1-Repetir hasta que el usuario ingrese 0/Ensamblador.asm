
;Nombre: Gonzalez Beltran Jose David
;Materia: Leng de Interfaz
;Maestro: Jose Luis Medina
;Horario: 9:00 - 10:00 hrs

INCLUDE Irvine32.inc

.data
    mensaje BYTE "Ingresa un numero (0 para salir): ", 0

.code
main PROC

ciclo:
    mov edx, OFFSET mensaje
    call WriteString 
    
    call ReadInt     ; Lee el número ingresado por el usuario y lo guarda en EAX
    
    cmp eax, 0       ; Compara si el número es igual a 0
    je fin           ; Si es igual a cero salta a fin
    
    call Crlf        ; Salto de línea
    jmp ciclo        ; Regresa al inicio del ciclo para pedir otro número

fin:

    exit
main ENDP
END main
