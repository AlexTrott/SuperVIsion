//
//  File.swift
//  
//
//  Created by Alex Trott on 28/03/2021.
//

import Foundation

public enum CrashCrumbLevel {
    case none
    case debug
    case info
    case warning
    case error
    case fatal
}

public struct CrashCrumb {
    public let level: CrashCrumbLevel
    public let category: String
    public let message: String

    public init(
        level: CrashCrumbLevel,
        category: String,
        message: String
    ) {
        self.level = level
        self.category = category
        self.message = message
    }

}
