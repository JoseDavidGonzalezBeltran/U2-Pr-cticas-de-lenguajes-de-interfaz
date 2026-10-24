;Nombre: Gonzalez Beltran Jose David
;Materia: Leng de Interfaz
;Maestro: Jose Luis Medina
;Horario: 9:00 - 10:00 hrs

INCLUDE Irvine32.inc

.data
    mensaje BYTE , 0

.code
main PROC
    mov ecx, 10      ;establece la cantidad de veces que se va repetir el ciclo
ciclo:
    mov edx, OFFSET mensaje
    call WriteString ;imprimer el contador
    
    mov eax, 11      ;valor maximo al que va llegar el contador 
    sub eax, ecx
    call WriteInt    ;imprime el numero en el que va el ciclo
    call Crlf        ;salto de linea

    loop ciclo        ;termina el ciclo

    exit
main ENDP
END main