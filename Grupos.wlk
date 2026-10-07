import Armas.*
import Gladiadores.*

class Grupo{
  const nombre
  var peleas = 0
  const miembros = []

  method agregarMiembro(gladiador){miembros.add(gladiador)}
  method quitarMiembro(gladiador){miembros.remove(gladiador)}

  method vivos() = miembros.filter({g => g.vida()>0})
  method campeon() = self.vivos().max({g => g.fuerza()})
}