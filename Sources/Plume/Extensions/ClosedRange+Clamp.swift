//
//  ClosedRange+Clamp.swift
//  
//
//  Created by Duncan on 3/27/24.
//

public extension ClosedRange
{
    /**
     Clamp a value to this range.
     
     - Parameters:
        - value: The value to clamp.
     - Returns: The value clamped to the bounds of this range.
     */
    func clamp(_ value: Bound) -> Bound
    {
        return Swift.min(Swift.max(value, self.lowerBound), self.upperBound)
    }
}
