import cornell.*
import morello.*
object audioslave {
	var integrantes = #{cornell,morello}
	method cantidadIntegrantes(){
		return integrantes.size()
	}
	method virtuosismo(){
		return (integrantes.map{integrante => integrante.virtuosismo()} .sum() / self.cantidadIntegrantes()) 
	}
	method marketing(){
		return integrantes.map{integrante => integrante.getHabilidad("carisma")}.sum()
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
