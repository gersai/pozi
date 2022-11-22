//
//  recorderView.swift
//  pozi
//
//  Created by eduardo gersai  on 21/11/22.
//

import Foundation
import SwiftUI
import Combine
import AVFoundation


struct RecorderView: View {
    @State private var audioRecorder = AudioRecorder()
    @ObservedObject var audioRecorder1: AudioRecorder
    var audioURL: URL
    
    var body: some View {
        HStack {
            Text("\(audioURL.lastPathComponent)")
            Spacer()
            
            
            // let recorderView = RecorderView(audioRecorder: AudioRecorder())
            
            List {
                ForEach(audioRecorder.recordings, id: \.createdAt) { recording in
                    RecordingRow(audioURL: recording.fileURL)
                }
            }
                NavigationView {
                    VStack {
                        if audioRecorder.recording == false {
                            Button(action: {print("comienza a grabar")}) {
                                Image(systemName: "circle.fill")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 100, height: 100)
                                    .clipped()
                                    .foregroundColor(.red)
                                    .padding(.bottom, 40)
                            }
                        } else {
                            Button(action: {print("para de grabar)")}) {
                                Image(systemName: "stop.fill")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 100, height: 100)
                                    .clipped()
                                    .foregroundColor(.red)
                                    .padding(.bottom, 40)
                            }
                        }
                        Button(action: {self.audioRecorder.startRecording()}) {
                            Image(systemName: "circle.fill")
                            //...
                        }
                    }
                    .navigationBarTitle("grabador de voz")
                }
            }
        }
        struct recorderView_Previews: PreviewProvider {
            static var previews: some View {
                RecorderView(audioRecorder1: AudioRecorder())
        }
    }
}
