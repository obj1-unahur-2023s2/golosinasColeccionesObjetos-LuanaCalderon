import sabores.*

object bombon {
	var property peso = 15	
	
	method precio() = 5
	method sabor() = frutilla
	method libreDeGluten() = true
	method recibirMordisco()  {peso =  0.max(peso * 0.8) - 1 }	
}

object alfajor {
	
	var property peso = 300
	
	method precio() = 12
	method sabor() = chocolate
	method libreDeGluten() = false
	method recibirMordisco()   { peso =  0.max(peso * 0.8) }
	
}


object caramelo {
	
	var property peso = 5
		
	method precio() = 1
	method sabor() = frutilla
	method libreDeGluten() = true
	method recibirMordisco() { peso -= 1}
	
}


object chupetin {
	
	var property peso = 7
	
	method precio() = 2
	method sabor() = naranja
	method libreDeGluten() = true
	method recibirMordisco() { if (peso > 2) { peso *= 0.90}}
	
}


object oblea {
		
	var property peso = 250
	
	method precio() = 5
	method sabor() = vainilla
	method libreDeGluten() = false
	method recibirMordisco() { if (peso > 50) { peso *= 0.50} else {peso *= 0.75}}
	
}


object chocolatin {
	var   peso 
	var precio 
	const mordisco = {peso = 0.max(peso - 2)}
	
	method peso() = peso
    method precio() = precio
	method sabor() = chocolate
	method libreDeGluten() = false
	method asignarPeso(gramos) {
		peso = gramos
		precio = 0.5*gramos
	}
	method recibirMordisco() {mordisco.apply()}
    method mordisco() = mordisco
	

}


object golosinaBaniada {
	var golosinaBase
	var property peso
	var nMordiscos = 0
	
	method baniarA(unaGolosina) {
		golosinaBase = unaGolosina
		peso = golosinaBase.peso() + 4
		nMordiscos = 0
	}
	method precio() = golosinaBase.precio() + 2
	method sabor() = golosinaBase.sabor()
	method libreDeGluten() = golosinaBase.libreDeGluten()
	method recibirMordisco() {
		if (nMordiscos < 2) {
        golosinaBase.recibirMordisco()  // Dar un mordisco a la golosina base
        peso -= 2  // Restar 2 gramos de bañado
        nMordiscos += 1
    }
	}
}


object pastillaTuttiFrutti {
	var nMordiscos = 0
	var sabor = frutilla
	var property libreDeGluten = false
	const gustos = [frutilla , chocolate , naranja]
	const mordisco = {sabor = gustos.get(nMordiscos%3)}
	
	method precio() = if(libreDeGluten){10}else{7}
	method sabor() = sabor
	method peso() = 5
	method mordisco() = mordisco
	
	method recibirMordisco() {
		nMordiscos ++
		mordisco.apply()
	}
	
}

