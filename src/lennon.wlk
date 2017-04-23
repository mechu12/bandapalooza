import charly.*
import gunsroses.*
import hendrix.*
import thebeatles.*
object habilidadCantoLennon {
	var musico = lennon
	var nombre = "canto"
	var valor = 30
	method getValor(){
		return valor * musico.porcentaje()
	}
	method getNombre() {
		return nombre
	}
}
object habilidadGuitarraLennon {
	var nombre = "guitarra"
	var valor = 40
	
	method getValor(){
		return valor
	}
	method getNombre() {
		return nombre
	}
}
object habilidadBateriaLennon {
	var nombre = "bateria"
	var valor = 0
	
	method getValor(){
		return valor
	}
	method getNombre() {
		return nombre
	}
}
object habilidadBajoLennon {
	var nombre = "bajo"
	var valor = 60
	
	method getValor(){
		return valor
	}
	method getNombre() {
		return nombre
	}
}
object habilidadPianoLennon {
	var nombre = "piano"
	var valor = 50
	
	method getValor(){
		return valor
	}
	method getNombre() {
		return nombre
	}
}
object habilidadComposicionLennon {
	var nombre = "composicion"
	var valor = 90
	
	method getValor(){
		return valor
	}
	method getNombre() {
		return nombre
	}
}
object habilidadCarismaLennon {
	var nombre = "carisma"
	var valor = 80
	
	method getValor(){
		return valor
	}
	method getNombre() {
		return nombre
	}
}

object lennon {
	var habilidades = #{}	
	var yokoEstaCerca = false
	
	method porcentaje() {
		return if (not yokoEstaCerca) 1 else 0.8 	
	}
	
	method getHabilidad(nombreHabilidad){
		return habilidades.filter({ habilidad => habilidad.getNombre()==nombreHabilidad })
			.map{ habilidad => habilidad.getValor() }.sum()
	}
	method tocaCon(otroMusico){
		return ((not yokoEstaCerca) && (self.nivelPromedio() > 70))
	}
	method setYokoEstaCerca(estaCerca){
		yokoEstaCerca = estaCerca
	}
	method sumaHabilidades(){
		return habilidades.map{ habilidad => habilidad.getValor() }.sum()
	}
	method nivelPromedio(){
		return (self.sumaHabilidades() / self.cantidadHabilidades())
	}
	method cantidadHabilidades(){
		return habilidades.filter({ habilidad => habilidad.getValor() != 0 }).sum()
	}
	
	method virtuosismo(){
		habilidades.fold(0, { maximo, habilidad =>
     maximo.max( habilidad.getValor() ) })

	}
}