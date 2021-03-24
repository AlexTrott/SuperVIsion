//
//  SuperVision.swift
//
//
//  Created by Alex Trott on 24/03/2021.
//

import Foundation

public class SuperVision {

    public static let shared = SuperVision()

    public var snitch: AnalyticsServicable

    public init(
        analyticsService: AnalyticsServicable = AnalyticsService()
    ) {
        self.snitch = analyticsService
    }

    public func enableSnitch(with config: InitializableConfig) {
        snitch.config = config
        snitch.initialize()
    }
}

