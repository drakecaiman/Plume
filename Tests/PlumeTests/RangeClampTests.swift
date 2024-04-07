//
//  RangeClampTests.swift
//  
//
//  Created by Duncan on 4/1/24.
//

import XCTest

final class RangeClampTests: XCTestCase {
    static let intRange = 1..<100
    
    func testIntRangeClampInRange()
    {
        let initialValue = 57
        let result = RangeClampTests.intRange.clamp(initialValue)
        XCTAssertEqual(initialValue, result, "Clamping result \(result) should equal initial in-range value \(initialValue)")
    }
    
    func testIntRangeClampAboveRange()
    {
        let initialValue = 2515
        let result = RangeClampTests.intRange.clamp(initialValue)
        guard let expected = RangeClampTests.intRange.last else
        {
            XCTFail("Could not get expected value.")
            return
        }
        XCTAssertNotEqual(initialValue, result, "Clamping result \(result) should not equal initial in-range value \(initialValue).")
        XCTAssertEqual(result, expected, "Clamping result \(result) should equal expected value \(expected).")
    }
    
    func testIntRangeClampBelowRange()
    {
        let initialValue = -487
        let result = RangeClampTests.intRange.clamp(initialValue)
        guard let expected = RangeClampTests.intRange.first else
        {
            XCTFail("Could not get expected value.")
            return
        }
        XCTAssertNotEqual(initialValue, result, "Clamping result \(result) should not equal initial in-range value \(initialValue).")
        XCTAssertEqual(result, expected, "Clamping result \(result) should equal expected value \(expected).")
    }
    
    func testIntRangeClampOnUpperBound()
    {
        let initialValue = RangeClampTests.intRange.upperBound
        let result = RangeClampTests.intRange.clamp(initialValue)
        guard let expected = RangeClampTests.intRange.last else
        {
            XCTFail("Could not get expected value.")
            return
        }
        XCTAssertNotEqual(initialValue, result, "Clamping result \(result) should not equal initial in-range value \(initialValue).")
        XCTAssertEqual(result, expected, "Clamping result \(result) should equal expected value \(expected).")
    }
    
    func testIntRangeClampOnLowerBound()
    {
        let initialValue = RangeClampTests.intRange.lowerBound
        let result = RangeClampTests.intRange.clamp(initialValue)
        XCTAssertEqual(initialValue, result, "Clamping result \(result) should equal initial in-range value \(initialValue)")
    }
}
