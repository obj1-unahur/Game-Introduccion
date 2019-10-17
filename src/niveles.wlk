import wollok.game.*
import objetos.*
import personaje.*

object nivel1 {
	
	method cargarCajas(){
		(0 .. 0.randomUpTo(5).truncate(0)).forEach ({ e => game.addVisual(new Caja())})
	}
	
	method configurarTeclas(){
		keyboard.up().onPressDo({toni.moveteHaciaArriba()})
		keyboard.down().onPressDo({toni.moveteHaciaAbajo()})
		keyboard.left().onPressDo({toni.moveteHaciaIzquierda()})
		keyboard.right().onPressDo({toni.moveteHaciaDerecha()})
		keyboard.space().onPressDo({toni.decirEnergia()})
	}
	
	method configurarNivel(){
		game.addVisual(toni)
		self.configurarTeclas()
		self.cargarCajas()
		self.chocarContraCaja()
		
	}
	
	method chocarContraCaja() {

		game.whenCollideDo(toni, { c => c.movete()  })
	}

}
