//
//  SimpleSound.swift
//  AnimalSounds
//
//  Created by Дубынин Семён on 02.06.2020.
//  Copyright © 2020 Дубынин Семён. All rights reserved.
//

import Foundation
import AudioToolbox

class SimpleSound {
    
    private var soundID: SystemSoundID = 0
    
    public init(named name: String) {
        if let soundURL = soundURL(forName: name){
            let status = AudioServicesCreateSystemSoundID(soundURL as CFURL, &soundID)
            if status != noErr {
                print("Unable to create at URL: '\(name)'")
            }
        }
    }
    
    public func play() {
        if soundID != 0 {
            AudioServicesPlaySystemSound(soundID)
        }
    }
    
    private func soundURL(forName name: String) -> URL? {
        let fileExtensions = ["m4a", "wav", "mp3", "acc", "adts", "aif", "aiff", "aifc", "caf", "mp4"]
        for fileExtensions in fileExtensions {
            if let soundURL = Bundle.main.url(forResource: name, withExtension: fileExtensions){
                return soundURL
            }
        }
        print("Unable to file sound file with name '\(name)'")
        return nil
    }
    deinit {
        if soundID != 0 {
            AudioServicesDisposeSystemSoundID(soundID)
        }
    }
}
