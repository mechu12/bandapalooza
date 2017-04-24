import charly.*
import gunsroses.*
import hendrix.*
import thebeatles.*
import lennon.*

object habilidadCantoPaul {
	var nombre = "canto"
	var valor = 80
	method getValor(){
		return valor
	}
	method getNombre() {
		return nombre
	}
}

object habilidadCarismaPaul {
	var nombre = "carisma"
	var valor = 60
	method getValor(){
		return valor
	}
	method getNombre() {
		return nombre
	}
}
object habilidadGuitarraPaul {
	var nombre = "guitarra"
	var valor = 60
	method getValor(){
		return valor
	}
	method getNombre() {
		return nombre
	}
}
object habilidadBateriaPaul {
	var nombre = "bateria"
	var valor = 20
	method getValor(){
		return valor
	}
	method getNombre() {
		return nombre
	}
}
object habilidadBajoPaul {
	var nombre = "bajo"
	var valor = 70
	method getValor(){
		return valor
	}
	method getNombre() {
		return nombre
	}
}
object habilidadPianoPaul {
	var nombre = "piano"
	var valor = 40
	method getValor(){
		return valor
	}
	method getNombre() {
		return nombre
	}
}
object habilidadComposicionPaul {
	var nombre = "carisma"
	var valor = 95
	method getValor(){
		return valor
	}
	method getNombre() {
		return nombre
	}
}
object paul {
	var habilidades = #{habilidadCarismaPaul,habilidadCantoPaul}
	var cachet=600.000
	
	method getCachet(){
		return cachet
	}
	method getHabilidad(nombreHabilidad){
		return habilidades.filter({ habilidad => habilidad.getNombre()==nombreHabilidad })
			.map{ habilidad => habilidad.getValor() }.sum()
	}
	method tocaCon(otroMusico){
		return habilidades.any{ habilidad =>
			otroMusico.getHabilidad( habilidad.getNombre() ) > habilidad.getValor() }
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
		return habilidades.filter({ habilidad => habilidad.getValor() != 0 }).sum()
	}

}