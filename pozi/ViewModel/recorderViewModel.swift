//
//  File.swift
//  pozi
//
//  Created by eduardo gersai  on 07/11/22.
//


import Foundation
import SwiftUI
import Combine
import AVFoundation

class AudioRecorder: ObservableObject {
    
    
    let objectWillChange = PassthroughSubject<AudioRecorder, Never>()
    var audioRecorder: AVAudioRecorder!
    var recording = false {
        didSet {
            objectWillChange.send(self)
            
        }
    }
}


struct recorder: View {
    
    @ObservedObject var audioRecorder: AudioRecorder
    
    var body: some View {
        VStack {
            
            RecordingList(audioRecorder: AudioRecorder)
            
            if audioRecorder.recording == false {
                Button(action: {print("Start recording")}) {
                    Image(systemName: "circle.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 100, height: 100)
                        .clipped()
                        .foregroundColor(.red)
                        .padding(.bottom, 40)
                }
            } else {
                Button(action: {print("Stop recording)")}) {
                    Image(systemName: "stop.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 100, height: 100)
                        .clipped()
                        .foregroundColor(.red)
                        .padding(.bottom, 40)
                }
            }
        }
        .navigationBarTitle("Grabador de audios")
    }
}

struct recober_Previews: PreviewProvider {
    static var previews: some View {
        recorder(audioRecorder: AudioRecorder())
    }
}

