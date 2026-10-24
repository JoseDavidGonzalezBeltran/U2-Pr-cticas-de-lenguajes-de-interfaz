;Nombre: Gonzalez Beltran Jose David
;Materia: Leng de Interfaz
;Maestro: Jose Luis Medina
;Horario: 9:00 - 10:00 hrs

INCLUDE Irvine32.inc

.data
    mensaje BYTE "Ingresa la cantidad recibida de lotes: ", 0
    msjError BYTE "Error, entrada invalida, intente de nuevo", 0
    resultado BYTE "Existencia actual: ", 0

    cantidadRecibida DWORD 0
    existenciaInicial DWORD 25
    existenciaActual DWORD 0

.code
main PROC

inicio: 
    mov edx, OFFSET mensaje   
    call WriteString

    ; leer el numero ingresado por el usuario
    call ReadInt
    mov cantidadRecibida, eax

    ; sumar la cantidad recibida a la existencia inicial
    mov eax, existenciaInicial
    add eax, cantidadRecibida
    mov existenciaActual, eax  

    ; mostrar el texto de resultado
    mov edx, OFFSET resultado   
    call WriteString

    ; imprimir el valor numerico de la existencia actual
    mov eax, existenciaActual
    call WriteDec
    call Crlf

    exit

main ENDP
END main