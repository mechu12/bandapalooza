import charly.*
import gunsroses.*
import lennon.*
import mccartney.*

object hendrix {
	var canto = 70 
	var guitarra = 90
	var bateria = 0
	var bajo=60
	var piano = 0
	var composicion = 80
	var carisma = 60
	var nivelDescontrol = 0
	
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
	method getDescontrol(){
		return nivelDescontrol
	}
	
	method tocaCon(otroMusico){
		return (((bateria  == 0)&& (otroMusico.getBateria() > 0)) ||
				((piano  == 0)&& (otroMusico.getPiano() > 0)) ) && (nivelDescontrol != 10)
	}
	method descontrol(){
		nivelDescontrol = nivelDescontrol + 1
		if ((nivelDescontrol >= 5) && (nivelDescontrol <10)) {
			canto = self.incrementar(canto, 5)/*faltan los demas */
		}
		if (nivelDescontrol == 10) {
			canto = 0
		}
	}
	method incrementar(habilidad, aumento) {
		return 100.min(habilidad + aumento)
	}
}