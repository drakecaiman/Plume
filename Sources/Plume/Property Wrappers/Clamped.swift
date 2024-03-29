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
        didSet { self.wrappedValue = range.clamp(wrappedValue) }
    }
    
    private let range : ClosedRange<Value>
    
    init(wrappedValue: Value, range: Range<Value>) where Value : Strideable, Value.Stride : SignedInteger
    {
        self.init(wrappedValue: wrappedValue, range: ClosedRange(range))
    }
    
    init(wrappedValue: Value, range: ClosedRange<Value>) {
        self.range = range
        self.wrappedValue = range.clamp(wrappedValue)
    }
}
