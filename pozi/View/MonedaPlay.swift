//
//  MonedaPlay.swift
//  pozi
//
//  Created by eduardo gersai  on 11/11/22.
//

import SwiftUI

struct MonedaPlay: View {
    var body: some View {
        Button {
            print()
        } label: {
            Image("bosque")
                .resizable()
            .frame(width:60, height: 50)    }
    }
}

struct MonedaPlay_Previews: PreviewProvider {
    static var previews: some View {
        MonedaPlay()
    }
}
