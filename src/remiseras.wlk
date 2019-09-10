//			#CLIENTES#

object ludmila { 
	
	method pago() {
		return 18 	 
	}
}

object anaMaria {
var ecoEstable = true
	
	method pago()	{
		if (ecoEstable) {
			return 30 
		} else {
			return 25 
		}
	}
	
	method ecoEstable() {
		return ecoEstable
	}
}

object teresa {	
var property pago = 22
}

object melina {
var property cliente 

	method pago() {
		return cliente.pago() - 3
	}	
}

//			#REMISERAS#

object roxana {
	
	method tarifa(cliente,kms) {
		return cliente.pago() * kms

	}	
}

object gabriela {

	method tarifa(cliente,kms) {
		return cliente.pago() * kms * 1.20
	}
}

object mariela {

	method tarifa(cliente,kms) {		
		return 50.max(cliente.pago() * kms)
	}	
}

object juana {
	
	method tarifa(cliente,kms) {
		if (kms < 8) {
			return 100
		} else {
			return 200
		}
	}	
}

object lucia {
var property reemplaza
	
	method tarifa(cliente,kms) {
		return reemplaza.tarifa(cliente,kms)
	}
}