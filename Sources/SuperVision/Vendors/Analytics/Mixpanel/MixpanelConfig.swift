//
//  MixpanelConfig.swift
//  
//
//  Created by Alex Trott on 24/03/2021.
//

import Foundation

public struct MixpanelConfig: InitializableConfig {
    let token: String
    let serverURL: String
    let loggingEnabled: Bool
}
