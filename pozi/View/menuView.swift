//
//  menuView.swift
//  pozi
//
//  Created by eduardo gersai  on 07/11/22.
//

import SwiftUI

struct menuView: View {
    var body: some View {
        Text("")
            .background(
        Image("bosque")
            .resizable()
            .scaledToFill()
            .edgesIgnoringSafeArea(.all)
            .safeAreaInset(edge: .top, spacing: 0) {
                Color.clear.frame(height: 0)
            }
            .safeAreaInset(edge: .bottom, spacing: 0) {
                Color.clear.frame(height: 0)
            }
        )
    }
}

struct menuView_Previews: PreviewProvider {
    static var previews: some View {
        menuView()
    }
}

