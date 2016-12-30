//
//  SettingsHistory.swift
//  Sudoku
//
//  Created by Dev on 22/02/16.
//  Copyright © 2016 LA. All rights reserved.
//

import Foundation

struct SettingsHistory {
    
    static let kSound = "kSound"
    static let kMelody = "kMelody"
    
    func saveSoundOn (_ value: Bool) {
        UDWrapper.setBool(SettingsHistory.kSound, value: value)
    }
    
    func saveMelodyOff (_ value: Bool) {
        UDWrapper.setBool(SettingsHistory.kMelody, value: value)
    }
    
    func loadMelodyState () -> Bool {
        return UDWrapper.getBool(SettingsHistory.kMelody, defaultValue: true)
    }
    func loadSoundState () -> Bool {
        return UDWrapper.getBool(SettingsHistory.kSound, defaultValue: true)
    }
}
