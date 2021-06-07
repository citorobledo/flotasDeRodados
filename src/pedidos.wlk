import Rodados.*
class Pedidos {
	const property distancia = 0 //kms.hora
	var property tiempoMaximo = 0 //horas
	var property pasajeros =0 //cantidad pasajeros en pedido
	var  coloresIncompatibles =[] 
	
	
	method agregarColor(color) = coloresIncompatibles.add(color)
	method coloresIncompatibles()=coloresIncompatibles
	method velocidadRequerida() =  distancia/tiempoMaximo
	method puedeSatisfacerPedido(unAuto){
		return (self.velocidadRequerida() -  unAuto.velocidadMaxima()).abs()>=10 and
			unAuto.capacidad () >= pasajeros and
			not coloresIncompatibles.any({color=>color == unAuto.color()})	
	}
	method acelerar() = self.tiempoMaximo (tiempoMaximo - 1)  
	method relajar() = self.tiempoMaximo (tiempoMaximo+1) 
	method esColorIncompatible(color) = coloresIncompatibles.any({col=>col == color})
}
