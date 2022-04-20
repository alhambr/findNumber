//
//  Settings.swift
//  findNumber
//
//  Created by Savchuk Vadym on 19.04.2022.
//

import Foundation

enum KeysUserDefaults{
    static let settingGame = "settingGame"
}

struct SettingsGame:Codable{
    var timerState: Bool
    var timeForGame:Int
}

class Settings{
    
    static var shared = Settings()
    private let defaultSettings = SettingsGame(timerState: true, timeForGame: 30)
    var currentSettings:SettingsGame{
        get {
            if let data = UserDefaults.standard.object(forKey: KeysUserDefaults.settingGame) as? Data {
                return try! PropertyListDecoder().decode(SettingsGame.self, from: data)
            } else {
                if let data = try? PropertyListEncoder().encode(defaultSettings) {
                    UserDefaults.standard.setValue(data, forKey: KeysUserDefaults.settingGame)
                }
                return defaultSettings
            }
        
        }
        set {
            if let data = try? PropertyListEncoder().encode(newValue) {
                UserDefaults.standard.setValue(data, forKey: KeysUserDefaults.settingGame)
            }
        }
    }
    
    func resetSettings(){
        currentSettings = defaultSettings
        
    }
    
    
}
