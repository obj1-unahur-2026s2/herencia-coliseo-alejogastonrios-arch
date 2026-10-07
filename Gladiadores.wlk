import Armas.*
import Grupos.*

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
  method crearGrupoCon(gladiador){
    return new Grupo(nombre="Mirmillolandia", miembros=[self, gladiador])
  }
}

class Dimachaerus inherits Gladiador{
  const armas = []
  var destreza 
  method fuerza() = 10
  override method atacar(gladiador){
    super(gladiador)
    destreza += 1
  }
  method poderDeAtaque() = self.fuerza() + armas.sum({a => a.valorDeAtaque()})
  override method defensa() = destreza/2
  method crearGrupoCon(gladiador){
    const fuerzaGrupo= self.poderDeAtaque() + gladiador.poderDeAtaque()
    return new Grupo(nombre="D-" + fuerzaGrupo, miembros=[self, gladiador])
  }
}