//
//  Comparable+Clamped.swift
//
//
//  Created by Duncan on 3/27/24.
//

import Foundation

extension Comparable {
    func clamped(to range: ClosedRange<Self>) -> Self  {
        return range.clamp(self)
    }
}

extension Comparable where Self : Strideable, Self.Stride : SignedInteger {
    func clamped(to range: Range<Self>) -> Self {
        return range.clamp(self)
    }
}
