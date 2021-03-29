//
//  File.swift
//  
//
//  Created by Alex Trott on 28/03/2021.
//

import Foundation

public struct SentryConfig: InitializableConfig {
    
    public let dsn: String
    public let isDebug: Bool

    public init(
        dsn: String,
        isDebug: Bool
    ) {
        self.dsn = dsn
        self.isDebug = isDebug
    }
}
