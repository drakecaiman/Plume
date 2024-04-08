//
//  PartialRangeFromClampTests.swift
//  
//
//  Created by Duncan on 4/1/24.
//

import XCTest

final class PartialRangeFromClampTests: XCTestCase {
    static let intRange = 0...
    static let floatRange : PartialRangeFrom<Float> = 2.4...
    static let characterRange : PartialRangeFrom<Character> = "A"...

    func testIntPartialRangeFromClampInRange()
    {
        let initialValue = 15709
        let result = PartialRangeFromClampTests.intRange.clamp(initialValue)
        XCTAssertEqual(initialValue, result, "Clamping result \(result) should equal initial in-range value \(initialValue)")
    }
    
    func testIntPartialRangeFromClampBelowRange()
    {
        let initialValue = -34
        let result = PartialRangeFromClampTests.intRange.clamp(initialValue)
        XCTAssertNotEqual(initialValue, result, "Clamping result \(result) should not equal initial in-range value \(initialValue).")
        let expected = PartialRangeFromClampTests.intRange.lowerBound
        XCTAssertEqual(result, expected, "Clamping result \(result) should equal expected value \(expected).")
    }
    
    func testIntPartialRangeFromClampOnLowerBound()
    {
        let initialValue = PartialRangeFromClampTests.intRange.lowerBound
        let result = PartialRangeFromClampTests.intRange.clamp(initialValue)
        XCTAssertEqual(initialValue, result, "Clamping result \(result) should equal initial in-range value \(initialValue)")
    }
    
    func testFloatPartialRangeFromClampInRange()
    {
        let initialValue : Float = 2453.245
        let result = PartialRangeFromClampTests.floatRange.clamp(initialValue)
        XCTAssertEqual(initialValue, result, "Clamping result \(result) should equal initial in-range value \(initialValue)")
    }
    
    func testFloatPartialRangeFromClampBelowRange()
    {
        let initialValue : Float = -185.4
        let result = PartialRangeFromClampTests.floatRange.clamp(initialValue)
        XCTAssertNotEqual(initialValue, result, "Clamping result \(result) should not equal initial in-range value \(initialValue).")
        let expected = PartialRangeFromClampTests.floatRange.lowerBound
        XCTAssertEqual(result, expected, "Clamping result \(result) should equal expected value \(expected).")
    }
    
    func testFloatPartialRangeFromClampOnLowerBound()
    {
        let initialValue : Float = PartialRangeFromClampTests.floatRange.lowerBound
        let result = PartialRangeFromClampTests.floatRange.clamp(initialValue)
        XCTAssertEqual(initialValue, result, "Clamping result \(result) should equal initial in-range value \(initialValue)")
    }
    
    func testCharacterPartialRangeFromClampInRange()
    {
        let initialValue : Character = "F"
        let result = PartialRangeFromClampTests.characterRange.clamp(initialValue)
        XCTAssertEqual(initialValue, result, "Clamping result \(result) should equal initial in-range value \(initialValue)")
    }
    
    func testCharacterPartialRangeFromClampBelowRange()
    {
        let initialValue : Character = "1"
        let result = PartialRangeFromClampTests.characterRange.clamp(initialValue)
        XCTAssertNotEqual(initialValue, result, "Clamping result \(result) should not equal initial in-range value \(initialValue).")
        let expected = PartialRangeFromClampTests.characterRange.lowerBound
        XCTAssertEqual(result, expected, "Clamping result \(result) should equal expected value \(expected).")
    }
    
    func testCharacterPartialRangeFromClampOnLowerBound()
    {
        let initialValue : Character = PartialRangeFromClampTests.characterRange.lowerBound
        let result = PartialRangeFromClampTests.characterRange.clamp(initialValue)
        XCTAssertEqual(initialValue, result, "Clamping result \(result) should equal initial in-range value \(initialValue)")
    }
}
