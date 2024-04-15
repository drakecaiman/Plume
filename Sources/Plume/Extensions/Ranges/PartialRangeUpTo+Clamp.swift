//
//  PartialRangeUpTo+Clamp.swift
//
//
//  Created by Duncan on 3/27/24.
//

/// Adds clamping functionality to `PartialRangeUpTo`.
extension PartialRangeUpTo : Clamping where Bound : Steppable
{
    /**
     Clamp a value to this range.
     
     - Parameters:
        - value: The value to clamp.
     - Returns: The value clamped to the bounds of this range.
     */
    public func clamp(_ value: Bound) -> Bound
    {
        return PartialRangeThrough(self.upperBound.steppedDown()).clamp(value)
    }
}
