//
//  pauseView.swift
//  pozi
//
//  Created by eduardo gersai  on 13/11/22.
//

import SwiftUI

struct pauseView: View {
    var body: some View {
        AnimacionPausaPrueba()
    }
}
struct AnimacionPausaPrueba: View {
    @State private var pos = CGPoint(x:200,y:650) // just for testing
    
    var body: some View {
        theButton.position(self.pos).highPriorityGesture(self.drag)
    }
    
    var theButton: some View {
        ZStack {
            Button {
               // print()
            } label: {
                Image("pause.circle.fill")
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


struct pauseView_Previews: PreviewProvider {
    static var previews: some View {
        pauseView()
    }
}
