//
//  Moneda.swift
//  pozi
//
//  Created by eduardo gersai  on 07/11/22.
//

import SwiftUI

struct Moneda: View {
    
    @State private var gridColumns = Array(repeating: GridItem(.flexible()), count: 15)
    @State private var offset = CGSize.zero
    @State private var scaleFactor : CGFloat = 1
    @State private var isAnimating : Bool = false
    
    @State public var Imagen: String

    
    let springAnimation = Animation.spring(response: 0.4, dampingFraction: 0.5, blendDuration: 0.3)
    /*#-code-walkthrough(1.movingGrid)*/
    let numCircles = 375
    /*#-code-walkthrough(1.movingGrid)*/
    let animationSpeed : Double = 400
    let scaleIncrease = 0.2
    
    func resetValues() {
        scaleFactor = 1
        offset = .zero
    }
    
    var body: some View {
        Button {
            print()
        } label: {
            Image("moneda")
                .resizable()
                .frame(width:50, height: 50)
                .offset(offset)
                .scaleEffect(scaleFactor)
        }
    }
    /*
    func ZStack() {
        Image("Moneda")
            .offset(offset)
            .scaleEffect(scaleFactor)
          //  .animation(springAnimation.delay(Double(index) / animationSpeed), value: offset)
        
        
    }*/
    switch EstadosDelBoton {
    case "Play":
        
    case "Stop":
        Button {
            print()
        } label: {
            Image("stop")
        }
    case "Pause":
        Button {
            print()
        } label: {
            Image("pause")
        }
    case "Record":
        Button {
            print()
        } label: {
            Image("record.circle")
        }
    case "Trash":
        Button {
            print()
        } label: {
            Image("trash")
        }
    case "Tap":
        Button {
            print()
        } label: {
            Image("hand.tap")
        }
    case "Up":
        Button {
            print()
        } label: {
            Image("square.and.arrow.up")
        }
    case "Down":
        Button {
            print()
        } label: {
            Image("arrow.down.app")
        }
        
    default:
        print("Have you done something new?")
    }
}



struct Moneda_Previews: PreviewProvider {
    static var previews: some View {
        Moneda(Imagen: "Moneda")
    }
}
