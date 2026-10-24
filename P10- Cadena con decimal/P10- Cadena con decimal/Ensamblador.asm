;Nombre: Gonzalez Beltran Jose David
;Materia: Leng de Interfaz
;Maestro: Jose Luis Medina
;Horario: 9:00 - 10:00 hrs

INCLUDE Irvine32.inc

.data
    miCadena BYTE "123.45", 0       ;cadena que contiene el número decimal almacenado como texto
    
    mensaje   BYTE "El valor decimal es: ", 0

.code
main PROC

    mov edx, OFFSET mensaje           ;registro EDX con la dirección de memoria del mensaje
    
    call WriteString        ;imprime el texto del mensaje en la consola
    
    mov edx, OFFSET miCadena        ;prepara el registro EDX con la dirección de la cadena numérica  
    
    call WriteString           ;imprime el numero decimal ("123.45") justo después del mensaj
    call Crlf                  ;salto de línea para que la consola se vea ordenada

    ;finaliza el programa de manera segura
    exit
main ENDP
END main