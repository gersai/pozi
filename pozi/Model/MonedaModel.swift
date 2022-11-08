//
//  MonedaModel.swift
//  pozi
//
//  Created by eduardo gersai  on 07/11/22.
//

import Foundation
import UIKit


struct album {
   var EstadosDelBoton = "Play"
    
    switch EstadosDelBoton {        
    case "Play":
        Button {
            print()
        } label: {
            Image("play")
        }
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

/*
 play
 pause
 stop
 record.circle
 trash
 hand.tap
 square.and.arrow.up
 
 */




