//
//  MixpanelInitlizer.swift
//  
//
//  Created by Alex Trott on 24/03/2021.
//

import Foundation
import Mixpanel

public class MixpanelInitlizer: Initializable {

    public var config: InitializableConfig?
    private var mixpanel: MixpanelInstance

    public init(
        mixpanel: MixpanelInstance = Mixpanel.mainInstance()
    ) {
        self.mixpanel = mixpanel
    }

    public func initialize() {
        guard let config = config as? MixpanelConfig else { return }
        Mixpanel.initialize(token: config.token)
        mixpanel.serverURL = config.serverURL
        mixpanel.loggingEnabled = config.loggingEnabled
    }
}
