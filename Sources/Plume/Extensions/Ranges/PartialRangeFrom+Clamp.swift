//
//  PartialRangeFrom+Clamp.swift
//  
//
//  Created by Duncan on 3/27/24.
//

public extension PartialRangeFrom
{
    /**
     Clamp a value to this range.
     
     - Parameters:
        - value: The value to clamp.
     - Returns: The value clamped to the bounds of this range.
     */
    func clamp(_ value: Bound) -> Bound
    {
        return Swift.max(value, self.lowerBound)
    }
}
