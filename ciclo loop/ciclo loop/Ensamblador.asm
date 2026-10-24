;Nombre: Gonzalez Beltran Jose David
;Materia: Leng de Interfaz
;Maestro: Jose Luis Medina
;Horario: 9:00 - 10:00 hrs

INCLUDE Irvine32.inc

.data
	mensaje BYTE "HOLA, MUNDO!", 0

.code
main PROC
	mov ecx, 10    ;defino la cantidad de veces que se repetira el ciclo

ciclo:
	mov edx, OFFSET mensaje
	call WriteString    ;para imprimir HOLA, MUNDO
	call crlf
	loop ciclo          ;termina el cilo

	exit
main ENDP
END main