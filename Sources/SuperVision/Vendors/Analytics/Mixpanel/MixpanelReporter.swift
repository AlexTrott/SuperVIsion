//
//  MixpanelReporter.swift
//  
//
//  Created by Alex Trott on 24/03/2021.
//

import Foundation
import Mixpanel

public class MixpanelReporter: AnalyticReporter {

    private var mixpanel: MixpanelInstance

    public init(
        mixpanel: MixpanelInstance = Mixpanel.mainInstance()
    ) {
        self.mixpanel = mixpanel
    }

    public func track(_ event: Event, properties: [String: String]) {
        mixpanel.track(event: event, properties: properties)
    }

    public func startTimer(_ event: Event) {
        mixpanel.time(event: event)
    }

    public func stopTimer(_ event: Event) {
        mixpanel.track(event: event)
    }
}
