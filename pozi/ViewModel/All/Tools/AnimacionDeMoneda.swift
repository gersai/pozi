//
//  AnimacionDeMoneda.swift
//  pozi
//
//  Created by eduardo gersai  on 17/11/22.
//

import SwiftUI

struct AnimacionDeMoneda: View {
    @State private var pos = CGPoint(x:200,y:650)

    var body: some View {
        theButton.position(self.pos).highPriorityGesture(self.drag)
    }
    var theButton: some View {
        ZStack {
            Button {
                // print()
            } label: {
                Image("moneda")
                    .resizable()
                    .frame(width:60, height: 50)
            }
        }
    }
    
    func performAction(){
        print("button pressed")
    }
    
    var drag: some Gesture {
        DragGesture().onChanged { value in self.pos = CGPoint(x: value.location.x, y: value.location.y)}
    }
}


struct AnimacionDeMoneda_Previews: PreviewProvider {
    static var previews: some View {
        AnimacionDeMoneda()
    }
}
