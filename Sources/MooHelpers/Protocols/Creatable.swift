//
//  File.swift
//
//
//  Created by Daniel Moore on 1/19/24.
//

import Foundation

public protocol Creatable: Hashable, Identifiable, Initializable {
    static func create() -> Self
}
