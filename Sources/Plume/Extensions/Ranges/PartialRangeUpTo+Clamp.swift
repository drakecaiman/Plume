//
//  PartialRangeUpTo+Clamp.swift
//
//
//  Created by Duncan on 3/27/24.
//

extension PartialRangeUpTo : Clamping where Bound : Strideable, Bound.Stride : SignedInteger
{
    /**
     Clamp a value to this range.
     
     - Parameters:
        - value: The value to clamp.
     - Returns: The value clamped to the bounds of this range.
     */
    public func clamp(_ value: Bound) -> Bound
    {
        return PartialRangeThrough(self.upperBound.advanced(by: -1)).clamp(value)
    }
}
