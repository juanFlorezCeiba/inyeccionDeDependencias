import Foundation

class UsuarioDTO {
    
    var nombre: String!
    var esquema: String!
   
    init() {
        
    }
    
    init(nombre: String, esquema: String) {
        self.nombre = nombre
        self.esquema = esquema
    }
    
    func queEsquemaEs() { }
    
}
