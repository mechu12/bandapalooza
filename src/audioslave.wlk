import cornell.*
import morello.*
object audioslave {
	var integrantes = #{cornell,morello}
	method cantidadIntegrantes(){
		return integrantes.size()
	}
	method virtuosismo(){
		return 0
	}
	method marketing(){
		return 0
	}
	method contratable(){
		return false
	}
	method despedirIntegrante(integrante){
		throw new Exception("Es una banda disuelta no se pueden despedir integrantes")
	}
	method contratarIntegrante(integrante){
		throw new Exception("Es una banda disuelta no se pueden contratar integrantes")	
		}	
	
}
