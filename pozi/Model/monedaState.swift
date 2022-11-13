//
//  File.swift
//  pozi
//
//  Created by eduardo gersai  on 11/11/22.
//

import Foundation
import SwiftUI

enum MaquinaDeEstados: Hashable {
    
    case inicial
    case grabando
    case grabado
    case empezar
    case descargar
    
    var titulo : any View {
        switch  self {
        case .inicial:
            return AnimacionPausaPrueba()
        case .grabando:
            return AnimacionDeMoneda()
        case .grabado:
            return AnimacionDeMoneda()
        case .empezar:
            return AnimacionDeMoneda()
        case .descargar:
            return AnimacionDeMoneda()
        }
    }
}

struct CoinViewModel {
    var maquinaDeEstados: MaquinaDeEstados = .inicial
    mutating func TCM() {
        switch maquinaDeEstados {
        case .inicial:
            maquinaDeEstados = .grabado
        case .grabando:
            maquinaDeEstados = .grabando
        case .grabado:
            maquinaDeEstados = .inicial
        case .empezar:
            maquinaDeEstados = .grabado
        default: break

        }
    }
    mutating func mandarAudio() {
        guard maquinaDeEstados == .inicial || maquinaDeEstados == .grabando else {
            return
        }
        maquinaDeEstados = .descargar
    }
}
/*
struct MonedaState: view {
    @State private var 
    var body: some View {
        
    }
}

 
 
 
 var titulo : Button<Label: View> {
 switch  self {
 case .inicial:
 return Button {
 } label: {
 Image("moneda")
 }
 
 
 

struct MonedaState_Preview: PreviewProvider {
    static var previews: some View {
        MonedaState()
    }
}
*/
