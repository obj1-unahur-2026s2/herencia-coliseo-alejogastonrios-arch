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
  method valorArmaadura(gladiador) = 10
}

object escudo {
  method valorArmaadura(gladiador) = 5 + (gladiador.destreza() * 0.1)
}

class Gladiador{
  var property vida = 100

  method atacar(gladiador){
    gladiador.recibirDaño(self)
  }
  method recibirDaño(gladiador){
    vida -= (gladiador.poderDeAtaque() - self.defensa())
  }
  method defensa()
  method pelearCon(gladiador){
    self.atacar(gladiador)
    gladiador.atacar(self)
  }
}

class Mirmillon inherits Gladiador{
  var property arma 
  var property fuerza
  var armadura

  method fuerza(valor) {fuerza = valor}
  method destreza() = 15
  method cambiarArmadura(otraArmadura){armadura = otraArmadura}
  override method defensa() = self.destreza() + armadura.valorArmaadura(self)
}

class Dimachaerus inherits Gladiador{
  const armas = []
  const destreza 
  method fuerza() = 10
  override method atacar(gladiador){
    super(gladiador) += 1
  }
  method poderDeAtaque() = self.fuerza() + armas.sum({a => a.valorDeAtaque()})
  override method defensa() = destreza/2
}