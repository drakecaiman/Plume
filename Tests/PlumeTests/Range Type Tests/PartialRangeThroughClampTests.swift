//
//  PartialRangeThroughClampTests.swift
//
//
//  Created by Duncan on 4/1/24.
//

import XCTest

final class PartialRangeThroughClampTests: XCTestCase {
    static let intRange = ...100
    static let floatRange : PartialRangeThrough<Float> = ...10742.032
    static let characterRange : PartialRangeThrough<Character> = ..."k"

    func testIntPartialRangeThroughClampInRange()
    {
        let initialValue = 27
        let result = PartialRangeThroughClampTests.intRange.clamp(initialValue)
        XCTAssertEqual(initialValue, result, "Clamping result \(result) should equal initial in-range value \(initialValue)")
    }
    
    func testIntPartialRangeThroughClampAboveRange()
    {
        let initialValue = 514
        let result = PartialRangeThroughClampTests.intRange.clamp(initialValue)
        XCTAssertNotEqual(initialValue, result, "Clamping result \(result) should not equal initial in-range value \(initialValue).")
        let expected = PartialRangeThroughClampTests.intRange.upperBound
        XCTAssertEqual(result, expected, "Clamping result \(result) should equal expected value \(expected).")
    }
    
    func testIntPartialRangeThroughClampOnUpperBound()
    {
        let initialValue = PartialRangeThroughClampTests.intRange.upperBound
        let result = PartialRangeThroughClampTests.intRange.clamp(initialValue)
        XCTAssertEqual(initialValue, result, "Clamping result \(result) should equal initial in-range value \(initialValue)")
    }
    
    func testFloatPartialRangeThroughClampInRange()
    {
        let initialValue : Float = 5125.34
        let result = PartialRangeThroughClampTests.floatRange.clamp(initialValue)
        XCTAssertEqual(initialValue, result, "Clamping result \(result) should equal initial in-range value \(initialValue)")
    }
    
    func testFloatPartialRangeThroughClampAboveRange()
    {
        let initialValue : Float = 20435.412
        let result = PartialRangeThroughClampTests.floatRange.clamp(initialValue)
        XCTAssertNotEqual(initialValue, result, "Clamping result \(result) should not equal initial in-range value \(initialValue).")
        let expected = PartialRangeThroughClampTests.floatRange.upperBound
        XCTAssertEqual(result, expected, "Clamping result \(result) should equal expected value \(expected).")
    }
    
    func testFloatPartialRangeThroughClampOnUpperBound()
    {
        let initialValue = PartialRangeThroughClampTests.floatRange.upperBound
        let result = PartialRangeThroughClampTests.floatRange.clamp(initialValue)
        XCTAssertEqual(initialValue, result, "Clamping result \(result) should equal initial in-range value \(initialValue)")
    }
    
    func testCharacterPartialRangeThroughClampInRange()
    {
        let initialValue : Character = "B"
        let result = PartialRangeThroughClampTests.characterRange.clamp(initialValue)
        XCTAssertEqual(initialValue, result, "Clamping result \(result) should equal initial in-range value \(initialValue)")
    }
    
    func testCharacterPartialRangeThroughClampAboveRange()
    {
        let initialValue : Character = "t"
        let result = PartialRangeThroughClampTests.characterRange.clamp(initialValue)
        XCTAssertNotEqual(initialValue, result, "Clamping result \(result) should not equal initial in-range value \(initialValue).")
        let expected = PartialRangeThroughClampTests.characterRange.upperBound
        XCTAssertEqual(result, expected, "Clamping result \(result) should equal expected value \(expected).")
    }
    
    func testCharacterPartialRangeThroughClampOnUpperBound()
    {
        let initialValue = PartialRangeThroughClampTests.characterRange.upperBound
        let result = PartialRangeThroughClampTests.characterRange.clamp(initialValue)
        XCTAssertEqual(initialValue, result, "Clamping result \(result) should equal initial in-range value \(initialValue)")
    }
}
