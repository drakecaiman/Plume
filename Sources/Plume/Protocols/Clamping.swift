//
//  Clamping.swift
//
//
//  Created by Duncan on 4/10/24.
//

/**
 The `Clamping` protocol provides an interface for an object with a set of bounds to return values limited to within those bounds. This is primarily used in conjunction with the ``Clamped`` property wrapper to ensure the values of a given property do not exceed a given range.
 */
public protocol Clamping<Bound>
{
    /// A type that represents its bounds and their contained values/
    associatedtype Bound
    
//  MARK: -
//  MARK: Methods
    /**
     Clamp a value to this range.
     
     - Parameters:
    	- value: The value to clamp.
     - Returns: The value clamped to the bounds of this range.
     */
    func clamp(_ value: Bound) -> Bound
}
