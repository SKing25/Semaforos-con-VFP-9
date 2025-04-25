DEFINE CLASS ControladorSemaforo AS Custom
    oParallel = NULL
    
    PROCEDURE Init(oParallelObj)
        THIS.oParallel = oParallelObj
    ENDPROC
    
    PROCEDURE ActualizarSemaforos(oFormulario)
        IF oFormulario.nContadorSemaforo >= 5
            oFormulario.nContadorSemaforo = 0
            oFormulario.nEstadoSemaforo = MOD(oFormulario.nEstadoSemaforo + 1, 4)
            
            * Preparamos entrada para el semáforo
            cEstado = TRANSFORM(oFormulario.nEstadoSemaforo)
            STRTOFILE(cEstado, "InputSEMAFORO_" + SYS(2015) + ".txt")
            
            * Ejecutamos la tarea en paralelo
            THIS.oParallel.Do("TareaCambiarSemaforo")
        ENDIF
    ENDPROC
    
    PROCEDURE AplicarResultados(oFormulario)
        LOCAL cOut, aP
        DIMENSION aP[1]
        
        * Leemos y aplicamos resultados para semáforos
        cOut = oFormulario.LeerResultado("OutputSEMAFORO_*.txt")
        IF !EMPTY(cOut)
            ALINES(aP, cOut, 1, "|")
            IF ALEN(aP) >= 2
                oFormulario.Semafaro1.BackColor = EVALUATE(aP[1])
                oFormulario.Semafaro2.BackColor = EVALUATE(aP[2])
            ENDIF
        ENDIF
    ENDPROC
    
    * Tarea paralela para cambiar semáforos
    PROCEDURE TareaCambiarSemaforo
        LOCAL ARRAY aFiles[1], aParts[1]
        LOCAL cArchivo, cTexto, nEstado
        LOCAL cColor1, cColor2, cOut
        
        IF ADIR(aFiles, "InputSEMAFORO_*.txt") > 0
            cArchivo = aFiles[1,1]
            cTexto = FILETOSTR(cArchivo)
            ERASE (cArchivo)
            
            nEstado = VAL(cTexto)
            
            DO CASE
                CASE nEstado = 0  * ROJO/VERDE
                    cColor1 = "RGB(255,0,0)"
                    cColor2 = "RGB(0,255,0)"
                    
                CASE nEstado = 1  * AMARILLO/AMARILLO
                    cColor1 = "RGB(255,255,0)"
                    cColor2 = "RGB(255,255,0)"
                    
                CASE nEstado = 2  * VERDE/ROJO
                    cColor1 = "RGB(0,255,0)"
                    cColor2 = "RGB(255,0,0)"
                    
                CASE nEstado = 3  * AMARILLO/AMARILLO
                    cColor1 = "RGB(255,255,0)"
                    cColor2 = "RGB(255,255,0)"
            ENDCASE
            
            cOut = cColor1 + "|" + cColor2
            STRTOFILE(cOut, "OutputSEMAFORO_" + SYS(2015) + ".txt")
        ENDIF
    ENDPROC
ENDDEFINE