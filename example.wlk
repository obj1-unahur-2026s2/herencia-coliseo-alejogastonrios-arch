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

