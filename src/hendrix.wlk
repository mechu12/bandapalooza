import charly.*
import gunsroses.*
import lennon.*
import mccartney.*


object habilidadCantoHendrix {
	var nombre = "canto"
	var valor = 70
	method getValor(){
		return valor
	}
	method setValor(nuevoValor){
		valor = nuevoValor
	}
	method getNombre() {
		return nombre
	}
	method incrementar(aumento) {
		valor = 100.min(valor + aumento)
	}
}
object habilidadPianoHendrix {
	var nombre = "piano"
	var valor = 0
	method getValor(){
		return valor
	}
	method setValor(nuevoValor){
		valor = nuevoValor
	}
	method getNombre() {
		return nombre
	}
	method incrementar(aumento) {
		valor = 100.min(valor + aumento)
	}
}
object hendrix {
	var canto = 70 
	var guitarra = 90
	var bateria = 0
	var bajo=60
	var piano = 0
	var composicion = 80
	var carisma = 60
	var nivelDescontrol = 0
	var habilidades = #{habilidadCantoHendrix,habilidadPianoHendrix}
	
	method getHabilidad(nombreHabilidad){
		return habilidades.find({ habilidad => habilidad.getNombre()==nombreHabilidad }).getValor()
	}
	
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
	method getDescontrol(){
		return nivelDescontrol
	}
	
	method tocaCon(otroMusico){
		return habilidades.any{habilidad => 
			habilidad.getValor()==0 and otroMusico.getHabilidad(habilidad.getNombre())>0}
		    and (nivelDescontrol != 10)
	}
	method descontrol(){
		nivelDescontrol = nivelDescontrol + 1
		if ((nivelDescontrol >= 5) && (nivelDescontrol <10)) {
			habilidades.forEach{habilidad => habilidad.incrementar(5)}
		}
		if (nivelDescontrol == 10) {
			habilidades.forEach{ habilidad => habilidad.setValor(0) }
		}
	}

}