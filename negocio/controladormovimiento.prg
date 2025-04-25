DEFINE CLASS ControladorMovimiento AS Custom
    oParallel = NULL
    
    PROCEDURE Init(oParallelObj)
        THIS.oParallel = oParallelObj
    ENDPROC
    
    PROCEDURE ActualizarPosiciones(oFormulario)
        LOCAL cIn
        
        * Preparamos entradas para cubo azul
        cIn = TRANSFORM(oFormulario.shpCube.Left) + "|" + ;
              TRANSFORM(oFormulario.nDireccionX) + "|" + ;
              TRANSFORM(oFormulario.nPosicionx)
        STRTOFILE(cIn, "InputAZUL_" + SYS(2015) + ".txt")
        THIS.oParallel.Do("TareaMoverAzul")
        
        * Preparamos entradas para cubo rojo
        cIn = TRANSFORM(oFormulario.shpCube2.Top) + "|" + ;
              TRANSFORM(oFormulario.nDireccionY) + "|" + ;
              TRANSFORM(oFormulario.nPosiciony)
        STRTOFILE(cIn, "InputROJO_" + SYS(2015) + ".txt")
        THIS.oParallel.Do("TareaMoverRojo")
    ENDPROC
    
    PROCEDURE AplicarResultados(oFormulario)
        LOCAL cOut, aP
        DIMENSION aP[1]
        
        * Leemos y aplicamos resultados para cubo azul
        cOut = oFormulario.LeerResultado("OutputAZUL_*.txt")
        IF !EMPTY(cOut)
            ALINES(aP, cOut, 1, "|")
            IF ALEN(aP) >= 5
                oFormulario.shpCube.Left = VAL(aP[1])
                oFormulario.nPosicionx = VAL(aP[2])
                oFormulario.shpCube.BackColor = RGB(VAL(aP[3]), VAL(aP[4]), VAL(aP[5]))
            ENDIF
        ENDIF
        
        * Leemos y aplicamos resultados para cubo rojo
        cOut = oFormulario.LeerResultado("OutputROJO_*.txt")
        IF !EMPTY(cOut)
            ALINES(aP, cOut, 1, "|")
            IF ALEN(aP) >= 5
                oFormulario.shpCube2.Top = VAL(aP[1])
                oFormulario.nPosiciony = VAL(aP[2])
                oFormulario.shpCube2.BackColor = RGB(VAL(aP[3]), VAL(aP[4]), VAL(aP[5]))
            ENDIF
        ENDIF
    ENDPROC
    
    * Tarea paralela para el cubo azul
    PROCEDURE TareaMoverAzul
        LOCAL ARRAY aFiles[1], ARRAY aParts[1]
        LOCAL cArchivo, cTexto, nLeft, nDirX, nPosX
        LOCAL nNewLeft, nR, nG, nB, cOut

        IF ADIR(aFiles, "InputAZUL_*.txt") > 0
            cArchivo = aFiles[1,1]
            cTexto = FILETOSTR(cArchivo)
            ERASE (cArchivo)

            IF ALINES(aParts, cTexto, 1, "|") > 0
                nLeft = VAL(aParts[1])
                nDirX = VAL(aParts[2])
                nPosX = VAL(aParts[3])

                nNewLeft = nLeft + (3 * nDirX)

                IF nNewLeft >= nPosX
                    nR = INT(RAND()*256)
                    nG = INT(RAND()*256)
                    nB = INT(RAND()*256)
                    nNewLeft = 0
                    nPosX = INT(RAND()*800) + 600
                ENDIF

                cOut = ;
                  TRANSFORM(nNewLeft) + "|" + ;
                  TRANSFORM(nPosX) + "|" + ;
                  TRANSFORM(nR) + "|" + ;
                  TRANSFORM(nG) + "|" + ;
                  TRANSFORM(nB)
                STRTOFILE(cOut, "OutputAZUL_" + SYS(2015) + ".txt")
            ENDIF
        ENDIF
    ENDPROC

    * Tarea paralela para el cubo rojo
    PROCEDURE TareaMoverRojo
        LOCAL ARRAY aFiles[1], ARRAY aParts[1]
        LOCAL cArchivo, cTexto, nTop, nDirY, nPosY
        LOCAL nNewTop, nR, nG, nB, cOut

        IF ADIR(aFiles, "InputROJO_*.txt") > 0
            cArchivo = aFiles[1,1]
            cTexto = FILETOSTR(cArchivo)
            ERASE (cArchivo)

            IF ALINES(aParts, cTexto, 1, "|") > 0
                nTop = VAL(aParts[1])
                nDirY = VAL(aParts[2])
                nPosY = VAL(aParts[3])

                nNewTop = nTop + (3 * nDirY)

                IF nNewTop >= nPosY
                    nR = INT(RAND()*256)
                    nG = INT(RAND()*256)
                    nB = INT(RAND()*256)
                    nNewTop = 0
                    nPosY = INT(RAND()*400) + 400
                ENDIF

                cOut = ;
                  TRANSFORM(nNewTop) + "|" + ;
                  TRANSFORM(nPosY) + "|" + ;
                  TRANSFORM(nR) + "|" + ;
                  TRANSFORM(nG) + "|" + ;
                  TRANSFORM(nB)
                STRTOFILE(cOut, "OutputROJO_" + SYS(2015) + ".txt")
            ENDIF
        ENDIF
    ENDPROC
ENDDEFINE