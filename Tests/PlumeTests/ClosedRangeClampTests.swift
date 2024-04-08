//
//  ClosedRangeClampTests.swift
//  
//
//  Created by Duncan on 4/1/24.
//

import XCTest

final class ClosedRangeClampTests: XCTestCase {
    static let intRange = 0...100
    static let floatRange : ClosedRange<Float> = 0.0...1000.0
    static let characterRange : ClosedRange<Character> = "c"..."q"

    func testIntClosedRangeClampInRange()
    {
        let initialValue = 52
        let result = ClosedRangeClampTests.intRange.clamp(initialValue)
        XCTAssertEqual(initialValue, result, "Clamping result \(result) should equal initial in-range value \(initialValue)")
    }
    
    func testIntClosedRangeClampAboveRange()
    {
        let initialValue = 1274
        let result = ClosedRangeClampTests.intRange.clamp(initialValue)
        XCTAssertNotEqual(initialValue, result, "Clamping result \(result) should not equal initial in-range value \(initialValue).")
        guard let expected = ClosedRangeClampTests.intRange.last else
        {
            XCTFail("Could not get expected value.")
            return
        }
        XCTAssertEqual(result, expected, "Clamping result \(result) should equal expected value \(expected).")
    }
    
    func testIntClosedRangeClampBelowRange()
    {
        let initialValue = -37
        let result = ClosedRangeClampTests.intRange.clamp(initialValue)
        XCTAssertNotEqual(initialValue, result, "Clamping result \(result) should not equal initial in-range value \(initialValue).")
        guard let expected = ClosedRangeClampTests.intRange.first else
        {
            XCTFail("Could not get expected value.")
            return
        }
        XCTAssertEqual(result, expected, "Clamping result \(result) should equal expected value \(expected).")
    }
    
    func testIntClosedRangeClampOnUpperBound()
    {
        let initialValue = ClosedRangeClampTests.intRange.upperBound
        let result = ClosedRangeClampTests.intRange.clamp(initialValue)
        XCTAssertEqual(initialValue, result, "Clamping result \(result) should equal initial in-range value \(initialValue)")
    }
    
    func testIntClosedRangeClampOnLowerBound()
    {
        let initialValue = ClosedRangeClampTests.intRange.lowerBound
        let result = ClosedRangeClampTests.intRange.clamp(initialValue)
        XCTAssertEqual(initialValue, result, "Clamping result \(result) should equal initial in-range value \(initialValue)")
    }
    
    func testFloatClosedRangeClampInRange()
    {
        let initialValue : Float = 639.25
        let result = ClosedRangeClampTests.floatRange.clamp(initialValue)
        XCTAssertEqual(initialValue, result, "Clamping result \(result) should equal initial in-range value \(initialValue)")
    }
    
    func testFloatClosedRangeClampAboveRange()
    {
        let initialValue : Float = 19230.128
        let result = ClosedRangeClampTests.floatRange.clamp(initialValue)
        XCTAssertNotEqual(initialValue, result, "Clamping result \(result) should not equal initial in-range value \(initialValue).")
        let expected = ClosedRangeClampTests.floatRange.upperBound
        XCTAssertEqual(result, expected, "Clamping result \(result) should equal expected value \(expected).")
    }
    
    func testFloatClosedRangeClampBelowRange()
    {
        let initialValue : Float = -1612.27
        let result = ClosedRangeClampTests.floatRange.clamp(initialValue)
        XCTAssertNotEqual(initialValue, result, "Clamping result \(result) should not equal initial in-range value \(initialValue).")
        let expected = ClosedRangeClampTests.floatRange.lowerBound
        XCTAssertEqual(result, expected, "Clamping result \(result) should equal expected value \(expected).")
    }
    
    func testFloatClosedRangeClampOnUpperBound()
    {
        let initialValue = ClosedRangeClampTests.floatRange.upperBound
        let result = ClosedRangeClampTests.floatRange.clamp(initialValue)
        XCTAssertEqual(initialValue, result, "Clamping result \(result) should equal initial in-range value \(initialValue)")
    }
    
    func testFloatClosedRangeClampOnLowerBound()
    {
        let initialValue = ClosedRangeClampTests.floatRange.lowerBound
        let result = ClosedRangeClampTests.floatRange.clamp(initialValue)
        XCTAssertEqual(initialValue, result, "Clamping result \(result) should equal initial in-range value \(initialValue)")
    }
    
    func testCharacterClosedRangeClampInRange()
    {
        let initialValue : Character = "d"
        let result = ClosedRangeClampTests.characterRange.clamp(initialValue)
        XCTAssertEqual(initialValue, result, "Clamping result \(result) should equal initial in-range value \(initialValue)")
    }
    
    func testCharacterClosedRangeClampAboveRange()
    {
        let initialValue : Character = "x"
        let result = ClosedRangeClampTests.characterRange.clamp(initialValue)
        XCTAssertNotEqual(initialValue, result, "Clamping result \(result) should not equal initial in-range value \(initialValue).")
        let expected = ClosedRangeClampTests.characterRange.upperBound
        XCTAssertEqual(result, expected, "Clamping result \(result) should equal expected value \(expected).")
    }
    
    func testCharacterClosedRangeClampBelowRange()
    {
        let initialValue : Character = "a"
        let result = ClosedRangeClampTests.characterRange.clamp(initialValue)
        XCTAssertNotEqual(initialValue, result, "Clamping result \(result) should not equal initial in-range value \(initialValue).")
        let expected = ClosedRangeClampTests.characterRange.lowerBound
        XCTAssertEqual(result, expected, "Clamping result \(result) should equal expected value \(expected).")
    }
    
    func testCharacterClosedRangeClampOnUpperBound()
    {
        let initialValue = ClosedRangeClampTests.characterRange.upperBound
        let result = ClosedRangeClampTests.characterRange.clamp(initialValue)
        XCTAssertEqual(initialValue, result, "Clamping result \(result) should equal initial in-range value \(initialValue)")
    }
    
    func testCharacterClosedRangeClampOnLowerBound()
    {
        let initialValue = ClosedRangeClampTests.characterRange.lowerBound
        let result = ClosedRangeClampTests.characterRange.clamp(initialValue)
        XCTAssertEqual(initialValue, result, "Clamping result \(result) should equal initial in-range value \(initialValue)")
    }
}
