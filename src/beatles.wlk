import hendrix.*
import audioslave.*
import charly.*
import gunsroses.*

object johnLennon {
	
	var canto = 70
	var guitarra=40
	var bateria=0
	var bajo=30
	var piano=50
	var composicion=90
	var carisma=80
	var promedio=0
	var suma=0
	var cantidad=0
	
	method habilidadEnCanto(){
		return canto
	}
	method habilidadEnGuitarra(){
		return guitarra
	}
	
	method habilidadEnBateria(){
		return bateria
	}
	
	method habilidadEnBajo(){
		return bajo
	}
	
	method habilidadEnPiano(){
		return piano
	}
	
	method habilidadEnComposicion(){
		return composicion
	}
	
	method habilidadEnCarisma(){
		return carisma
	}

    method tocaCon(otroMusico){
		
		return !yoko.estaCerca() && self.nivelPromedioTodasLasHabilidad()>70
	}
	
	method calculaNivelPromedioTodasLasHabilidad(){
		promedio= self.sumaTotal()/ self.cantidadDeHablidadesQueNoEstanCero()
	}
	
	method nivelPromedioTodasLasHabilidad(){
		return promedio
	}
	
	method sumaHabilidadDeGuitarraSiNoEstaEnCero(){
		if(self.habilidadEnGuitarra()>0){
        suma= suma +guitarra
        cantidad= cantidad + 1
        }
     }
     
     method sumaHabilidadDeBateriaSiNoEstaEnCero(){
		if(self.habilidadEnBateria()>0){
		suma= suma + bateria
		cantidad = cantidad + 1
		
		}
	}
	
	method sumaHabilidadDeCantoSiNoEstaEnCero(){
		if(self.habilidadEnCanto()>0){
		suma= suma + canto
		cantidad= cantidad + 1
		
		}
	}
	
	method sumaHabilidadDeBajoSiNoEstaEnCero(){
		if(self.habilidadEnBajo()>0){
		suma= suma + bajo
		cantidad= cantidad + 1
		}
	}
	
	method sumaHabilidadDePianoSiNoEstaEnCero(){
		if(self.habilidadEnPiano()>0){
		suma= suma + piano
		cantidad= cantidad + 1
		
		}
	}
	
	method sumaHabilidadDeComposicionSiNoEstaEnCero(){
		if(self.habilidadEnComposicion()>0){
		suma= suma + composicion
		cantidad= cantidad + 1
		
		}
	}
	
	method sumaHabilidadDeCarismaSiNoEstaEnCero(){
		if(self.habilidadEnCarisma()>0){
		suma= suma + carisma
		cantidad = cantidad + 1
		
		}
	}
	
	method sumaTotal(){
		return suma
	}
	
	method cantidadDeHablidadesQueNoEstanCero(){
		
		return cantidad	
	}
	
    method modificaHabilidadBateria(){
	 	if (yoko.estaCerca()){
	 	bateria = bateria - (bateria * 0.20)
	 	
	 	}
				
	}
	
	method modificaHabilidadCanto(){
	 	if (yoko.estaCerca()){
	 	canto = canto -(canto *0.20)
	 	
	 	}
				
	}
	
	method modificaHabilidadGuitarra(){
	 	if (yoko.estaCerca()){
	 	guitarra = guitarra -(guitarra *0.20)
	 	
	 	}
	}
	
	
	method modificaHabilidadBajo(){
	 	if (yoko.estaCerca()){
	 	bajo = bajo - (bajo * 0.20)
	 	
	 	}
				
	}
	
	
	method modificaHabilidadPiano(){
	 	if (yoko.estaCerca()){
	 	piano = piano - (piano *0.20)
	 	
	 	}
				
	}
	
	
	method modificaHabilidadComposicion(){
	 	if (yoko.estaCerca()){
	 	composicion = composicion - (composicion * 0.20)
	 	
	 	}
				
	}
	
	
	
	method modificaHabilidadCarisma(){
	 	if (yoko.estaCerca()){
	 	carisma = carisma -(carisma * 0.20) 
	 	
	 	}
	 		
	}
	
	  method algunaHabilidadMayorA(unMusico){
    	return self.habilidadEnCanto()> unMusico.habilidadEnCanto() || 
    	self.habilidadEnGuitarra()> unMusico.habilidadEnGuitarra()||
    	self.habilidadEnBateria()> unMusico.habilidadEnBateria()||
    	self.habilidadEnBajo()> unMusico.habilidadEnBajo()||
    	self.habilidadEnPiano()> unMusico.habilidadEnPiano()||
    	self.habilidadEnComposicion()> unMusico.habilidadEnComposicion()||
    	self.habilidadEnCarisma()> unMusico.habilidadEnCarisma()
    }
    
    
    
     method algunaHablidadMayorAcero(unMusico){
    	return unMusico.habilidadEnCanto() == 0 && self.habilidadEnCanto()>0 ||
    	unMusico.habilidadEnGuitarra() == 0 && self.habilidadEnGuitarra()>0 ||
    	unMusico.habilidadEnBateria() == 0 && self.habilidadEnBateria()>0 ||
    	unMusico.habilidadEnBajo() == 0 && self.habilidadEnBajo()>0 ||
    	unMusico.habilidadEnPiano() == 0 && self.habilidadEnPiano()>0 ||
    	unMusico.habilidadEnComposicion() == 0 && self.habilidadEnComposicion()>0 ||
    	unMusico.habilidadEnCarisma() == 0 && self.habilidadEnCarisma()>0 
    	
    }
	
	
	
}

object yoko{
	
	var pasos=10
	
	method pasos(){
		return pasos
	}
	
	method caminar(cantidad){
		pasos=cantidad
	}
	
	method estaCerca(){
		return self.pasos()>20
	}
	
}
object paulMcCartney {
 
	var canto = 80
	var guitarra=60
	var bateria=20
	var bajo=70
	var piano=40
	var composicion=95
	var carisma=60
	
	
	method habilidadEnCanto(){
		return canto
	}
	method habilidadEnGuitarra(){
		return guitarra
	}
	
	method habilidadEnBateria(){
		return bateria
	}
	
	method habilidadEnBajo(){
		return bajo
	}
	
	method habilidadEnPiano(){
		return piano
	}
	
	method habilidadEnComposicion(){
		return composicion
	}
	
	method habilidadEnCarisma(){
		return carisma
	}

    method  tocaCon(otroMusico){
		
		return otroMusico.algunaHabilidadMayorA(self)
	}
	

     method algunaHablidadMayorAcero(unMusico){
    	return unMusico.habilidadEnCanto() == 0 && self.habilidadEnCanto()>0 ||
    	unMusico.habilidadEnGuitarra() == 0 && self.habilidadEnGuitarra()>0 ||
    	unMusico.habilidadEnBateria() == 0 && self.habilidadEnBateria()>0 ||
    	unMusico.habilidadEnBajo() == 0 && self.habilidadEnBajo()>0 ||
    	unMusico.habilidadEnPiano() == 0 && self.habilidadEnPiano()>0 ||
    	unMusico.habilidadEnComposicion() == 0 && self.habilidadEnComposicion()>0 ||
    	unMusico.habilidadEnCarisma() == 0 && self.habilidadEnCarisma()>0 
    	
    }

}

object ringo{
	const cachet = 100
}

object harrison{
	const cachet = 0
	
	method tocaConOtroMusico(unMusico){
		return true
	}
}