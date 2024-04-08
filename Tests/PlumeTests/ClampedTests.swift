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
        let initial = 7
        @Clamped(range: ClampedTests.intRange) var result = initial
        XCTAssertEqual(initial, result, "Initial value \(initial) should equal result \(result)")
    }
    
    func testIntAboveRange() throws
    {
        let initial = 108
        @Clamped(range: ClampedTests.intRange) var result = initial
        XCTAssertNotEqual(initial, result, "Initial value \(initial) should not equal result \(result)")
        guard let expected = ClampedTests.intRange.last else
        {
            XCTFail("Could not get expected value")
            return
        }
        XCTAssertEqual(result, expected, "Clamped value \(result) should equal last element of range \(expected)")
    }
}
