
class ChevroletCorsa { 
	const  property color =""
	var property position  =  null
	var property image  = null
	var ultimaDireccion  = null
	method capacidad () =   4 
	method velocidadMaxima() = 150
	method peso() = 1300  
	method color() = color
	method moverse(direccion){
		ultimaDireccion  = direccion
		if (direccion == "norte"){
			self.position(position.up(1))
			}
		else if (direccion == "sur"){
			self.position(position.down(1))
			}
		else if (direccion == "este"){
			self.position(position.right(1))
			}
		else if (direccion == "oeste"){
			self.position(position.left(1))
			}
	}
	method repetirUltimoMovimiento() =  self.moverse(ultimaDireccion)

//• pasoPor(posicion) 
//• estaEn(region)  donde hay que crear los objetos que representan regiones. Arranquemos con regiones rectangulares, por ejemplo del (3,3) al (5,8).
	
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


	
	

