//
//  Clamped.swift
//
//
//  Created by Duncan on 3/26/24.
//

import Foundation

/**
 `Clamped` restricts an input to a given `Range`.
 */
@propertyWrapper struct Clamped<Value : Comparable>
{
    /// The original value
    private var originalValue : Value
    /// The clamped value
    var wrappedValue: Value
    {
        set
        {
            self.originalValue = newValue
        }
        get
        {
            return range.clamp(self.originalValue)
        }
    }
    
    /**
     The restricting range for this property.
     */
    private let range : ClosedRange<Value>
    
    /**
     
     */
    init(wrappedValue: Value, range: Range<Value>) where Value : Strideable, Value.Stride : SignedInteger
    {
        self.init(wrappedValue: wrappedValue, range: ClosedRange(range))
    }
    /**
     
     */
    init(wrappedValue: Value, range: ClosedRange<Value>) {
        self.originalValue = wrappedValue
        self.range = range
    }
}
