DEFINE CLASS Simulador AS Custom
    oParallel = NULL
    oControladorMovimiento = NULL
    oControladorSemaforo = NULL
    
    PROCEDURE Init
        SET PATH TO "C:\Users\Santi\Downloads\ParallelFox-master\ParallelFox-master\examples" ADDITIVE
        THIS.oParallel = NEWOBject("Parallel", "ParallelFox.vcx")
        THIS.oParallel.SetWorkerCount(3)
        THIS.oParallel.StartWorkers(, "THIS", .F.)
        
        SET PATH TO "C:\Users\Santi\Downloads\ParallelFox-master\ParallelFox-master\examples\semaforos\negocio" ADDITIVE
        SET PROCEDURE TO ControladorMovimiento.prg ADDITIVE
        THIS.oControladorMovimiento = CREATEOBJECT("ControladorMovimiento", THIS.oParallel)
        SET PROCEDURE TO ControladorSemaforo.prg ADDITIVE
        THIS.oControladorSemaforo = CREATEOBJECT("ControladorSemaforo", THIS.oParallel)
    ENDPROC
    
    PROCEDURE Destroy
        IF VARTYPE(THIS.oParallel) = "O"
            THIS.oParallel.StopWorkers()
        ENDIF
    ENDPROC
    
    PROCEDURE ActualizarEstado(oFormulario)
        THIS.oControladorMovimiento.ActualizarPosiciones(oFormulario)
        THIS.oControladorSemaforo.ActualizarSemaforos(oFormulario)
    ENDPROC
    
    PROCEDURE EsperarComplecion
        THIS.oParallel.Wait()
    ENDPROC
ENDDEFINE