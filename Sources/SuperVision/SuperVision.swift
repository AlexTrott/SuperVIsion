//
//  SuperVision.swift
//
//
//  Created by Alex Trott on 24/03/2021.
//

import Foundation

public class SuperVision {

    public var snitch: AnalyticsServicable

    public static let shared = SuperVision()

    private static var analyticConfig: InitializableConfig?

    private init() {
        guard let analyticConfig = SuperVision.analyticConfig else {
            fatalError("Error - you must call setup before accessing MySingleton.shared")
        }

        snitch = AnalyticsService(
            reporter: MixpanelService(config: analyticConfig)
        )
    }

    public class func setup(_ analyticConfig: InitializableConfig){
        SuperVision.analyticConfig = analyticConfig
    }
}
