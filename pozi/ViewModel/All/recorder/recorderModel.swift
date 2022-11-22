//
//  recorderModel.swift
//  pozi
//
//  Created by eduardo gersai  on 21/11/22.
//

import Foundation
import Combine
import AVFoundation


class AudioRecorder: NSObject,ObservableObject {
    override init() {
        super.init()
        fetchRecordings()
    }
    
    let objectWillChange = PassthroughSubject<AudioRecorder,Never>()

    var audioRecorder: AVAudioRecorder!
    
    var recording = false {
        didSet {
            objectWillChange.send(self)
        }
    }
    func stopRecording() {
        audioRecorder.stop()
        recording = false
    }
    
   
    func startRecording() {
        let documentPath = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]
        let audioFilename = documentPath.appendingPathComponent("\(Date().toString(dateFormat: "dd-MM-YY_'at'_HH:mm:ss")).m4a")
        let secionDeGrabacion = AVAudioSession.sharedInstance()
        do {
            try secionDeGrabacion.setCategory(.playAndRecord, mode: .default)
            try secionDeGrabacion.setActive(true)
        } catch {
            print("la grabacion fallo ")
        }
        let settings = [
            AVFormatIDKey: Int(kAudioFormatMPEG4AAC),
            AVSampleRateKey: 12000,
            AVNumberOfChannelsKey: 1,
            AVEncoderAudioQualityKey: AVAudioQuality.high.rawValue
        ]
        do {
            audioRecorder = try AVAudioRecorder(url: audioFilename, settings: settings)
            audioRecorder.record()
            recording = true
        } catch {
            print("Could not start recording")
        }
    }
}

