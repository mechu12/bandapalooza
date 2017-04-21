import gunsroses.*
import hendrix.*
import beatles.*
import audioslave.*


object charlyGarcia {

    var canto = 60
	var guitarra=60
	var bateria=0
	var bajo=20
	var piano=80
	var composicion=90
	var carisma=65
	
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
	
	
	method modificaHabilidadBateria(){
	 	 bateria= self.nivelDeHumor() * bateria
				
	}
	
	method modificaHabilidadCanto(){
	 	canto = self.nivelDeHumor() * canto
	}
	
	method modificaHabilidadGuitarra(){
	 	guitarra= self.nivelDeHumor() * guitarra
	}
	
	
	method modificaHabilidadBajo(){
	 	bajo= self.nivelDeHumor() * bajo
				
	}
	
	
	method modificaHabilidadPiano(){
	  piano= self.nivelDeHumor() * piano
				
	}
	
	
	method modificaHabilidadComposicion(){
	 composicion= self.nivelDeHumor() * composicion
				
	}
	
	
	
	method modificaHabilidadCarisma(){
	 carisma= self.nivelDeHumor() * carisma
				
	}
	
	
	
	 method  tocaCon(otroMusico){
		
		return self.nivelDeHumor()>0.8
	}


    method nivelDeHumor(){
     return 0.0.randomUpTo(1)
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