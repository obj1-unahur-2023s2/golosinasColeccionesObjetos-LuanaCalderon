import golosinas.*
import sabores.*


object mariano {
	const bolsaDeGolosinas = []
	
	method comprar(unaGolosina) = bolsaDeGolosinas.add(unaGolosina)
	
	method desechar(unaGolosina) = bolsaDeGolosinas.remove(unaGolosina)
	
	method cantidadDeGolosinas() = bolsaDeGolosinas.size()
	
	method tieneLaGolosina(unaGolosina) = bolsaDeGolosinas.contains(unaGolosina)
	
	method probarGolosinas() = bolsaDeGolosinas.forEach({golosina => golosina.recibirMordisco()})
	
	method hayGolosinaSinTACC() = bolsaDeGolosinas.any({golo => not(golo.libreDeGluten())})
	
	method preciosCuidados() = bolsaDeGolosinas.all({golo => golo.precio() <= 10})
	
	method golosinaDeSabor(unSabor) = bolsaDeGolosinas.find({golosina => golosina.sabor() == unSabor})
	
	method sabores() = bolsaDeGolosinas.map({golosina => golosina.sabor()}).asSet() 
	
	method golosinaMasCara() = bolsaDeGolosinas.max({golo => golo.precio()})
	
	method pesoGolosinas() = bolsaDeGolosinas.sum({golo => golo.peso()})
	
	method gastoEn(sabor) = bolsaDeGolosinas.filter({golo => golo.sabor() == sabor})
	  
	
		
}
