//  Comparable+Clamped.swift
//
//  Created by Duncan on 3/27/24.

/// Support for clamping on supported types.
public extension Comparable
{
    /**
     Clamps this value to the given range.
     
     - Parameters:
        - range: The expected ``Clamping`` range for this value.
     - Returns: This value clamped to the given range.
     */
    func clamped(to range: any Clamping<Self>) -> Self
    {
        return range.clamp(self)
    }
}
