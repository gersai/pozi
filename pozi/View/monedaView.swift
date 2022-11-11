//
//  Moneda.swift
//  pozi
//
//  Created by eduardo gersai  on 07/11/22.
//

import SwiftUI

struct Moneda: View {
    
  //  @State private var Esatdos = EstadosDeBoton()
    
   // @State private var estadosdeBoton = EstadosDelBoton()
    //@State  var EstadosDelBoton: EstadosDelBoton = String

   // @State private var gridColumns = Array(repeating: GridItem(.flexible()), count: 1)
    @State private var offset = CGSize.zero
    @State private var scaleFactor : CGFloat = 1
    @State private var isAnimating : Bool = false
    
    @State public var Imagen: String
    
    
    let springAnimation = Animation.spring(response: 0.4, dampingFraction: 0.5, blendDuration: 0.3)
    let animationSpeed : Double = 400
    let scaleIncrease = 0.2
    
    func resetValues() {
        scaleFactor = 1
        offset = .zero
    }
   /* public func EstadosDeBoton() -> some View {
        var Boton: String?
        
        switch Boton {
            
        case "Play" :
            return

            Button {
                print()
            } label: {
                Image("play")
            }
            
        case "Stop":
            return
            Button {
                print()
            } label: {
                Image("stop")
            }
            
        case "Pause":
            return
            Button {
                print()
            } label: {
                Image("pause")
            }
        case "Record":
            return
            Button {
                print()
            } label: {
                Image("record.circle")
            }
        case "Trash":
            return
            Button {
                print()
            } label: {
                Image("trash")
            }
        case "Tap":
            return
            Button {
                print()
            } label: {
                Image("hand.tap")
            }
        case "Up":
            return
            Button {
                print()
            } label: {
                Image("square.and.arrow.up")
            }
        case "Down":
            return
            Button {
                print()
            } label: {
                Image("arrow.down.app")
            }
            
        default:
            Button {
                print()
            } label: {
                Image("arrow.down.app")
            }        }
        return EstadosDeBoton()
    }*/

    var body: some View {
        GeometryReader { gp in
            VStack {
                VStack {
                    Button {
                        print()
                    } label: {
                        Image("moneda")
                            .resizable()
                            .frame(width:60, height: 50)
                            .offset(offset)
                            .scaleEffect(scaleFactor)
                    }
                    
                }
                .animation(.default, value: offset)
                .position(self.offset ?? CGPoint(x: gp.size.width / 2, y: gp.size.height / 2))
                .highPriorityGesture(  // << to do no action on drag !!
                    DragGesture()
                        .onChanged { self.offset = $0.location})
                
                //  EstadosDeBoton()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity) // full space
        }
    }
}
    /*
     func ZStack() {
     Image("Moneda")
     .offset(offset)
     .scaleEffect(scaleFactor)
     //  .animation(springAnimation.delay(Double(index) / animationSpeed), value: offset)
     
     
     }*/
    
    
   

struct Moneda_Previews: PreviewProvider {
    static var previews: some View {
        Moneda(Imagen: "Moneda")
    }
}
