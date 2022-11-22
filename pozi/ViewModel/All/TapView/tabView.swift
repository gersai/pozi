//
//  tabView.swift
//  pozi
//
//  Created by eduardo gersai  on 16/11/22.
//

import SwiftUI


struct tabView: View {
    var body: some View {
        TabView {
            
            menuView()
                .tabItem {
                    Label("fondo", systemImage: "moonphase.waning.crescent.inverse")
                }
            MonedaView()
                .tabItem {
                    Label("moneda", systemImage: "moonphase.new.moon")
                }
            RecorderView(audioRecorder1: AudioRecorder())
                .tabItem{
                    Label("record", systemImage: "moon")
                }
            
        }
        .background(.conicGradient(colors: [.red], center: UnitPoint()))
        .opacity(100.0)
        
    }
}

struct tabView_Previews: PreviewProvider {
    static var previews: some View {
        tabView()
    }
}
