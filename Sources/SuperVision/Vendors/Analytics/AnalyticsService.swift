//
//  AnalyticsService.swift
//  
//
//  Created by Alex Trott on 24/03/2021.
//

import Foundation

public typealias AnalyticsServicable = Initializable & AnalyticReporter

public class AnalyticsService: AnalyticsServicable {

    public var config: InitializableConfig?

    var initializable: Initializable
    let reporter: AnalyticReporter

    public init(
        config: InitializableConfig? = nil,
        initializable: Initializable = MixpanelInitlizer(),
        reporter: AnalyticReporter = MixpanelReporter()
    ) {
        self.config = config
        self.initializable = initializable
        self.reporter = reporter
    }

    public func initialize() {
        initializable.config = config
        initializable.initialize()
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
