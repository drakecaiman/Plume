//
//  Range+Clamp.swift
//  
//
//  Created by Duncan on 3/27/24.
//

import Foundation

extension Range where Bound : Strideable, Bound.Stride : SignedInteger {
    func clamp(_ value: Bound) -> Bound {
        return ClosedRange(self).clamp(value)
    }
}
