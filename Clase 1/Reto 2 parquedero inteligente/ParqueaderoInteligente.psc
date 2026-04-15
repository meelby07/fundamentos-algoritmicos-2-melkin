Algoritmo ParqueaderoInteligente
	//de melkin barrios y sabastian bedoya
    Definir tipoDia, horas Como Entero
    Definir tarifaPorHora, subtotal, recargo, total Como Real
    Definir recargoAplicado Como Logico
	
    Repetir
        Escribir "Seleccione el tipo de día :"
        Escribir "1. Día laborable "
        Escribir "2. Fin de semana "
        Escribir "3. Festivo "
        Leer tipoDia
		
        Si tipoDia < 1 O tipoDia > 3 Entonces
            Escribir "Opción no válida. Intente de nuevo"
        FinSi
    Hasta Que tipoDia >= 1 Y tipoDia <= 3
	
    Repetir
        Escribir "Ingrese la cantidad total de horas de estacionamiento:"
        Leer horas
		
        Si horas <= 0 Entonces
            Escribir "La cantidad de horas debe ser mayor a cero."
        FinSi
    Hasta Que horas > 0

    Segun tipoDia Hacer
        1:
            tarifaPorHora <- 5
            Escribir "Día: Laborable"
        2:
            tarifaPorHora <- 8
            Escribir "Día: Fin de semana"
        3:
            tarifaPorHora <- 10
            Escribir "Día: Festivo"
    FinSegun
	
    Escribir "Tarifa base: $", tarifaPorHora, " por hora."
    Escribir "Tiempo: ", horas, " horas."

    subtotal <- tarifaPorHora * horas
    Escribir "Costo base sin recargo: $", subtotal

    recargo <- 0
    recargoAplicado <- Falso
	
    Si horas MOD 2 <> 0 Entonces
        recargo <- subtotal * 0.20
        recargoAplicado <- Verdadero
        Escribir "¡TIEMPO IMPAR DETECTADO! Se aplicará un recargo del 20%."
    Sino
        Escribir "Tiempo par, no aplica recargo."
    FinSi
	
    total <- subtotal + recargo
	
    Escribir "Costo base: $", subtotal
    Si recargoAplicado Entonces
        Escribir "Recargo (20%): $", recargo
    Sino
        Escribir "Recargo: $0.00"
    FinSi
    Escribir "TOTAL A PAGAR: $", total

	
FinAlgoritmo