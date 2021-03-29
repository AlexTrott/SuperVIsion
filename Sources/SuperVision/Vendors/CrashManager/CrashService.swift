//
//  File.swift
//  
//
//  Created by Alex Trott on 28/03/2021.
//

import Foundation

public protocol CrashServicable {

    init(reporter: CrashReporter)

    func report(crumb: CrashCrumb)
}

internal class CrashService: CrashServicable {

    private let reporter: CrashReporter

    required init(reporter: CrashReporter) {
        self.reporter = reporter
    }

    func report(crumb: CrashCrumb) {
        reporter.report(crumb: crumb)
    }
}
