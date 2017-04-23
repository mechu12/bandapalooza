import charly.*
import gunsroses.*
import lennon.*
import hendrix.*

object habilidadCantoCharly {
	var musico = charly
	var nombre = "canto"
	var valor = 80
	
	method getValor(){
		return valor * musico.getNivelHumor()
	}
	method getNombre() {
		return nombre
	}
}

object charly {
	var canto = 80
	var guitarra= 60
	var bateria = 20
	var bajo = 70
	var piano = 40
	var composicion = 95
	var carisma= 60
	var nivelDeHumor = 1
	
	method getCanto(){
		return canto * nivelDeHumor
	}
	method getGuitarra(){
		return guitarra * nivelDeHumor
	}
	method getBateria(){
		return bateria
	}
	method getBajo(){
		return bajo * nivelDeHumor
	}
	method getPiano(){
		return piano
	}
	method getComposicion(){
		return composicion
	}
	method getCarisma(){
		return carisma
	}
	method getNivelHumor() {
		return nivelDeHumor
	}
	method setNivelHumor(nuevoNivel) {
		nivelDeHumor = nuevoNivel
	}
	method tocaCon(otroMusico){
		return nivelDeHumor > 0.8
	}

}
