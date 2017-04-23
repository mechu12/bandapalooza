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

object paul {
	var canto = 80
	var guitarra= 60
	var bateria = 20
	var bajo = 70
	var piano = 40
	var composicion = 95
	var carisma= 60
	var habilidades = #{habilidadCarismaPaul,habilidadCantoPaul}
		
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

}