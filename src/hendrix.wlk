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
object habilidadGuitarraHendrix {
	var nombre = "guitarra"
	var valor = 90
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
object habilidadBateriaHendrix {
	var nombre = "bateria"
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
object habilidadBajoHendrix {
	var nombre = "bajo"
	var valor = 60
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
object habilidadComposicionHendrix {
	var nombre = "composicion"
	var valor = 80
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
object habilidaddCarismaHendrix {
	var nombre = "carisma"
	var valor = 60
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
	var nivelDescontrol = 0
	var habilidades = #{habilidadCantoHendrix,habilidadPianoHendrix,habilidadBateriaHendrix,
		habilidadComposicionHendrix,habilidadGuitarraHendrix,habilidaddCarismaHendrix,habilidadPianoHendrix}
	var cachet= 0
	method getHabilidad(nombreHabilidad){
		return habilidades.find({ habilidad => habilidad.getNombre()==nombreHabilidad }).getValor()
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
	method virtuosismo(){
		habilidades.fold(0, { maximo, habilidad =>
     maximo.max( habilidad.getValor() ) })
	}
	method getCachet(){
		return cachet
	}
	
}