//
//  AnalyticsService.swift
//  
//
//  Created by Alex Trott on 24/03/2021.
//

import Foundation


public class AnalyticsService: AnalyticReporter {

    private let reporter: AnalyticReporter

    required public init(
        config: InitializableConfig
    ) {
        self.reporter = MixpanelService(config: config)
    }

    public func track(_ event: Event, properties: [String : String] = [:]) {
        reporter.track(event, properties: properties)
    }

    public func startTimer(_ event: Event) {
        reporter.startTimer(event)
    }

    public func stopTimer(_ event: Event) {
        reporter.stopTimer(event)
    }
}
