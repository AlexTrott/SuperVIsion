//
//  File.swift
//  
//
//  Created by Alex Trott on 28/03/2021.
//

import Foundation

public protocol CrashReporter {
    init(config: InitializableConfig)

    func report(crumb: CrashCrumb)
}
