INCLUDE Irvine32.inc

.data
    nombreArchivo BYTE "inventario.txt", 0
    texto BYTE "125", 0 
    archivoHandle DWORD ?

    mensajeExito BYTE "Archivo guardado", 0
    mensajeError BYTE "No se pudo guardar el archivo", 0


.code
main PROC
    ;Crear el archivo txt
    mov edx, OFFSET nombreArchivo
    call CreateOutputFile

    cmp eax, INVALID_HANDLE_VALUE
    je error

    mov archivoHandle, eax

    ;Escribir los caracteres(125)
    mov eax, archivoHandle
    mov edx, OFFSET texto
    mov ecx, SIZEOF texto - 1
    call WriteToFile

    jc errorEscritura

    cmp eax, SIZEOF texto - 1
    jne error

    ;Guardar el archivo/cerrar archivo
    mov eax, archivoHandle
    call CloseFile

    test eax, eax
    jz error

    mov edx, OFFSET mensajeExito
    call WriteString
    jmp fin

errorEscritura:
    mov eax, archivoHandle 
    call CloseFile 

error:
    mov edx, OFFSET mensajeError
    call WriteString

    fin:

    exit
main ENDP
END main