
//: MiniReto2

import UIKit

enum Velocidades: Int{
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init(velocidadInicial: Velocidades){
        self = velocidadInicial
    }
    
}

class Auto {
    var velocidad: Velocidades
    
    init(){
        velocidad = Velocidades(velocidadInicial: Velocidades.Apagado)
    }
    
    func cambioDeEstado() -> (actual: Int, velocidadEnCadena: String) {
        let actual = self.velocidad.rawValue
        let velocidadEnCadena = "\(self.velocidad)"
        
        switch self.velocidad {
        case .Apagado:
            self.velocidad = .VelocidadBaja
        case .VelocidadBaja:
            self.velocidad = .VelocidadMedia
        case .VelocidadMedia:
            self.velocidad = .VelocidadAlta
        case .VelocidadAlta:
            self.velocidad = .VelocidadMedia
        }
        
        return (actual: actual, velocidadEnCadena:velocidadEnCadena)
    }
}
