Algoritmo RegistroTurnosFutbol
	
    // Para turnos
    Dimension turnos[50] // turnos tomados en la semana
    Dimension dias[7]
    Dimension horas[13]
    Dimension tiposCancha[3]
    Definir diaElegido, horaElegida, tipoCanchaElegida como Entero
    Definir opcionMenu, cantTurno como Entero
	
    Repetir
        Escribir "Que desea hacer?"
        Escribir "1. Reservar turnos"
        Escribir "2. Salir"
        Leer opcionMenu
		
        // Reservar turnos
        Si opcionMenu = 1 Entonces
            dias[1] <- "Lunes"
            dias[2] <- "Martes"
            dias[3] <- "Miércoles"
            dias[4] <- "Jueves"
            dias[5] <- "Viernes"
            dias[6] <- "Sábado"
            dias[7] <- "Domingo"
			
            horas[1] <- "8:00 AM - 9:00 AM"
			horas[2] <- "9:00 AM - 10:00 AM"
			horas[3] <- "10:00 AM - 11:00 AM"
			horas[4] <- "11:00 AM - 12:00 AM"
			horas[5] <- "12:00 AM - 1:00 PM"
			horas[6] <- "1:00 PM - 2:00 PM"
			horas[7] <- "2:00 PM - 3:00 PM"
			horas[8] <- "3:00 PM - 4:00 PM"
			horas[9] <- "4:00 PM - 5:00 PM"
			horas[10] <- "5:00 PM - 6:00 PM"			
			horas[11] <- "6:00 PM - 7:00 PM"	
			horas[12] <- "7:00 PM - 8:00 AM"	
			horas[13] <- "8:00 PM - 9:00 PM"
			
            tiposCancha[1] <- "Fútbol 5"
            tiposCancha[2] <- "Fútbol 7"
			
            cantTurno <- 1 // cantidad de turnos tomados
			
            Repetir
                Mostrar "Seleccione el día para el turno:"
                Para i <- 1 Hasta 7
                    Mostrar i, ". ", dias[i]
                Fin Para
                Leer diaElegido
				
                Mostrar "Seleccione la hora para el turno:"
                Para i <- 1 Hasta 13
                    Mostrar i, ". ", horas[i]
                Fin Para
                Leer horaElegida
				
                Mostrar "Seleccione el tipo de cancha:"
                Para i <- 1 Hasta 2
                    Mostrar i, ". ", tiposCancha[i]
                Fin Para
                Leer tipoCanchaElegida
				
				turnos[cantTurno] <- dias[diaElegido] + " " + horas[horaElegida] + " " + tiposCancha[tipoCanchaElegida]
				cantTurno <- cantTurno + 1
				
                Mostrar "¿Desea reservar otro turno? (1: Sí / 0: No)"
                Leer opcionMenu
            Hasta que opcionMenu = 0
			
            // Mostrar la lista de turnos ingresados...
            Mostrar "Lista de turnos ingresados:"
            Para i <- 1 Hasta cantTurno - 1
                Mostrar turnos[i]
            Fin Para
			
        Fin Si
    Hasta Que opcionMenu = 2
	
FinAlgoritmo
