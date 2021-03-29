//
//  AnalyticReporter.swift
//  
//
//  Created by Alex Trott on 24/03/2021.
//

import Foundation

public protocol AnalyticReporter {

    init(config: InitializableConfig)
    
    func track(_ event: Event, properties: [String: String])
    func startTimer(_ event: Event)
    func stopTimer(_ event: Event)
}
