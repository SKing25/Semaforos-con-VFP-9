DEFINE CLASS ElementosVisuales AS Custom
    PROCEDURE CrearElementosUI(oFormulario)
        * ==================== ELEMENTOS DEL PARQUE ====================
		oFormulario.AddObject("Pasto", "Shape")
		WITH oFormulario.Pasto
		    .Top = 0
		    .Left = 0
		    .Width = 210
		    .Height = 150
		    .BackColor = RGB(0, 255, 0)
		    .Visible = .T.
		ENDWITH

		oFormulario.AddObject("Fence1", "Shape") 
		WITH oFormulario.Fence1 
		    .Top = 100
		    .Left = 14
		    .Width = 165
		    .Height = 5
		    .BackColor = RGB(0, 0, 0)
		    .Visible = .T. 
		ENDWITH         

		oFormulario.AddObject("Fence2", "Shape")
		WITH oFormulario.Fence2
		    .Top = 125
		    .Left = 14
		    .Width = 165
		    .Height = 5
		    .BackColor = RGB(0, 0, 0)
		    .Visible = .T.
		ENDWITH

		oFormulario.AddObject("Fence3", "Shape")
		WITH oFormulario.Fence3
		    .Top = 95
		    .Left = 18
		    .Width = 5
		    .Height = 55
		    .BackColor = RGB(0, 0, 0)
		    .Visible = .T.
		ENDWITH

		oFormulario.AddObject("Fence4", "Shape")
		WITH oFormulario.Fence4
		    .Top = 95
		    .Left = 48
		    .Width = 5
		    .Height = 55
		    .BackColor = RGB(0, 0, 0)
		    .Visible = .T.
		ENDWITH

		oFormulario.AddObject("Fence5", "Shape")
		WITH oFormulario.Fence5
		    .Top = 95
		    .Left = 78
		    .Width = 5
		    .Height = 55
		    .BackColor = RGB(0, 0, 0)
		    .Visible = .T.
		ENDWITH

		oFormulario.AddObject("Fence6", "Shape")
		WITH oFormulario.Fence6
		    .Top = 95
		    .Left = 108
		    .Width = 5
		    .Height = 55
		    .BackColor = RGB(0, 0, 0)
		    .Visible = .T.
		ENDWITH

		oFormulario.AddObject("Fence7", "Shape")
		WITH oFormulario.Fence7
		    .Top = 95
		    .Left = 138
		    .Width = 5
		    .Height = 55
		    .BackColor = RGB(0, 0, 0)
		    .Visible = .T.
		ENDWITH

		oFormulario.AddObject("Fence8", "Shape")
		WITH oFormulario.Fence8
		    .Top = 95
		    .Left = 168
		    .Width = 5
		    .Height = 55
		    .BackColor = RGB(0, 0, 0)
		    .Visible = .T.
		ENDWITH

		* ==================== ELEMENTOS DE CÉSPED ====================
		oFormulario.AddObject("Grass", "Shape")
		WITH oFormulario.Grass
		    .Top = 80
		    .Left = 160
		    .Width = 5
		    .Height = 8
		    .BackColor = RGB(45, 87, 44)
		    .Visible = .T.
		ENDWITH

		oFormulario.AddObject("Grass1", "Shape")
		WITH oFormulario.Grass1
		    .Top = 65
		    .Left = 140
		    .Width = 5
		    .Height = 8
		    .BackColor = RGB(45, 87, 44)
		    .Visible = .T.
		ENDWITH

		oFormulario.AddObject("Grass2", "Shape")
		WITH oFormulario.Grass2
		    .Top = 45
		    .Left = 130
		    .Width = 5
		    .Height = 8
		    .BackColor = RGB(45, 87, 44)
		    .Visible = .T.
		ENDWITH

		oFormulario.AddObject("Grass3", "Shape")
		WITH oFormulario.Grass3
		    .Top = 30
		    .Left = 100
		    .Width = 5
		    .Height = 8
		    .BackColor = RGB(45, 87, 44)
		    .Visible = .T.
		ENDWITH

		oFormulario.AddObject("Grass4", "Shape")
		WITH oFormulario.Grass4
		    .Top = 25
		    .Left = 180
		    .Width = 5
		    .Height = 8
		    .BackColor = RGB(45, 87, 44)
		    .Visible = .T.
		ENDWITH

		oFormulario.AddObject("Grass5", "Shape")
		WITH oFormulario.Grass5
		    .Top = 60
		    .Left = 180
		    .Width = 5
		    .Height = 8
		    .BackColor = RGB(45, 87, 44)
		    .Visible = .T.
		ENDWITH

		oFormulario.AddObject("Grass6", "Shape")
		WITH oFormulario.Grass6
		    .Top = 60
		    .Left = 40
		    .Width = 5
		    .Height = 8
		    .BackColor = RGB(45, 87, 44)
		    .Visible = .T.
		ENDWITH

		oFormulario.AddObject("Grass7", "Shape")
		WITH oFormulario.Grass7
		    .Top = 80
		    .Left = 35
		    .Width = 5
		    .Height = 8
		    .BackColor = RGB(45, 87, 44)
		    .Visible = .T.
		ENDWITH

		oFormulario.AddObject("Grass8", "Shape")
		WITH oFormulario.Grass8
		    .Top = 75
		    .Left = 50
		    .Width = 5
		    .Height = 8
		    .BackColor = RGB(45, 87, 44)
		    .Visible = .T.
		ENDWITH

		oFormulario.AddObject("Grass9", "Shape")
		WITH oFormulario.Grass9
		    .Top = 70
		    .Left = 85
		    .Width = 5
		    .Height = 8
		    .BackColor = RGB(45, 87, 44)
		    .Visible = .T.
		ENDWITH

		oFormulario.AddObject("Grass10", "Shape")
		WITH oFormulario.Grass10
		    .Top = 60
		    .Left = 110
		    .Width = 5
		    .Height = 8
		    .BackColor = RGB(45, 87, 44)
		    .Visible = .T.
		ENDWITH

		oFormulario.AddObject("Grass11", "Shape")
		WITH oFormulario.Grass11
		    .Top = 30
		    .Left = 50
		    .Width = 5
		    .Height = 8
		    .BackColor = RGB(45, 87, 44)
		    .Visible = .T.
		ENDWITH

		oFormulario.AddObject("Grass12", "Shape")
		WITH oFormulario.Grass12
		    .Top = 20
		    .Left = 20
		    .Width = 5
		    .Height = 8
		    .BackColor = RGB(45, 87, 44)
		    .Visible = .T.
		ENDWITH

		* ==================== EDIFICIO ====================
		oFormulario.AddObject("Piso", "Shape")
		WITH oFormulario.Piso
		    .Top = 0
		    .Left = 360
		    .Width = 297
		    .Height = 150
		    .BackColor = RGB(138, 149, 151)
		    .Visible = .T.
		ENDWITH

		oFormulario.AddObject("Edificio", "Shape")
		WITH oFormulario.Edificio
		    .Top = 0
		    .Left = 450
		    .Width = 120
		    .Height = 160
		    .BackColor = RGB(255, 128, 0)
		    .Visible = .T.
		ENDWITH

		* Ventanas del edificio
		oFormulario.AddObject("Ventana1", "Shape")
		WITH oFormulario.Ventana1
		    .Top = 20
		    .Left = 460
		    .Width = 20
		    .Height = 25
		    .BackColor = RGB(255, 255, 0)
		    .Visible = .T.
		ENDWITH

		oFormulario.AddObject("Ventana2", "Shape")
		WITH oFormulario.Ventana2
		    .Top = 20
		    .Left = 490
		    .Width = 20
		    .Height = 25
		    .BackColor = RGB(255, 255, 0)
		    .Visible = .T.
		ENDWITH

		oFormulario.AddObject("Ventana3", "Shape")
		WITH oFormulario.Ventana3
		    .Top = 60
		    .Left = 460
		    .Width = 20
		    .Height = 25
		    .BackColor = RGB(255, 255, 0)
		    .Visible = .T.
		ENDWITH

		oFormulario.AddObject("Ventana4", "Shape")
		WITH oFormulario.Ventana4
		    .Top = 60
		    .Left = 490
		    .Width = 20
		    .Height = 25
		    .BackColor = RGB(255, 255, 0)
		    .Visible = .T.
		ENDWITH

		oFormulario.AddObject("Ventana5", "Shape")
		WITH oFormulario.Ventana5
		    .Top = 100
		    .Left = 460
		    .Width = 20
		    .Height = 25
		    .BackColor = RGB(255, 255, 0)
		    .Visible = .T.
		ENDWITH

		oFormulario.AddObject("Ventana6", "Shape")
		WITH oFormulario.Ventana6
		    .Top = 100
		    .Left = 490
		    .Width = 20
		    .Height = 25
		    .BackColor = RGB(255, 255, 0)
		    .Visible = .T.
		ENDWITH

		* ==================== LAGO ====================
		oFormulario.AddObject("Lago", "Shape")
		WITH oFormulario.Lago
		    .Top = 310
		    .Left = 10
		    .Width = 125
		    .Height = 80
		    .BackColor = RGB(30, 144, 255)
		    .Curvature = 20
		    .Visible = .T.
		ENDWITH

		* ==================== ESTACIONAMIENTO ====================
		oFormulario.AddObject("Asfalto", "Shape")
		WITH oFormulario.Asfalto
		    .Top = 310
		    .Left = 410
		    .Width = 180
		    .Height = 80
		    .BackColor = RGB(105, 105, 105)
		    .Visible = .T.
		ENDWITH

		oFormulario.AddObject("LineaEst1", "Line")
		WITH oFormulario.LineaEst1
		    .Top = 320
		    .Left = 420
		    .Width = 160
		    .Height = 0
		    .BorderColor = RGB(255, 255, 255)
		    .BorderWidth = 2
		    .Visible = .T.
		ENDWITH

		oFormulario.AddObject("LineaEst2", "Line")
		WITH oFormulario.LineaEst2
		    .Top = 360
		    .Left = 420
		    .Width = 160
		    .Height = 0
		    .BorderColor = RGB(255, 255, 255)
		    .BorderWidth = 2
		    .Visible = .T.
		ENDWITH

		oFormulario.AddObject("AutoEst1", "Shape")
		WITH oFormulario.AutoEst1
		    .Top = 330
		    .Left = 430
		    .Width = 30
		    .Height = 20
		    .BackColor = RGB(255, 0, 255)
		    .Visible = .T.
		ENDWITH

		oFormulario.AddObject("AutoEst2", "Shape")
		WITH oFormulario.AutoEst2
		    .Top = 330
		    .Left = 500
		    .Width = 30
		    .Height = 20
		    .BackColor = RGB(255, 100, 0)
		    .Visible = .T.
		ENDWITH

		* ==================== LÍNEAS DE VÍA ====================
		oFormulario.AddObject("Linea1", "Shape")
		WITH oFormulario.Linea1
		    .Top = 0
		    .Left = 220
		    .Width = 15
		    .Height = 450
		    .BackColor = RGB(255, 255, 255)
		    .Visible = .T.
		ENDWITH

		oFormulario.AddObject("Linea2", "Shape")
		WITH oFormulario.Linea2
		    .Top = 0
		    .Left = 335
		    .Width = 15
		    .Height = 450
		    .BackColor = RGB(255, 255, 255)
		    .Visible = .T.
		ENDWITH

		oFormulario.AddObject("Linea3", "Shape")
		WITH oFormulario.Linea3
		    .Top = 167
		    .Left = 0
		    .Width = 660
		    .Height = 15
		    .BackColor = RGB(255, 255, 255)
		    .Visible = .T.
		ENDWITH

		oFormulario.AddObject("Linea4", "Shape")
		WITH oFormulario.Linea4
		    .Top = 277
		    .Left = 0
		    .Width = 660
		    .Height = 15
		    .BackColor = RGB(255, 255, 255)
		    .Visible = .T.
		ENDWITH

		* ==================== ELEMENTOS PRINCIPALES ====================
		oFormulario.AddObject("shpCube", "Shape")
		WITH oFormulario.shpCube
		    .Top = 200
		    .Left = 0
		    .Width = 50
		    .Height = 50
		    .BackColor = RGB(0, 255, 0)
		    .Visible = .T.
		ENDWITH

		oFormulario.AddObject("shpCube2", "Shape")
		WITH oFormulario.shpCube2
		    .Top = 0
		    .Left = 260
		    .Width = 50
		    .Height = 50
		    .BackColor = RGB(255, 0, 0)
		    .Visible = .T.
		ENDWITH

		oFormulario.AddObject("Semafaro1", "Shape")
		WITH oFormulario.Semafaro1
		    .Top = 100
		    .Left = 380
		    .Width = 30
		    .Height = 30
		    .BackColor = RGB(0, 255, 0)
		    .Visible = .T.
		ENDWITH

		oFormulario.AddObject("Semafaro2", "Shape")
		WITH oFormulario.Semafaro2
		    .Top = 320
		    .Left = 150
		    .Width = 30
		    .Height = 30
		    .BackColor = RGB(255, 0, 0)
		    .Visible = .T.
		ENDWITH

		* ==================== PAREDES ====================
		oFormulario.AddObject("Pared", "Shape")
		WITH oFormulario.Pared
		    .Top = 0
		    .Left = 200
		    .Width = 10
		    .Height = 150
		    .BackColor = RGB(0, 0, 0)
		    .Visible = .T.
		ENDWITH

		oFormulario.AddObject("Pared2", "Shape")
		WITH oFormulario.Pared2
		    .Top = 0
		    .Left = 360
		    .Width = 10
		    .Height = 150
		    .BackColor = RGB(0, 0, 0)
		    .Visible = .T.
		ENDWITH

		oFormulario.AddObject("Pared3", "Shape")
		WITH oFormulario.Pared3
		    .Top = 150
		    .Left = 360
		    .Width = 300
		    .Height = 10
		    .BackColor = RGB(0, 0, 0)
		    .Visible = .T.
		ENDWITH

		oFormulario.AddObject("Pared4", "Shape")
		WITH oFormulario.Pared4
		    .Top = 150
		    .Left = 0
		    .Width = 210
		    .Height = 10
		    .BackColor = RGB(0, 0, 0)
		    .Visible = .T.
		ENDWITH

		oFormulario.AddObject("Pared5", "Shape")
		WITH oFormulario.Pared5
		    .Top = 300
		    .Left = 0
		    .Width = 210
		    .Height = 10
		    .BackColor = RGB(0, 0, 0)
		    .Visible = .T.
		ENDWITH

		oFormulario.AddObject("Pared6", "Shape")
		WITH oFormulario.Pared6
		    .Top = 300
		    .Left = 360
		    .Width = 300
		    .Height = 10
		    .BackColor = RGB(0, 0, 0)
		    .Visible = .T.
		ENDWITH

		oFormulario.AddObject("Pared7", "Shape")
		WITH oFormulario.Pared7
		    .Top = 300
		    .Left = 200
		    .Width = 10
		    .Height = 150
		    .BackColor = RGB(0, 0, 0)
		    .Visible = .T.
		ENDWITH

		oFormulario.AddObject("Pared8", "Shape")
		WITH oFormulario.Pared8
		    .Top = 300
		    .Left = 360
		    .Width = 10
		    .Height = 150
		    .BackColor = RGB(0, 0, 0)
		    .Visible = .T.
		ENDWITH
    ENDPROC
ENDDEFINE