import charly.*
import gunsroses.*
import hendrix.*
import thebeatles.*
import lennon.*
object paul {
	var canto = 80
	var guitarra= 60
	var bateria = 20
	var bajo = 70
	var piano = 40
	var composicion = 95
	var carisma= 60
	
	method getCanto(){
		return canto
	}
	method getGuitarra(){
		return guitarra
	}
	method getBateria(){
		return bateria
	}
	method getBajo(){
		return bajo
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
	method tocaCon(otroMusico){
		return ( (bateria  < otroMusico.getBateria() ) ||
				(piano < otroMusico.getPiano()))
				/*todos los insturmentos */
	}

}