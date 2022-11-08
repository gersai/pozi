//
//  tapView.swift
//  pozi
//
//  Created by eduardo gersai  on 07/11/22.
//

import SwiftUI

struct tabView: View {
    var body: some View {
        TabView {
            menuView()
                .tabItem {
                    Label("pozi", systemImage: "moonphase.waning.crescent.inverse")
                }
        }
    }
}

struct tabView_Previews: PreviewProvider {
    static var previews: some View {
        tabView()
    }
}
