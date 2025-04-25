* ==========================================
* Archivo: negocio/ControladorMovimiento.prg
* ==========================================
DEFINE CLASS ControladorMovimiento AS Custom
    
    PROCEDURE ActualizarPosiciones(oFormulario)
        WITH oFormulario
            * Lógica para el cubo azul (movimiento horizontal)
            IF .Semafaro2.BackColor = RGB(255, 0, 0) AND .shpCube.Left = .Semafaro2.Left OR ;
               .Semafaro2.BackColor = RGB(255, 255, 0) AND .shpCube.Left = .Semafaro2.Left
                * Cubo azul detenido en semáforo rojo o amarillo
            ELSE
                * Mover cubo azul normalmente
                .shpCube.Left = .shpCube.Left + (3 * .nDireccionX)
            ENDIF
            
            * Verificar si el cubo azul debe reiniciarse y cambiar color
            LOCAL R, G, B
            R = INT(RAND() * 256)
            G = INT(RAND() * 256)
            B = INT(RAND() * 256)
            
            IF .shpCube.Left >= .nPosicionx
                .shpCube.Left = 0
                .shpCube.BackColor = RGB(R, G, B)
                .nPosicionx = INT(RAND() * 800) + 600
            ENDIF
            
            * Lógica para el cubo rojo (movimiento vertical)
            IF .Semafaro2.BackColor = RGB(255, 255, 0) AND ;
               ABS(.shpCube2.Top - .Semafaro1.Top) <= 5 OR ;
               .Semafaro1.BackColor = RGB(255, 0, 0) AND ;
               ABS(.shpCube2.Top - .Semafaro1.Top) <= 5
                * Cubo rojo detenido en semáforo rojo o amarillo
            ELSE
                * Mover cubo rojo normalmente
                .shpCube2.Top = .shpCube2.Top + (3 * .nDireccionY)
            ENDIF
            
            * Verificar si el cubo rojo debe reiniciarse y cambiar color
            LOCAL A, C, D
            A = INT(RAND() * 256)
            C = INT(RAND() * 256)
            D = INT(RAND() * 256)
            
            IF .shpCube2.Top >= .nPosiciony
                .shpCube2.Top = 0
                .shpCube2.BackColor = RGB(A, C, D)
                .nPosiciony = INT(RAND() * 400) + 400
            ENDIF
        ENDWITH
    ENDPROC
ENDDEFINE