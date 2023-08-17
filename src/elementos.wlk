object castillo {
	var defensa = 150
	
	method altura() = 120 // la colocamos como metodo ya que no se modifica
	
	method defensa()= defensa
	
	method recibirAtaque(danio) {
		defensa = 0.max(defensa - danio)
	}
	
	method recibirTrabajo() {
		defensa = 200.min(defensa + 20)
	}
	
	method otorgarUnidades() = defensa * 0.2
}

object tipa {
	var altura = 8 // la colocamos como atributo porque se modifica 
	
	method recibirAtaque(danio) {} 
	
	method recibirTrabajo() {
		altura++	
	}
	method otorgarUnidades() = altura * 2
}

object aurora {
	var estaViva = true
	
	method altura() = 1
	method estaViva() = estaViva
	method recibirAtaque(danio) {
		estaViva = danio < 10 and estaViva
	}
	
	method recibirTrabajo() {} // lo dejamos para mantener polimorfismo y debe tener el parametro para mantener polimorfismo
	
	method otorgarUnidades() = 15

}