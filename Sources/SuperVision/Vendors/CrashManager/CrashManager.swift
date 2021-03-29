//
//  CrashManager.swift
//  
//
//  Created by Alex Trott on 28/03/2021.
//

import Foundation

public enum CrashManager {

    case sentry

    internal func reporter(with config: InitializableConfig) -> CrashReporter {
        switch self {
        case .sentry:
            return SentryService(config: config)
        }
    }
}
