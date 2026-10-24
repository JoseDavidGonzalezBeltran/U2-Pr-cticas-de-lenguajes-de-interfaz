;Nombre: Gonzalez Beltran Jose David
;Materia: Leng de Interfaz
;Maestro: Jose Luis Medina
;Horario: 9:00 - 10:00 hrs

INCLUDE Irvine32.inc

.code
main PROC
	; caso 1: zero flag

	mov eax, 5           ; carga 5 en eax
	mov ebx, 5           ; carga 5 en ebx

	cmp eax, ebx         ; compara ambos numeros
	call DumpRegs        ; muestra registros y banderas

	mov eax, 10h         ; carga 16 en eax
	cmp eax, 10h         ; compara valores iguales

	; caso 2: sign flag
	mov eax, 0           ; limpia eax
	mov ebx, 0           ; limpia ebx

	mov al, -5           ; carga -5 en al
	mov bl, 1            ; carga 1 en bl
	
	call DumpRegs        ; muestra registros y banderas
	exit

main ENDP
END main