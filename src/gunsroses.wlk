import thebeatles.*
import charly.*
import hendrix.*
import axelRose.*
import duff.*
import ringo.*
import slash.*

object gunsnroses{
	var integrantes = #{duffMc,axelRose,slash}
	method cantidadIntegrantes(){
		return integrantes.size()
	}
	method despedirIntegrante(integrante){
		integrantes.remove(integrante)
	}
	method contratarIntegrante(integrante){
		integrantes.add(integrante)
	}
	method virtuosismo(){
		return (integrantes.map{integrante => integrante.virtuosismo()} .sum() / self.cantidadIntegrantes()) *1.1
	}
	method marketing(){
		return integrantes.map{integrante => integrante.getHabilidad("carisma")}.sum() * 1.1
	}
	method contratable(){
		return false
	}
	method sacarMusico(musico) {
		return false
	}
	method agregarMusico(musico) {
		return false
	}
}