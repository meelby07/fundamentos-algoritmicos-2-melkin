Algoritmo SimuladorConFidelizacion
    Definir total, precio_producto, descuento Como Real
    Definir respuesta Como Caracter
    
    total <- 0
    respuesta <- "S"
    
    Mientras respuesta = "S" Hacer
        Escribir "Ingrese el precio del producto:"
        Leer precio_producto
        total <- total + precio_producto
        
        Escribir "¿Desea agregar otro producto? (S/N)"
        Leer respuesta
        respuesta <- Mayusculas(respuesta)
    FinMientras
    
    Si total > 500 Entonces
        descuento <- total * 0.15
        total <- total - descuento
        Escribir "Se aplicó descuento VIP del 15%."
    FinSi
    
    Escribir "Total a pagar: ", total
FinAlgoritmo


