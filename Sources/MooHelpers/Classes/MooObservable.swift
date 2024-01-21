//
//  ObservableVM.swift
//
//
//  Created by Daniel Moore on 1/19/24.
//

import Foundation

open class MooObservable: Initializable
{
    required public init()
    {
    }
}

extension MooObservable: Creatable
{
    @objc
    open class func create() -> Self {
        Self.init()
    }
}

extension MooObservable: Identifiable
{
    public var id: ObjectIdentifier {
        ObjectIdentifier(self)
    }
}

extension MooObservable: CustomStringConvertible
{
    public var description: String {
        self.id.debugDescription
    }
}

extension MooObservable: Hashable
{
    public static func == (lhs: MooObservable, rhs: MooObservable) -> Bool {
        lhs.hashValue == rhs.hashValue
    }
    
    public func hash(into hasher: inout Hasher) {
        hasher.combine(self.id)
    }
}

