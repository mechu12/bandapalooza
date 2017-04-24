import axelRose.*
import lennon.*
import mccartney.*
import charly.*
import hendrix.*
import morello.*
import gunsroses.*
import audioslave.*
  object habilidadCarisma {
	var nombre = "carisma"
	var valor = 70
	method getValor(){
		return valor
	}
	method getNombre() {
		return nombre
	}
}
 object habilidadComposicion {
	var nombre = "composicion"
	var valor = 80
	method getValor(){
		return valor
	}
	method getNombre() {
		return nombre
	}
}
 object habilidadPiano {
	var nombre = "piano"
	var valor = 0
	method getValor(){
		return valor
	}
	method getNombre() {
		return nombre
	}
}
 object habilidadCanto {
	var nombre = "canto"
	var valor = 90
	method getValor(){
		return valor
	}
	method getNombre() {
		return nombre
	}
}
 object habilidadGuitarra {
	var nombre = "guitarra"
	var valor = 40
	method getValor(){
		return valor
	}
	method getNombre() {
		return nombre
	}
}
 object habilidadBajo {
	var nombre = "bajo"
	var valor = 0
	method getValor(){
		return valor
	}
	method getNombre() {
		return nombre
	}
}
object habilidadBateria{
	var nombre = "bateria"
	var valor = 0
	method getValor(){
		return valor
	}
	method getNombre() {
		return nombre
	}
}
object cornell {
	var cachet = 200.000
	var habilidades = #{habilidadBajo,habilidadBateria,habilidadCanto,habilidadCarisma,habilidadGuitarra,habilidadComposicion,habilidadPiano}
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
	method getCachet(){
		return cachet
	}	
	method getHabilidad(nombreHabilidad){
		return habilidades.find({ habilidad => habilidad.getNombre()==nombreHabilidad }).getValor()
	}
	method tocaCon(otroMusico){
	
	}
}