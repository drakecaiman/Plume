//
//  FloatingPoint+Steppable.swift
//
//
//  Created by Duncan on 4/14/24.
//

/// Support for ``Steppable`` in `FloatingPoint`
extension FloatingPoint where Self : Steppable
{
    public func steppedUp() -> Self {
        return self.nextUp
    }
    
    public func steppedDown() -> Self {
        return self.nextDown
    }
}

extension Double : Steppable {}
