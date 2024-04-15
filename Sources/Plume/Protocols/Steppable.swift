//
//  Steppable.swift
//
//
//  Created by Duncan on 4/14/24.
//

/**
 Protocol for values that can be incremented or decremented.
 
 This protocol facilitates the use of `Clamping` ranges with open bounds that are not included in the range. This allows values that can provide the next closest value higher or lower than itself to clamp on open ranges.
 */
public protocol Steppable {
    /**
     Provides the next, greater value.
     
     - Returns: A value that is the lowest value of all values greater than this one.
     */
    func steppedUp() -> Self
    
    /**
     Provides the next, lower value.
     
     - Returns: A value that is the greatest value of all values less than this one.
     */    
    func steppedDown() -> Self
}
