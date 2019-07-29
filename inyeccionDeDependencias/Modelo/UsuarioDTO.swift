import Foundation

class UsuarioDTO {
    
    var nombre: String!
    var esquema: String!
    
    init(nombre: String, esquema: String) {
        self.nombre = nombre
        self.esquema = esquema
        print("Se crea el usuario en el ambiente \(esquema)")
    }
    
}
