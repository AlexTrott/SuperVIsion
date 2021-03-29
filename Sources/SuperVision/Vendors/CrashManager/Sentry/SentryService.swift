//
//  File.swift
//  
//
//  Created by Alex Trott on 28/03/2021.
//

import Foundation
import Sentry

internal class SentryService: CrashReporter {

    private var sentry: SentryHub {
        return SentrySDK.currentHub()
    }

    required internal init(config: InitializableConfig) {
        guard let config = config as? SentryConfig else { return }
        SentrySDK.start { options in
            options.dsn = config.dsn
            options.debug = config.isDebug
        }
    }

    internal func report(crumb: CrashCrumb) {
        sentry.add(crumb.toSentryCrumb)
    }
}

fileprivate extension CrashCrumb {

    var toSentryCrumb: Breadcrumb {
        let crumb = Breadcrumb()
        crumb.level = self.level.toSentryCrumbLevel
        crumb.category = self.category
        crumb.message = self.message
        return crumb
    }
}

private extension CrashCrumbLevel {

    var toSentryCrumbLevel: SentryLevel {
        switch self {
        case .none:
            return .none
        case .debug:
            return .debug
        case .info:
            return .info
        case .warning:
            return .warning
        case .error:
            return .error
        case .fatal:
            return .fatal
        }
    }
}
