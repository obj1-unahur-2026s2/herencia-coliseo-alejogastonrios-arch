import Gladiadores.*
import Grupos.*

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
