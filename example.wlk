class Corsa{

    var property color
    method capacidad() = 4
    method velocidadMaxima() = 150
    method peso() = 1300  

}
class Kwid{
    var property tanqueAdicional = true 
    method capacidad() = if(tanqueAdicional) 3 else 4
    method velocidadMaxima()=  110  + if(tanqueAdicional)0 else 10
    method peso() = 1200 + if(tanqueAdicional) 150 else 0 
    method color() = "Azul"

}
object trafic {
  var property motor = pulenta 
  var property interior = comodo
  method capacidad() = interior.capacidad()
  method velocidadMaxima() = motor.velocidad()
  method peso() = 4000 + self.interior().peso() + self.motor().peso()
  method color() = "blanco"
}
class Especiales{
      var property capacidad  
      var property velocidadMaxima  
      var property peso  
      var property color  
}
object comodo {
  method capacidad() = 5
  method peso()= 700
}
object popular {
  method capacidad() = 12
  method peso()= 1000
}
object pulenta {
  method velocidad() = 130
  method peso() = 800
}
object bataton {
  method velocidad() = 80
  method peso() = 500
}

class Dependecia{
  const flota = []
  var property empleados = 0  
  method agregarAFlota(rodado)= flota.add(rodado)  
  method quitarAFlota(rodado)= flota.remove(rodado)  
  method pesoTotalFlota()= flota.sum({e=>e.peso()})
  method tieneAlmenosXRodados(numero) = flota.size() >= numero
  method todosLosRodadosPuedenIrA100km() = flota.all({e=>e.velocidadMaxima() >= 100})
  method estaBienEquipada()= self.tieneAlmenosXRodados(3) and self.todosLosRodadosPuedenIrA100km()
  method autosDeColor(color) = flota.filter({e=>e.color() == color })
  method capacidadTotalEnColor(color) = self.autosDeColor(color).sum({e=>e.capacidad()})
  method elRodadoMasRapido() = flota.max({e=>e.velocidadMaxima()})
  method colorDelRodadoMasRapido() = self.elRodadoMasRapido().color()
  method capacidadTotalDeLaFlota()= flota.sum({e=>e.capacidad()})
  method capacidadFaltante() = (self.capacidadTotalDeLaFlota() - empleados).abs()
  method esGrande() = empleados >=40 and flota.size()>= 5
    
}
