//
//  recorderViewModel.swift
//  pozi
//
//  Created by eduardo gersai  on 21/11/22.
//

import Foundation
import Combine
import AVFoundation


struct Recording {
    var audioRecorder1 = AudioRecorder()
    let fileURL: URL
    let createdAt: Date
    
    var audioRecorder: AVAudioRecorder!
    
    var recordings = [Recording]()
    
    var recording = false {
        didSet {
            audioRecorder1.recording.objectWillChange.send(self)
        }
    }
    
  mutating  func fetchRecordings() {
        recordings.removeAll()
        
        let fileManager = FileManager.default
        let documentDirectory = fileManager.urls(for: .documentDirectory, in: .userDomainMask)[0]
        let directoryContents = try! fileManager.contentsOfDirectory(at: documentDirectory, includingPropertiesForKeys: nil)
        for audio in directoryContents {
            
        }
      recordings.sort(by: { $0.createdAt.compare($1.createdAt) == .orderedAscending})
      
      objectWillChange.send(self)
    }
    
    func getCreationDate(for file: URL) -> Date {
        if let attributes = try? FileManager.default.attributesOfItem(atPath: file.path) as [FileAttributeKey: Any],
           let creationDate = attributes[FileAttributeKey.creationDate] as? Date {
            return creationDate
        } else {
            return Date()
        }
        for audio in directoryContents {
            let recording = Recording(fileURL: audio, createdAt: getCreationDate(for: audio))
            recordings.append(recording)
        }
        func stopRecording() {
            audioRecorder.stop()
            recording = false
            
            fetchRecordings()
        }

    }
}
