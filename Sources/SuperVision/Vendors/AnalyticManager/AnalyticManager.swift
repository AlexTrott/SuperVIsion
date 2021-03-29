//
//  AnalyticManager.swift
//  
//
//  Created by Alex Trott on 28/03/2021.
//

import Foundation

public enum AnalyticManager {
    
    case mixpanel

    internal func reporter(with config: InitializableConfig) -> AnalyticReporter {
        switch self {
        case .mixpanel:
            return MixpanelService(config: config)
        }
    }
}
