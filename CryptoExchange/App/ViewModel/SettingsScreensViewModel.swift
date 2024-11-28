//
//  SettingsScreensViewModel.swift
//  CryptoExchange
//
//  Created by Yuri Cernov on 25/11/2024.
//

import Foundation
import Combine

class SettingsScreensViewModel: ObservableObject {
    
    //MARK: - Title
    
    class SettingsScreensTitleViewModel: ObservableObject {
        
        @Published var settingsScreensTitle: SettingsScreensTitle
        
        init(settingsScreensTitle: SettingsScreensTitle) {
            self.settingsScreensTitle = settingsScreensTitle
        }
        
        
        func updateSettingsScreensTitle(
            newSettingsScreensTitle: String
        ) {
            settingsScreensTitle = SettingsScreensTitle(settingsScreensTitle: newSettingsScreensTitle)
        }
        
    }
    
    //MARK: - Description
    
    class SettingsScreensDescriptionViewModel: ObservableObject {
        
        @Published var settingsScreensDescription: SettingsScreensDescription
        
        init(settingsScreensDescription: SettingsScreensDescription) {
            self.settingsScreensDescription = settingsScreensDescription
        }
        
        
        func updateSettingsScreensDescription(
            newSettingsScreensDescription: String
        ) {
            settingsScreensDescription = SettingsScreensDescription(settingsScreensDescription: newSettingsScreensDescription)
        }
        
    }
    
}
