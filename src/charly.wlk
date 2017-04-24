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
object habilidadGuitarraCharly {
	var musico = charly
	var nombre = "guitarra"
	var valor = 80
	
	method getValor(){
		return valor * musico.getNivelHumor()
	}
	method getNombre() {
		return nombre
	}
}
object habilidadBateriaCharly {
	var musico = charly
	var nombre = "bateria"
	var valor = 20
	
	method getValor(){
		return valor * musico.getNivelHumor()
	}
	method getNombre() {
		return nombre
	}
}
object habilidadBajoCharly {
	var musico = charly
	var nombre = "bajo"
	var valor = 70
	
	method getValor(){
		return valor * musico.getNivelHumor()
	}
	method getNombre() {
		return nombre
	}
}
object habilidadPianoCharly {
	var musico = charly
	var nombre = "piano"
	var valor = 40
	
	method getValor(){
		return valor * musico.getNivelHumor()
	}
	method getNombre() {
		return nombre
	}
}
object habilidadComposicionCharly {
	var musico = charly
	var nombre = "composicion"
	var valor = 95
	
	method getValor(){
		return valor * musico.getNivelHumor()
	}
	method getNombre() {
		return nombre
	}
}
object habilidadCarismaCharly {
	var musico = charly
	var nombre = "carisma"
	var valor = 60
	
	method getValor(){
		return valor * musico.getNivelHumor()
	}
	method getNombre() {
		return nombre
	}
}
object charly {
	var cachet = 10.000
	var nivelDeHumor = 1
	var habilidades = #{habilidadCantoCharly}

	method getHabilidad(nombreHabilidad){
		return habilidades.find({ habilidad => habilidad.getNombre()==nombreHabilidad }).getValor()
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
	method virtuosismo(){
		habilidades.fold(0, { maximo, habilidad =>
     maximo.max( habilidad.getValor() ) })
	}
	method getCachet(){
		return cachet
	}
	
}
