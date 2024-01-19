//
//  ObservableVM.swift
//
//
//  Created by Daniel Moore on 1/19/24.
//

import Foundation

open class ObservableVM: Initializable
{
    required public init()
    {
    }
}

extension ObservableVM: Creatable
{
    @objc
    open class func create() -> Self {
        Self.init()
    }
}

extension ObservableVM: Identifiable
{
    public var id: ObjectIdentifier {
        ObjectIdentifier(self)
    }
}

extension ObservableVM: CustomStringConvertible
{
    public var description: String {
        self.id.debugDescription
    }
}

extension ObservableVM: Hashable
{
    public static func == (lhs: ObservableVM, rhs: ObservableVM) -> Bool {
        lhs.hashValue == rhs.hashValue
    }
    
    public func hash(into hasher: inout Hasher) {
        hasher.combine(self.id)
    }
}

