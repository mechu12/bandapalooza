import lennon.*
import mccartney.*
import ringo.*
import harrison.*
object beatles {
	var integrantes = #{lennon, paul,ringo,harrison}
	method cantidadIntegrantes(){
		return integrantes.size()
	}
	method virtuosismo(){
		return (integrantes.map{integrante => integrante.virtuosismo()} .sum() / self.cantidadIntegrantes()) *1.1
	}
	method marketing(){
		return integrantes.map{integrante => integrante.getHabilidad("carisma")}.sum() * 1.1
	}
	method contratable(){
		return false
	}
	method sacarMusico(musico) {
		return false
	}
	method agregarMusico(musico) {
		return false
	}	
	
}
