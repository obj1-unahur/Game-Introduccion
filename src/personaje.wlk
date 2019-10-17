import wollok.game.*
object toni {
	 var property position  = 	game.at(
			0.randomUpTo(game.width() -1).truncate(0), 
		    0.randomUpTo(game.height()-1).truncate(0)
			)
	
	 var energia = 100
	 var pasos = 0
	 method image() = "player.png"
	
	
	method contarPasos() {
		pasos++
		if (pasos % 10 == 0) energia--
	}
	
	method moveteHaciaArriba(){
		if (self.position().y() != game.height()-1) {
			self.position(self.position().up(1))
			self.contarPasos()
		}
	}
	
	method moveteHaciaAbajo(){
		if (self.position().y() != 0) {
			self.position(self.position().down(1))
			self.contarPasos()
		}
	}
	
	method moveteHaciaDerecha(){
		if (self.position().x() != game.width()-1) {
			self.position(self.position().right(1))
			self.contarPasos()	
		}
	}
	
	method moveteHaciaIzquierda() {
		if (self.position().x() != 0) {
			self.position(self.position().left(1))
			self.contarPasos()
		}
			
	}
	
	method decirEnergia(){
		game.say(self, "Paso: " + pasos + " Energia:" + energia)
	}
}
