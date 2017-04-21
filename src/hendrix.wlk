import gunsroses.*
import audioslave.*
import beatles.*
import charly.*

object jimiHendrix {
	var canto = 70
	var guitarra=90
	var bateria=0
	var bajo=60
	var piano=0
	var composicion=80
	var carisma=60
	var descontrol=0
	const habilidades =#{}
	const valoresHabilidades = []
	
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
	 	if (self.nivelDescontrolMayorAcinco())
		bateria=(descontrol - 4)*5
		else
		if(self.nivelDescontrolIgualAdiez())
		bateria=0
				
	}
	
	method modificaHabilidadCanto(){
	 	if (self.nivelDescontrolMayorAcinco())
		canto=(descontrol - 4)*5
		else
		if(self.nivelDescontrolIgualAdiez())
		canto=0
				
	}
	
	method modificaHabilidadGuitarra(){
	 	if (self.nivelDescontrolMayorAcinco())
		guitarra=(descontrol - 4)*5
		else
		if(self.nivelDescontrolIgualAdiez())
		guitarra=0
	}
	
	
	method modificaHabilidadBajo(){
	 	if (self.nivelDescontrolMayorAcinco())
		bajo=(descontrol - 4)*5
		else
		if(self.nivelDescontrolIgualAdiez())
		bajo=0
				
	}
	
	
	method modificaHabilidadPiano(){
	 	if (self.nivelDescontrolMayorAcinco())
		piano=(descontrol - 4)*5
		else 
		if(self.nivelDescontrolIgualAdiez())
		piano=0
				
	}
	
	
	method modificaHabilidadComposicion(){
	 	if (self.nivelDescontrolMayorAcinco())
		composicion=(descontrol - 4)*5
		else
		if(self.nivelDescontrolIgualAdiez())
		composicion=0
				
	}
	
	
	
	method modificaHabilidadCarisma(){
	 	if (self.nivelDescontrolMayorAcinco())
		carisma=(descontrol - 4)*5
		else
		if(self.nivelDescontrolIgualAdiez())
		carisma=0
				
	}
	
	method tocaCon(otroMusico){
		
		return otroMusico.algunaHablidadMayorAcero(self) && self.nivelDescontrol() <10
	}
	
	

	method modificarHablidadBateria(cantidad){
		bateria=cantidad
		
	}

	method descontrol(){
		if(self.nivelDescontrol () <11 && self.nivelDescontrol()<=0){
		descontrol= descontrol + 1
		
		}
	}
   
   method nivelDescontrol(){ 
   	   return descontrol
   }
   
   method nivelDescontrolMayorAcinco(){
   		return self.nivelDescontrol()>5
   	
   }
   
	method nivelDescontrolIgualAdiez(){
   		return self.nivelDescontrol()==10
   	
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
    
 }