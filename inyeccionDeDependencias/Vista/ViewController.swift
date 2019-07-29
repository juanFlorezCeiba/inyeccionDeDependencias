import UIKit

class ViewController: UIViewController {

    @IBOutlet var viewBackground: UIView!
    @IBOutlet weak var lblEsquemaConfiguracion: UILabel!
    
    let appDelegate: AppDelegate? = UIApplication.shared.delegate as? AppDelegate
    var usuarioDominio: UsuarioDominio!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.inicializarDominio()
        self.configuracionEsquemas()
        self.obtenerUsuario()
    }
    
    private func configuracionEsquemas() {
        #if Mocks
        self.configurarVistaPorEsquema(colorBackground: UIColor.orange, nombreEsquema: "Mocks")
        #elseif Dev
        self.configurarVistaPorEsquema(colorBackground: UIColor.red, nombreEsquema: "Dev")
        #else
        self.configurarVistaPorEsquema(colorBackground: UIColor.lightGray, nombreEsquema: "OTROS")
        #endif
    }
    
    
    private func configurarVistaPorEsquema(colorBackground: UIColor, nombreEsquema: String) {
        self.viewBackground.backgroundColor = colorBackground
        self.lblEsquemaConfiguracion.text = nombreEsquema
    }
    
    private func inicializarDominio() {
        usuarioDominio = UsuarioDominio(appDelegate: self.appDelegate!)
    }
    
    private func obtenerUsuario() {
        let usuario = usuarioDominio.obtenerUsuario()
        usuario.queEsquemaEs()
        print("El nombre del usuario es: \(usuario.nombre ?? "") y se obtuvo desde el esquema: \(usuario.esquema ?? "")")
        
    }

}

