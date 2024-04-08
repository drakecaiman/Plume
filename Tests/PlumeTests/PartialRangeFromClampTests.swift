//
//  ClosedRangeClampTests.swift
//  
//
//  Created by Duncan on 4/1/24.
//

import XCTest

final class ClosedRangeClampTests: XCTestCase {
    static let intRange = 0...

    func testIntClosedRangeClampInRange()
    {
        let initialValue = 15709
        let result = ClosedRangeClampTests.intRange.clamp(initialValue)
        XCTAssertEqual(initialValue, result, "Clamping result \(result) should equal initial in-range value \(initialValue)")
    }
    func testIntClosedRangeClampBelowRange()
    {
        let initialValue = -34
        let result = ClosedRangeClampTests.intRange.clamp(initialValue)
        XCTAssertNotEqual(initialValue, result, "Clamping result \(result) should not equal initial in-range value \(initialValue).")
        let expected = ClosedRangeClampTests.intRange.lowerBound
        XCTAssertEqual(result, expected, "Clamping result \(result) should equal expected value \(expected).")
    }
    func testIntClosedRangeClampOnLowerBound()
    {
        let initialValue = ClosedRangeClampTests.intRange.lowerBound
        let result = ClosedRangeClampTests.intRange.clamp(initialValue)
        XCTAssertEqual(initialValue, result, "Clamping result \(result) should equal initial in-range value \(initialValue)")
    }
}
