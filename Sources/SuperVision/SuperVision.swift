//
//  SuperVision.swift
//
//
//  Created by Alex Trott on 24/03/2021.
//

import Foundation

public class SuperVision {

    public var snitch: AnalyticsServicable
    public var clue: CrashServicable

    public static let shared = SuperVision()

    private static var analyticConfig: InitializableConfig?

    private static var config: SuperVisionConfig?

    private init() {
        guard let config = SuperVision.config else {
            fatalError("SuperVision: No config Supplied")
        }

        let analyticConfig = config.analyticConfig.config
        let analyticManager = config.analyticConfig.manager
        snitch = AnalyticsService(reporter: analyticManager.reporter(with: analyticConfig))

        let crashConfig = config.crashConfig.config
        let crashManager = config.crashConfig.manager
        clue = CrashService(reporter: crashManager.reporter(with: crashConfig))
    }

    public class func setup(_ config: SuperVisionConfig){
        SuperVision.config = config
    }
}
