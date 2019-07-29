import UIKit

class ViewController: UIViewController {

    @IBOutlet var viewBackground: UIView!
    @IBOutlet weak var lblEsquemaConfiguracion: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configuracionEsquemas()
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


}

