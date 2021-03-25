//
//  AnalyticsService.swift
//  
//
//  Created by Alex Trott on 24/03/2021.
//

import Foundation


public protocol AnalyticsServicable {

    init(reporter: AnalyticReporter)

    func track(_ event: Event, properties: [String: String])
    func startTimer(_ event: Event)
    func stopTimer(_ event: Event)
}

internal class AnalyticsService: AnalyticsServicable {

    private let reporter: AnalyticReporter

    required init(reporter: AnalyticReporter) {
        self.reporter = reporter
    }

    internal func track(_ event: Event, properties: [String : String] = [:]) {
        reporter.track(event, properties: properties)
    }

    internal func startTimer(_ event: Event) {
        reporter.startTimer(event)
    }

    internal func stopTimer(_ event: Event) {
        reporter.stopTimer(event)
    }
}
