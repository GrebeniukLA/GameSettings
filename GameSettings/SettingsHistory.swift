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
    
    public func saveSoundOn (_ value: Bool) {
        UDWrapper.setBool(SettingsHistory.kSound, value: value)
    }
    
    public func saveMelodyOff (_ value: Bool) {
        UDWrapper.setBool(SettingsHistory.kMelody, value: value)
    }
    
    public func loadMelodyState () -> Bool {
        return UDWrapper.getBool(SettingsHistory.kMelody, defaultValue: true)
    }
    public func loadSoundState () -> Bool {
        return UDWrapper.getBool(SettingsHistory.kSound, defaultValue: true)
    }
}
