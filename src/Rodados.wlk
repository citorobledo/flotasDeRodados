import wollok.game.*

class ChevroletCorsa { 
	const  property color =""
	method capacidad () =   4 
	method velocidadMaxima() = 150
	method peso() = 1300  
	method color() = color
}
class RenaultKwid {
	var property tanqueAdicional = false
	
	method capacidad () = if (not tanqueAdicional ) {4} else {3}
	method peso() = if (tanqueAdicional){1350} else{1200}
	method color () = "azul"
	method velocidadMaxima() = if (tanqueAdicional){120} else{ 110}
}

object trafic {
	var property interior 
	var property motor
	method capacidad() = interior.capacidad()
	method peso() = 4000 + interior.peso() + motor.peso()
	method color ()= "blanco"
	method velocidadMaxima() = motor.velocidadMaxima()
} 
object comodo{
	method capacidad() = 5
	method peso() = 700
}
object popular{
	method capacidad() = 12
	method peso() = 1000
}
object pulenta {
	method peso() = 800
	method velocidadMaxima() = 130
}
 object bataton{
	method peso() = 500
	method velocidadMaxima() = 80
}

class AutosEspeciales{
	var property capacidad
	var property velocidadMaxima
	var property peso 
	var property color
}

// GAME.:




	
	

