import charly.*
import gunsroses.*
import hendrix.*
import thebeatles.*


object habilidadCanto {
	var musico = lennon
	var nombre = "canto"
	var valor = 70
	method getValor(){
		return valor * musico.porcentaje()
	}
	method getNombre() {
		return nombre
	}
}
object habilidadGuitarra {
	var musico = lennon
	var nombre = "guitarra"
	var valor = 40
	
	method getValor(){
		return valor * musico.porcentaje()
	}
	method getNombre() {
		return nombre
	}
}
object habilidadBateria {
	var musico = lennon
	var nombre = "bateria"
	var valor = 0
	
	method getValor(){
		return valor * musico.porcentaje()
	}
	method getNombre() {
		return nombre
	}
}
object habilidadBajo {
	var musico = lennon
	var nombre = "bajo"
	var valor = 60
	
	method getValor(){
		return valor * musico.porcentaje()
	}
	method getNombre() {
		return nombre
	}
}
object habilidadPiano {
	var musico = lennon
	var nombre = "piano"
	var valor = 50
	
	method getValor(){
		return valor * musico.porcentaje()
	}
	method getNombre() {
		return nombre
	}
}
object habilidadComposicion {
	var musico = lennon
	var nombre = "composicion"
	var valor = 90
	
	method getValor(){
		return valor * musico.porcentaje()
	}
	method getNombre() {
		return nombre
	}
}
object habilidadCarisma {
	var musico = lennon
	var nombre = "carisma"
	var valor = 80
	
	method getValor(){
		return valor * musico.porcentaje()
	}
	method getNombre() {
		return nombre
	}
}

object lennon {
	var habilidades = #{habilidadCanto,habilidadBajo,habilidadBateria,habilidadCarisma,
		habilidadComposicion,habilidadGuitarra,habilidadPiano}	
	var yokoEstaCerca = false
	var cachet = 0
	method porcentaje() {
		return if (not yokoEstaCerca) 1 else 0.8 	
	}
	method getCachet(){
		return cachet
	}	
	method getHabilidad(nombreHabilidad){
		return habilidades.find({ habilidad => habilidad.getNombre()==nombreHabilidad }).getValor()
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