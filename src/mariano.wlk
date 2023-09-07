import golosinas.*
import sabores.*

object mariano {
	const golosinas = []
	
	method comprar(unaGolosina) = golosinas.add(unaGolosina)
	
	method desechar(unaGolosina) = golosinas.remove(unaGolosina)
	
	method cantidadDeGolosinas() = golosinas.size()
	
	method tieneLaGolosina(unaGolosina) = golosinas.contains(unaGolosina)
	
	method probarGolosinas() = golosinas.forEach({golosina => golosina.recibirMordisco()})
	
	method hayGolosinaSinTACC() = golosinas.any({golo => not(golo.contieneGluten())})
	
	method preciosCuidados() = golosinas.all({golo => golo.precio() <= 10})
	
	method golosinaDeSabor(unSabor) = golosinas.find({golosina => golosina.sabor() == unSabor})
	
	method sabores() = golosinas.map({golosina => golosina.sabor()}).asSet() 
	
	method golosinaMasCara() = golosinas.max({golo => golo.precio()})
	
	method pesoGolosinas() = golosinas.sum({golo => golo.peso()})
	
	method gastoEn(sabor) = golosinas.filter({golo => golo.sabor() == sabor})
	  
	method golosinasFaltantes(golosinasDeseadas) {} // no entendi
	
	method saborMasPopular() {}
	
	method saborMasPesado() {}
	
	method comproYDesecho(golosina) {}
		
}
