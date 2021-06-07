import Rodados.*
import pedidos.*
class Dependencia {
	var property empleados =0
	var property nombre	= ""
	var property flota = []
	var  registroPedidos =[]
	
	method agregarPedido(pedido) =  registroPedidos.add(pedido)
	method registroPedidos()=registroPedidos
	method  agregarAFlota(rodado)  = flota.add(rodado)
	method pesoTotalFlota() = flota.sum {rodado => rodado.peso()}
	method estaBienEquipada() = flota.size() >=3 and  flota.all{rod =>rod.velocidadMaxima() >=100}
	method capacidadTotalEnColor(color){
		const soloColor = flota.filter({rod=>rod.color() == color})
		return  soloColor.sum({rod=>rod.capacidad()})
	}
	method colorDelRodadoMasRapido() = flota.max({rod=>rod.velocidadMaxima()}).color()
	method capacidadFaltante() = empleados -  flota.sum {rodado => rodado.capacidad()}
	method esGrande() = empleados  >=40 and flota.size() >=5
	method totalDePasajerosEnPedidos() = registroPedidos.sum({ped => ped.pasajeros()})

	method pedidoSatisfechoPorTodos(pedido) = flota.all({rod=>pedido.puedeSatisfacerPedido(rod)})
	method pedidosNoSatisfechos() = registroPedidos.filter({ped=>self.pedidoSatisfechoPorTodos(ped)}) 
	
	method colorIncompatibleParaTodos(color) = registroPedidos.all({ped=>ped.esColorIncompatible(color)})
	method relajarPedidos()= registroPedidos.forEach({ped=>ped.relajar()})
 }

