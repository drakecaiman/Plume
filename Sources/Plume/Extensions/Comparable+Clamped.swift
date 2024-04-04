//  Comparable+Clamped.swift
//
//  Created by Duncan on 3/27/24.

extension Comparable {
    
    /**
     Clamps this value to the given range.
     
     - Parameters:
    	- range: The expected ``Swift.ClosedRange`` for this value.
     - Returns: This value clamped to the given range.
     */
    func clamped(to range: ClosedRange<Self>) -> Self
    {
        return range.clamp(self)
    }
}

extension Comparable where Self : Strideable, Self.Stride : SignedInteger
{
    /**
     Clamps this value to the given range.
     
     - Parameters:
        - range: The expected ``Swift.Range`` for this value.
     - Returns: This value clamped to the given range.
     */
    func clamped(to range: Range<Self>) -> Self
    {
        return range.clamp(self)
    }
}
