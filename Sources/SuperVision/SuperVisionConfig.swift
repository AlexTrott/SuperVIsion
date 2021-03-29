//
//  File.swift
//  
//
//  Created by Alex Trott on 28/03/2021.
//

import Foundation

public struct SuperVisionConfig {
    public typealias AnalyticConfig = (manager: AnalyticManager, config: InitializableConfig)
    public typealias CrashConfig = (manager: CrashManager, config: InitializableConfig)

    public let analyticConfig: AnalyticConfig
    public let crashConfig: CrashConfig

    public init(
        analyticConfig: AnalyticConfig,
        crashConfig: CrashConfig
    ) {
        self.analyticConfig = analyticConfig
        self.crashConfig = crashConfig
    }
}
