//
//  PartialRangeUpToTests.swift
//
//
//  Created by Duncan on 4/1/24.
//

import XCTest

final class PartialRangeUpToTests: XCTestCase {
    static let intRange = ..<100
    static let floatRange : PartialRangeUpTo<Float> = ..<1024.13
    static let characterRange : PartialRangeUpTo<Character> = ..<"a"

    func testIntPartialRangeUpToClampInRange()
    {
        let initialValue = 52
        let result = PartialRangeUpToTests.intRange.clamp(initialValue)
        XCTAssertEqual(initialValue, result, "Clamping result \(result) should equal initial in-range value \(initialValue)")
    }
    
    func testIntPartialRangeUpToClampAboveRange()
    {
        let initialValue = 1274
        let result = PartialRangeUpToTests.intRange.clamp(initialValue)
        XCTAssertNotEqual(initialValue, result, "Clamping result \(result) should not equal initial in-range value \(initialValue).")
        let expected = PartialRangeUpToTests.intRange.upperBound.advanced(by: -1)
        XCTAssertEqual(result, expected, "Clamping result \(result) should equal expected value \(expected).")
    }
    
    func testIntPartialRangeUpToClampOnUpperBound()
    {
        let initialValue = PartialRangeUpToTests.intRange.upperBound
        let result = PartialRangeUpToTests.intRange.clamp(initialValue)
        XCTAssertNotEqual(initialValue, result, "Clamping result \(result) should not equal initial in-range value \(initialValue).")
        let expected = PartialRangeUpToTests.intRange.upperBound.advanced(by: -1)
        XCTAssertEqual(result, expected, "Clamping result \(result) should equal expected value \(expected).")
    }
}
