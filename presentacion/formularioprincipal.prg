LOCAL loForm
loForm = CREATEOBJECT("FormularioPrincipal")
loForm.Show(1)

DEFINE CLASS FormularioPrincipal AS Form
    Width = 600
    Height = 400
    Caption = "Simulacion de auto con semaforos inteligentes"
    AutoCenter = .T.
    BackColor = RGB(128, 128, 128)
    
    * Propiedades para la simulación
    nDireccionX = 1       && 1 = derecha, -1 = izquierda
    nDireccionY = 1       && 1 = abajo, -1 = arriba
    nContadorSemaforo = 0 && Contador para cambios de semáforo
    nEstadoSemaforo = 0   && 0 = rojo, 1 = verde, 2 = amarillo
    nPosicionx = 600
    nPosiciony = 400
    
    * Objetos de la lógica de negocio
    oSimulador = NULL
    oElementosVisuales = NULL
    
    * Temporizadores
    ADD OBJECT tmrMover AS Timer WITH Interval = 50, Enabled = .T.
    ADD OBJECT tmrSemaforo AS Timer WITH Interval = 1000, Enabled = .T.
    
    PROCEDURE Init
    	SET PATH TO "C:\Users\Santi\Downloads\ParallelFox-master\ParallelFox-master\examples" ADDITIVE
        * Inicializar el simulador (capa de negocio)
        SET PROCEDURE TO simulator.prg ADDITIVE
        THIS.oSimulador = CREATEOBJECT("Simulador")
        
        SET PATH TO "C:\Users\Santi\Downloads\ParallelFox-master\ParallelFox-master\examples\semaforos\presentacion" ADDITIVE
        * Crear elementos visuales
        SET PROCEDURE TO ElementosVisuales.prg ADDITIVE
        THIS.oElementosVisuales = CREATEOBJECT("ElementosVisuales")
        THIS.oElementosVisuales.CrearElementosUI(THIS)
    ENDPROC
    
    PROCEDURE Destroy
        IF VARTYPE(THIS.oSimulador) = "O"
            THIS.oSimulador.Destroy()
        ENDIF
    ENDPROC
    
    * Función utilitaria para leer archivos temporales
    FUNCTION LeerResultado(tcPatron)
        LOCAL ARRAY aF[1]
        LOCAL cRes
        
        IF ADIR(aF, tcPatron) > 0
            cRes = FILETOSTR(aF[1,1])
            ERASE (aF[1,1])
            RETURN cRes
        ELSE
            RETURN ""
        ENDIF
    ENDFUNC
    
    * Temporizador para mover los objetos
    PROCEDURE tmrMover.Timer
        WITH THISFORM
            * Solicitar actualización de posiciones
            .oSimulador.oControladorMovimiento.ActualizarPosiciones(THISFORM)
        ENDWITH
    ENDPROC
    
    * Temporizador para el semáforo
    PROCEDURE tmrSemaforo.Timer
        WITH THISFORM
            .nContadorSemaforo = .nContadorSemaforo + 1
            
            * Actualizar semáforos cuando sea necesario
            .oSimulador.oControladorSemaforo.ActualizarSemaforos(THISFORM)
        
        ENDWITH
    ENDPROC
ENDDEFINE