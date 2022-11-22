
import Foundation



struct MonedaViewModel {
    
    var imagen: String {
        switch monedaModel {
            
      case .play:
            return "play"
      case .stop:
            return "stop"
      case .recorded:
            return "record.circle"
      case .recorder:
            return "record.circle"
      case .upload:
            return "arrow.up.circle"
        case .delate:
            return "trash"
        }
        return "moneda"
    }
    var monedaModel = MonedaModel.EstadosDeMoneda.play

   mutating func tapped() {
       
       switch monedaModel {
            
        case .play:
            monedaModel = .recorder
        case .stop:
            monedaModel = .delate
        case .recorded:
            monedaModel = .upload
        case .recorder:
            monedaModel = .play
        case .upload:
            monedaModel = .play
       case .delate:
           monedaModel = .play
       }
    func mandarAudio() {
           guard monedaModel == .play || monedaModel == .recorder else {
               return
           }
           monedaModel = .upload
       }
    }
}
    
  










