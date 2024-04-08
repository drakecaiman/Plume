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
    static let intRange = 1..<100
    
    func testIntInRange() throws
    {
        let testInt = 7
        @Clamped(range: ClampedTests.intRange) var result = testInt
//        XCTAssert(result == testInt, "Matches")
        XCTFail("Test is not implemented")
    }
    
    func testOutOfRange() throws
    {
        let testInt = 75
//        @Clamped(range: PlumeTests.intClosedRange) var result = testInt
//        XCTAssert(result == PlumeTests.intClosedRange.upperBound, "Final value (\(result)) does not equal upper bound of range (\(PlumeTests.intClosedRange.upperBound))")
        XCTFail("Test is not implemented")
    }
}
