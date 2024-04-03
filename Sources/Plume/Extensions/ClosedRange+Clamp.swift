//
//  ClosedRange+Clamp.swift
//  
//
//  Created by Duncan on 3/27/24.
//

import Foundation

extension ClosedRange
{
    /**
     
     */
    func clamp(_ value: Bound) -> Bound
    {
        return Swift.min(Swift.max(value, self.lowerBound), self.upperBound)
    }
}
