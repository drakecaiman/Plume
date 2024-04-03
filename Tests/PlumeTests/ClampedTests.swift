//
//  ClampedTests.swift
//  
//
//  Created by Duncan on 4/1/24.
//

import XCTest
@testable import Plume

final class ClampedTests: XCTestCase
{
    func testIntInRange() throws
    {
        let testInt = 7
        @Clamped(range: PlumeTests.intClosedRange) var result = testInt
        XCTAssert(result == testInt, "Matches")
    }
    
    func testOutOfRange() throws
    {
        let testInt = 75
        @Clamped(range: PlumeTests.intClosedRange) var result = testInt
        XCTAssert(result == PlumeTests.intClosedRange.upperBound, "Final value (\(result)) does not equal upper bound of range (\(PlumeTests.intClosedRange.upperBound))")
    }
    
    func testInRange() throws
    {
        let testValue = 115
        let clamped = (1...100).clamp(testValue)
        XCTAssertNotEqual(testValue, clamped)
    }
}
