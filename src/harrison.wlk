import thebeatles.*
import charly.*
import hendrix.*
import gunsroses.*

  object habilidadCarisma {
	var nombre = "carisma"
	var valor = 60
	method getValor(){
		return valor
	}
	method getNombre() {
		return nombre
	}
}
 object habilidadComposicion {
	var nombre = "composicion"
	var valor = 75
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
	var valor = 60
	method getValor(){
		return valor
	}
	method getNombre() {
		return nombre
	}
}
 object habilidadGuitarra {
	var nombre = "guitarra"
	var valor = 70
	method getValor(){
		return valor
	}
	method getNombre() {
		return nombre
	}
}
 object habilidadBajo {
	var nombre = "bajo"
	var valor = 50
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
object harrison{
	var cachet = 0
	var habilidades=#{habilidadBajo,habilidadBateria,habilidadCanto,habilidadCarisma,
		habilidadComposicion,habilidadGuitarra,habilidadPiano}
	method tocaCon(otroMusico){
		return true
	}
	method getCachet(){
		return cachet
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
	method getHabilidad(nombreHabilidad){
		return habilidades.find({ habilidad => habilidad.getNombre()==nombreHabilidad }).getValor()
	}


}