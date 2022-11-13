//
//  estadosDeMonedaView.swift
//  pozi
//
//  Created by eduardo gersai  on 11/11/22.
//

import SwiftUI

struct estadosDeMonedaView: View {
    @State private var estadosDeCambio = CoinViewModel()
    var body: some View {
        ZStack {
            Button {
                estadosDeCambio.TCM()
            } label: {
                AnyView(estadosDeCambio.maquinaDeEstados.titulo)
            }
        }
    }
}

struct estadosDeMonedaView_Previews: PreviewProvider {
    static var previews: some View {
        estadosDeMonedaView()
    }
}
