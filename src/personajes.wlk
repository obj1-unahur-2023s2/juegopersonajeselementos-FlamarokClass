import armas.*
import elementos.*


object floki {
	var arma = null
	
	method arma(unArma) {
		arma = unArma
	} 
	
	method encontrar(elemento) {
		if (arma.estaCargada()) {
			elemento.recibirAtaque(arma.potencia())
			arma.usar()
		}
	}
	
}

object mario {
	var cantidadRecolectada = 0
	
	method encontrar(elemento) {
		elemento.recibirTrabajo()
		cantidadRecolectada += elemento.otorgarUnidades()
	}
}

/* 
object luisa {
	var personajeActivo = null
	
	method manejarPersonaje(personaje) {
		personajeActivo = personaje 
}

*/
