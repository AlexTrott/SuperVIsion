//
//  InitializableInitializable.swift
//  
//
//  Created by Alex Trott on 24/03/2021.
//

import Foundation

public protocol Initializable {

    var config: InitializableConfig? { get set }

    func initialize()
}

public protocol InitializableConfig { }

public extension Array where Element == Initializable {
    func initialize() {
        for element in self {
            element.initialize()
        }
    }
}
