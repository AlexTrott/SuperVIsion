//
//  MixpanelInitlizer.swift
//  
//
//  Created by Alex Trott on 24/03/2021.
//

import Foundation
import Mixpanel

public class MixpanelService: AnalyticReporter {


    private var mixpanel: MixpanelInstance?

    required public init(config: InitializableConfig) {
        guard let config = config as? MixpanelConfig else { return }
        Mixpanel.initialize(token: config.token)
        self.mixpanel = Mixpanel.mainInstance()
        mixpanel?.serverURL = config.serverURL
        mixpanel?.loggingEnabled = config.loggingEnabled
    }

    public func track(_ event: Event, properties: [String: String]) {
        mixpanel?.track(event: event, properties: properties)
    }

    public func startTimer(_ event: Event) {
        mixpanel?.time(event: event)
    }

    public func stopTimer(_ event: Event) {
        mixpanel?.track(event: event)
    }
}
