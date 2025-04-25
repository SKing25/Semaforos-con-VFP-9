* ==========================================
* Archivo: negocio/ControladorSemaforo.prg
* ==========================================
DEFINE CLASS ControladorSemaforo AS Custom
    
    PROCEDURE ActualizarSemaforos(oFormulario)
        WITH oFormulario
            * Verifica si es momento de cambiar el estado del semáforo
            IF .nContadorSemaforo >= 5
                .nContadorSemaforo = 0
                .nEstadoSemaforo = MOD(.nEstadoSemaforo + 1, 4)  && 0, 1, 2, 3, 0...
                
                * Cambiar colores según el estado
                DO CASE
                CASE .nEstadoSemaforo = 0  && ROJO/VERDE
                    .Semafaro1.BackColor = RGB(255, 0, 0)
                    .Semafaro2.BackColor = RGB(0, 255, 0)
                    
                CASE .nEstadoSemaforo = 1  && AMARILLO/AMARILLO
                    .Semafaro1.BackColor = RGB(255, 255, 0)
                    .Semafaro2.BackColor = RGB(255, 255, 0)
                    
                CASE .nEstadoSemaforo = 2  && VERDE/ROJO
                    .Semafaro1.BackColor = RGB(0, 255, 0)
                    .Semafaro2.BackColor = RGB(255, 0, 0)
                    
                CASE .nEstadoSemaforo = 3  && AMARILLO/AMARILLO
                    .Semafaro1.BackColor = RGB(255, 255, 0)
                    .Semafaro2.BackColor = RGB(255, 255, 0)
                ENDCASE
            ENDIF
        ENDWITH
    ENDPROC
ENDDEFINE