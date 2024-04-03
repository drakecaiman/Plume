//  Clamped.swift
//
//  Created by Duncan on 3/26/24.

import Foundation

/**
 Property wrapper that restricts input to a given range.
 
 `Clamped` takes a range of ``Swift.Comparable`` values and ensures that any value assigned to falls within it. Values less than the lower bound of the range will be set to the lower bound, while values greater than the range's upper bound will be set to the highest included value of the range (either the upper bound for a closed range or the next highest value for a half-open range).
 */
@propertyWrapper struct Clamped<Value : Comparable>
{
//	MARK: Properties
///	The unclamped, originally input value.
    private var originalValue : Value
///	The enclosing range for the underlying property's values.
    private let range : ClosedRange<Value>
    
//	MARK: Property Wrapper Conformance
///	The clamped value.
    var wrappedValue: Value
    {
        set { self.originalValue = newValue }
        get { self.range.clamp(self.originalValue) }
    }
    
//	MARK: -
//	MARK: Initializers
    /**
     Creates a property wrapper that restricts the underlying value to a given closed range.
     
     - Parameters:
     	- wrappedValue: The initial property value.
     	- range: The clamping ``Swift.ClosedRange`` for this property.
     - Returns: A new property wrapper that restricts the underlying value to the provided range.
     */
    init(wrappedValue: Value, range: ClosedRange<Value>) {
        self.originalValue = wrappedValue
        self.range = range
    }
    
    /**
     Creates a property wrapper that restricts the underlying value to a given half-open range.
     
     A new `Clamped` property wrapper can be created from a ``Range`` as long as ``Range.Bound`` conforms to ``Strideable`` and  ``Range.Bound.Stride`` is of type ``SignedInteger``.
     - Parameters:
         - wrappedValue: The initial property value.
         - range: The clamping ``Swift.Range`` for this property.
     - Returns: A new property wrapper that restricts the underlying value to the provided range.
     */
    init(wrappedValue: Value, range: Range<Value>) where Value : Strideable, Value.Stride : SignedInteger
    {
        self.init(wrappedValue: wrappedValue, range: ClosedRange(range))
    }
}
