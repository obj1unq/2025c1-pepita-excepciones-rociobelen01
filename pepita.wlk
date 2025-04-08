object pepita {
	var energia = 100
	
	method comer(comida) {
		energia = energia + comida.energiaQueAporta()
	}
	
	method volar(distancia) {
		energia = energia - 10 - distancia
	}
		
	method energia() {
		return energia
	}
}

object alpiste {
	method energiaQueAporta() {
		return 20
	}
}

object manzana {
	var madurez = 1
	const base = 5
	
	method madurez() {
		return madurez
	}
	
	method madurez(_madurez) {
		madurez = _madurez
	}
	
	method madurar() {
		self.madurez(madurez + 1)
	}
	
	method energiaQueAporta() {
		return base * madurez
	}
	
}

object pepon {
	var energia = 30
	
	method energia() {
		return energia
	}
		
	method comer(comida) {
		energia = energia + comida.energiaQueAporta() / 2
	}
		
	method volar(distancia) {
		energia = energia - 20 - 2*distancia
	}
	
}

object roque {
	var ave = pepita
	var cenas = 0;
	
	method ave(_ave) {
		ave = _ave
		cenas = 0
	}
	
	method alimentar(alimento) {
		ave.comer(alimento)
		cenas = cenas + 1
	}
}


// Excepcion

// Todo lo que pongas en un if despues de poner un error no se ejecuta 
// self.error()"Mensaje que quiero dar")
//
// energia += 0 -> No realiza cambio por lo tanto no finaliza el programa 
// Para las exceociones tener los casos donde si se puede hacer
// method hacer(){
// 	self.validar()
// 	<logica de negocios >
// }

// import.pepon.*

// describe "Pepita"{
// 	test "Cuando vuelva 10 con energia 100, sua energia es 80"
// pepita.volar(10)
// 	assert.equals(80, pepita.energia())
// 				CADA TEST ES INDEPENDIENTE
// test ""Cuando come alpiste su energia pasa de 100 a 120"
// 	pepita.comer(alpiste)
// 	assert.equals(120, pepita.energia)

// test "Con energia 100 no puede volar 100"
// 	asset.notThat(120, pepon.puedeVolar())
	
// test "Con energia 100 falla al querer volar 91"
//(assert. throwException(pepita.volar)  <- pongo ahi lo que va a
// 	pepita.volar(91)
// 	assert.equals(100, pepita.energia())
// Nunca llega a hacer el assert porque falla antes por excepcion 
// }

// Usualmente vamos a usar :
// assert.equals 
// assert.that
// assert.notThat(value)