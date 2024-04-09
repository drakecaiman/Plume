//
//  PartialRangeUpTo+Clamp.swift
//
//
//  Created by Duncan on 3/27/24.
//

public extension PartialRangeUpTo
{
    /**
     Clamp a value to this range.
     
     - Parameters:
        - value: The value to clamp.
     - Returns: The value clamped to the bounds of this range.
     */
    func clamp(_ value: Bound) -> Bound where Bound : Strideable, Bound.Stride : SignedInteger
    {
        return PartialRangeThrough(self.upperBound.advanced(by: -1)).clamp(value)
    }
}
