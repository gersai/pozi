//
//  menuView.swift
//  pozi
//
//  Created by eduardo gersai  on 07/11/22.
//

import SwiftUI

struct menuView: View {
    var body: some View {

        Image("bosque")
            .resizable()
            .aspectRatio(UIImage(named: "bosque")!.size, contentMode: .fill)
            .edgesIgnoringSafeArea(.top)
        
    }
}


struct menuView_Previews: PreviewProvider {
    static var previews: some View {
        menuView()
    }
}

