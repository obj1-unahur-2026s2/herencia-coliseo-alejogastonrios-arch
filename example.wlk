class Arma{
  method valorDeAtaque()
}

class ArmasDeFilo inherits Arma{
  const filo 
  const longitud
  override method valorDeAtaque() = filo * longitud 
}

class ArmasContundentes inherits Arma{
  const peso
  override method valorDeAtaque() = peso
}

object casco {
  method armadura(gladiador) = 10
}

object escudo {
  method armadura(gladiador) = 5 + (gladiador.destreza() * 0.1)
}

class Gladiador{
  var vida = 100

  //method atacar
  //method defenderse
}

class Mirmillon inherits Gladiador{
  var property arma 
  var property fuerza
  var armadura

  method fuerza(valor) {fuerza = valor}
 // method destreza() = 15
  method cambiarArmadura(otraArmadura){armadura = otraArmadura}
}

class Dimachaerus inherits Gladiador{
  const armas = []
  const destreza 

  method destreza() = 10
}