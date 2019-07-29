import Foundation

class UsuarioDominio {
    
    var appDelegate: AppDelegate!

    init(appDelegate: AppDelegate) {
        self.appDelegate = appDelegate
    }
    
    func obtenerUsuario() -> UsuarioDTO {
        var usuario: UsuarioDTO!
        usuario = appDelegate.container.resolve(UsuarioDTO.self)!
        return usuario
    }
}
