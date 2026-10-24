
;Nombre: Gonzalez Beltran Jose David
;Materia: Leng de Interfaz
;Maestro: Jose Luis Medina
;Horario: 9:00 - 10:00 hrs

INCLUDE Irvine32.inc

.data
    mensaje BYTE "Operaciones realizadas con exito.", 0

.code
main PROC
    
    mov eax, 0      ;limpiar EAX y cargar un valor en AL
    mov al, 127


    add al, 1       ;sumar 1
    nop

    
    mov eax, 25         ;multiplicación básica (EAX * EBX)
    mov ebx, 3
    mul ebx                 ;multiplica EAX por EBX (el resultado queda en EAX)

    ;
    mov edx, OFFSET mensaje      ;mostrar mensaje de confirmación en pantalla
    call WriteString
    call Crlf

    exit
main ENDP
END main