import charly.*
import gunsroses.*
import hendrix.*
object habilidadCarismaAxel{
	var nombre = "carisma"
	var valor = 80
	method getValor(){
		return valor
	}
	method getNombre() {
		return nombre
	}
}
object habilidadComposicionAxel{
	var nombre = "composicion"
	var valor = 75
	method getValor(){
		return valor
	}
	method getNombre() {
		return nombre
	}
}
object habilidadPianoAxel{
	var nombre = "piano"
	var valor = 70
	method getValor(){
		return valor
	}
	method getNombre() {
		return nombre
	}
}
object habilidadCantoAxel{
	var nombre = "canto"
	var valor = 90
	method getValor(){
		return valor
	}
	method getNombre() {
		return nombre
	}
}
object habilidadGuitarraAxel{
	var nombre = "guitarra"
	var valor = 0
	method getValor(){
		return valor
	}
	method getNombre() {
		return nombre
	}
}
object habilidadBateriaAxel{
	var nombre = "bateria"
	var valor = 0
	method getValor(){
		return valor
	}
	method getNombre() {
		return nombre
	}
}
object habilidadBajoAxel{
	var nombre = "bajo"
	var valor = 0
	method getValor(){
		return valor
	}
	method getNombre() {
		return nombre
	}
}
object axelRose {
	 var cachet = 500.000
	 var habilidades = #{habilidadBajoAxel,habilidadBateriaAxel,habilidadCantoAxel,
	 	habilidadCarismaAxel,habilidadComposicionAxel,habilidadGuitarraAxel,habilidadPianoAxel}
	method tocaCon(otroMusico){
		return self.getCachet() > otroMusico.getCachet()
	}
	method getCachet(){
		return cachet
	}
	method virtuosismo(){
		habilidades.fold(0, { maximo, habilidad =>
     maximo.max( habilidad.getValor() ) })
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