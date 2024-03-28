//
//  Clamped.swift
//
//
//  Created by Duncan on 3/26/24.
//

import Foundation

/**
 `Clamped` restricts an input to a given range.
 */
@propertyWrapper struct Clamped<Value : Comparable>
{
    var wrappedValue: Value
    {
        didSet
        {
            switch range
            {
                case .open(range: let openRange):
//              TODO: Replace with use of `Range.clamp()`
                wrappedValue = openRange.lowerBound
//                wrappedValue = openRange.clamp(wrappedValue)
                case .closed(range: let closedRange):
                wrappedValue = closedRange.clamp(wrappedValue)
            }
        }
    }
    
    enum RangeType {
        typealias SignedIntegerStrideableBound = Value where Value : Strideable, Value.Stride : SignedInteger
//        case open(range: Range<SignedIntegerStrideableBound>)
        case open(range: Range<Value>)
        case closed(range: ClosedRange<Value>)
    }
    let range : RangeType
    
    init(wrappedValue: Value, range: Range<Value>) {
        self.wrappedValue = wrappedValue
        self.range = .open(range: range)
    }
    
    init(wrappedValue: Value, range: ClosedRange<Value>) {
        self.wrappedValue = wrappedValue
        self.range = .closed(range: range)
    }
}
