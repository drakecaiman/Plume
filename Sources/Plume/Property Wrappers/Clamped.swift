//  Clamped.swift
//
//  Created by Duncan on 3/26/24.

/**
 Property wrapper that restricts input to a given range.
 
 `Clamped` takes a range of ``Swift/Comparable`` values and ensures that any value assigned to it falls within that range. Values less than the lower bound of the range will be set to the lower bound, while values greater than the range's upper bound will be set to the highest included value of the range (either the upper bound for a closed range or the next highest value for a half-open range).
 
 @Snippet(path: "Plume/Snippets/ClampedSnippet")
 */
@propertyWrapper public struct Clamped<Value : Comparable>
{
//	MARK: Properties
///	The unclamped, originally input value.
    private var originalValue : Value
///	The enclosing range (or other  type that conforms to ``Clamping``) for the underlying property's values.
    private let range : any Clamping<Value>
    
//	MARK: Property Wrapper Conformance
///	The clamped value.
    public var wrappedValue: Value
    {
        set { self.originalValue = newValue }
        get { self.range.clamp(self.originalValue) }
    }
    
//	MARK: -
    
    /**
     Errors pertaining to the creation of new `@Clamped` instances
     */
    public enum ClampedInitError : Error {
        /// Neither a lower nor upper bound was provided
        case noBounds
    }
    
//	MARK: Initializers
    /**
     Creates a property wrapper that restricts the underlying value to a provided interval.
     
     - Parameters:
        - wrappedValue: The initial property value.
        - range: A ``Clamping`` value, typically a range.
     - Returns: A new property wrapper that restricts the underlying value to the provided range.
     */
    public init(wrappedValue: Value, range: any Clamping<Value>)
    {
        self.originalValue = wrappedValue
        self.range = range
    }
    
    public init(wrappedValue: Value, from lowerBound: Value? = nil, to upperBound: Value? = nil) throws
    {
        self.originalValue = wrappedValue
        switch (lowerBound, upperBound)
        {
        case (let lowerBound?, let upperBound?):
            self.range = lowerBound...upperBound
            return
        case (let lowerBound?, nil):
            self.range = lowerBound...
        case (nil, let upperBound?):
            self.range = ...upperBound
        default:
            throw ClampedInitError.noBounds
        }
    }
    
    public init(wrappedValue: Value, from lowerBound: Value? = nil, upTo upperBound: Value? = nil) throws
    where Value : Strideable, Value.Stride : SignedInteger
    {
        self.originalValue = wrappedValue
        switch (lowerBound, upperBound)
        {
        case (let lowerBound?, let upperBound?):
            self.range = lowerBound..<upperBound
            return
        case (let lowerBound?, nil):
            self.range = lowerBound...
        case (nil, let upperBound?):
            self.range = ..<upperBound
        default:
            throw ClampedInitError.noBounds
        }
    }
}
