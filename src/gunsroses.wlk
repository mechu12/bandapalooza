import axelRose.*
import duff.*
import slash.*
import lennon.*

object gunsnroses{
	var integrantes = #{duff,axelRose,slash}
	method cantidadIntegrantes(){
		return integrantes.size()
	}
	method esParteDeLaBanda(musico){
		return integrantes.contains(musico)
	}
	method despedirIntegrante(integrante){
		integrantes.remove(integrante)
		if (integrante==axelRose){
			integrantes.clear()
		}
	}
	method sePuedeContratar(nuevoIntegrante){
		return 
		integrantes.any{integrante => integrante.getHabilidad("carisma") <= nuevoIntegrante.getHabilidad("carisma")}
		and 
		integrantes.all{integrante => nuevoIntegrante.tocaCon(integrante)}
	}
	method contratarIntegrante(nuevoIntegrante){
	 if (self.sePuedeContratar(nuevoIntegrante)) {
		var menosCarismatico = self.menosCarismatico()
		integrantes.add(nuevoIntegrante)
		if (!(menosCarismatico ==axelRose or menosCarismatico == slash))
			integrantes.remove(menosCarismatico)
	 }
	}
	method menosCarismatico(){
		var minimoCarisma = integrantes.fold(100,{minimo,integrante => minimo.min(integrante.getHabilidad("carisma"))})
		return integrantes.find{integrante => integrante.getHabilidad("carisma")==minimoCarisma}
	}
	method virtuosismo(){
		return (integrantes.map{integrante => integrante.virtuosismo()} .sum() / self.cantidadIntegrantes()) 
	}
	method marketing(){
		return integrantes.map{integrante => integrante.getHabilidad("carisma")}.sum() 
	}
	method valorContratacion(){
		var resultado = integrantes.fold (0,{acum,integrante => acum + integrante.getCachet()}) 
		if (integrantes.contains(axelRose) and integrantes.contains(slash) ){
			return resultado * 5
		}else return resultado
	}
	method contratable(){
		return true
	}

}