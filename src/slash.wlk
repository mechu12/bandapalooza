import charly.*
import gunsroses.*
import hendrix.*
import thebeatles.*
  object habilidadCarisma {
	var nombre = "carisma"
	var valor = 80
	method getValor(){
		return valor
	}
	method getNombre() {
		return nombre
	}
}
 object habilidadComposicion {
	var nombre = "composicion"
	var valor = 85
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
	var valor = 0
	method getValor(){
		return valor
	}
	method getNombre() {
		return nombre
	}
}
 object habilidadGuitarra {
	var nombre = "guitarra"
	var valor = 85
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
object slash {
	var cachet = 400.000
	var habilidades = #{habilidadBajo,habilidadCanto,habilidadCarisma,habilidadCarisma,
		habilidadComposicion,habilidadGuitarra,habilidadPiano}
	method tocaCon(otroMusico){
		return self.getHabilidad("carisma") >= otroMusico.getHabilidad("carisma")
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
		return habilidades.filter({ habilidad => habilidad.getValor() != 0 }).size()
	}
	method getHabilidad(nombreHabilidad){
		return habilidades.find({ habilidad => habilidad.getNombre()==nombreHabilidad }).getValor()
	}
}