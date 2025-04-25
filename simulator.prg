* ==========================================
* Archivo: negocio/Simulador.prg
* ==========================================
DEFINE CLASS Simulador AS Custom
    oControladorMovimiento = NULL
    oControladorSemaforo = NULL
    
    PROCEDURE Init
    	SET PATH TO "C:\Users\Santi\Downloads\ParallelFox-master\ParallelFox-master\examples" ADDITIVE
        SET PROCEDURE TO ControladorMovimiento.prg ADDITIVE
        THIS.oControladorMovimiento = CREATEOBJECT("ControladorMovimiento")
        SET PROCEDURE TO ControladorSemaforo.prg ADDITIVE
        THIS.oControladorSemaforo = CREATEOBJECT("ControladorSemaforo")
    ENDPROC
    
    PROCEDURE ActualizarEstado(oFormulario)
        THIS.oControladorMovimiento.ActualizarPosiciones(oFormulario)
        THIS.oControladorSemaforo.ActualizarSemaforos(oFormulario)
    ENDPROC
ENDDEFINE