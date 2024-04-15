//
//  Comparable+Steppable.swift
//
//
//  Created by Duncan on 4/14/24.
//

/// Support for ``Steppable`` is available for some instances of `Comparable`
extension Comparable where Self : Steppable, Self : Strideable, Self.Stride : SignedInteger {
    public func steppedUp() -> Self {
        return self.advanced(by: 1)
    }
    
    public func steppedDown() -> Self {
        return self.advanced(by: -1)
    }
}

// MARK: -
// Each inheriting, concrete type must explicitly declare `Steppable` since protocols cannot conform to another protocol

extension Int : Steppable {}
