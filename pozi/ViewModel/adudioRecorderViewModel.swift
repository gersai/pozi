//
//  adudioRecorderViewModel.swift
//  pozi
//
//  Created by eduardo gersai  on 07/11/22.
//

import Foundation
import SwiftUI
import AVFoundation

import Combine


struct RecordingList: View {
    
    @ObservedObject var audioRecorder: AudioRecorder
    
    class AudioRecorder: ObservableObject {
        
        
        let objectWillChange = PassthroughSubject<AudioRecorder, Never>()
        var audioRecorder: AVAudioRecorder!
        var recording = false {
            didSet {
                objectWillChange.send(self)
                
            }
        }
        
        
        func starRecobery() {
            let recordingSession = AVAudioSession.sharedInstance()
            do {
                try recordingSession.setCategory(.playAndRecord, mode: .default)
                try recordingSession.setActive(true)
            } catch {
                print("error de grabacion")
            }
            let documentPath = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]
            let audioFilename = documentPath.appendingPathComponent("\(Date().toString(dateFormat: "dd-MM-YY_'at'_HH:mm:ss")).m4a")
            
            func startRecording() {
                //...
                
                let settings = [
                    AVFormatIDKey: Int(kAudioFormatMPEG4AAC),
                    AVSampleRateKey: 12000,
                    AVNumberOfChannelsKey: 1,
                    AVEncoderAudioQualityKey: AVAudioQuality.high.rawValue
                ]
            }
            
            
        }
        
        do {
            audioRecorder = try AVAudioRecorder(url: audioFilename, settings: settings)
            audioRecorder.record()
            recording = true
        } catch {
            print("Could not start recording")
        }
        Button(action: {self.audioRecorder.startRecording()}) {
            Image(systemName: "circle.fill")
            //...
        }
    }
    var body: some View {
        NavigationView{
            VStack {
                RecordingList(audioRecorder: audioRecorder)
                
                List {
                    Text("lista vacia")
                }
            }
            .navigationBarTitle("Voice recorder")
        }
    }
}


struct RecordingList_Previews: PreviewProvider {
    static var previews: some View {
        RecordingList(audioRecorder: RecordingList.AudioRecorder)
    }
}

