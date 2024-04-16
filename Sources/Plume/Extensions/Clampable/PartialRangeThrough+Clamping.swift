//
//  PartialRangeThrough+Clamping.swift
//
//
//  Created by Duncan on 3/27/24.
//

/// Adds clamping functionality to `PartialRangeThrough`.
extension PartialRangeThrough : Clamping
{
    /**
     Clamp a value to this range.
     
     - Parameters:
        - value: The value to clamp.
     - Returns: The value clamped to the bounds of this range.
     */
    public func clamp(_ value: Bound) -> Bound
    {
        return Swift.min(value, self.upperBound)
    }
}
