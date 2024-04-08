//
//  IntClampedTests.swift
//  
//
//  Created by Duncan on 4/8/24.
//

import XCTest

final class IntClampedTests: XCTestCase
{
    static let int = 12
    
    func testClampedInRange()
    {
        let range = 0..<100
        let result = IntClampedTests.int.clamped(to: range)
        XCTAssertEqual(IntClampedTests.int, result, "Initial value \(IntClampedTests.int) should equal result \(result)")
    }
    
    func testClampedAboveRange()
    {
        let range = -100..<0
        let result = IntClampedTests.int.clamped(to: range)
        XCTAssertNotEqual(IntClampedTests.int, result, "Initial value \(IntClampedTests.int) should not equal result \(result)")
        guard let expected = range.last else
        {
            XCTFail("Could not get expected value")
            return
        }
        XCTAssertEqual(result, expected, "Result \(result) should equal last element of range \(expected)")
    }
    
    func testClampedBelowRange()
    {
        let range = 20..<125
        let result = IntClampedTests.int.clamped(to: range)
        XCTAssertNotEqual(IntClampedTests.int, result, "Initial value \(IntClampedTests.int) should not equal result \(result)")
        guard let expected = range.first else
        {
            XCTFail("Could not get expected value")
            return
        }
        XCTAssertEqual(result, expected, "Result \(result) should equal first element of range \(expected)")
    }
    
    func testClampedOnRangeUpperBound()
    {
        let range = -12..<12
        let result = IntClampedTests.int.clamped(to: range)
        XCTAssertNotEqual(IntClampedTests.int, result, "Initial value \(IntClampedTests.int) should not equal result \(result)")
        guard let expected = range.last else
        {
            XCTFail("Could not get expected value")
            return
        }
        XCTAssertEqual(result, expected, "Result \(result) should equal last element of range \(expected)")
    }
    
    func testClampedOnRangeLowerBound()
    {
        let range = 12..<36
        let result = IntClampedTests.int.clamped(to: range)
        XCTAssertEqual(IntClampedTests.int, result, "Initial value \(IntClampedTests.int) should  equal result \(result)")
    }
    
    func testClampedInClosedRange()
    {
        let range = 0...100
        let result = IntClampedTests.int.clamped(to: range)
        XCTAssertEqual(IntClampedTests.int, result, "Initial value \(IntClampedTests.int) should equal result \(result)")
    }
    
    func testClampedAboveClosedRange()
    {
        let range = -100...0
        let result = IntClampedTests.int.clamped(to: range)
        XCTAssertNotEqual(IntClampedTests.int, result, "Initial value \(IntClampedTests.int) should not equal result \(result)")
        guard let expected = range.last else
        {
            XCTFail("Could not get expected value")
            return
        }
        XCTAssertEqual(result, expected, "Result \(result) should equal last element of range \(expected)")
    }
    
    func testClampedBelowClosedRange()
    {
        let range = 20...125
        let result = IntClampedTests.int.clamped(to: range)
        XCTAssertNotEqual(IntClampedTests.int, result, "Initial value \(IntClampedTests.int) should not equal result \(result)")
        guard let expected = range.first else
        {
            XCTFail("Could not get expected value")
            return
        }
        XCTAssertEqual(result, expected, "Result \(result) should equal first element of range \(expected)")
    }
    
    func testClampedOnClosedRangeUpperBound()
    {
        let range = -12...12
        let result = IntClampedTests.int.clamped(to: range)
        XCTAssertEqual(IntClampedTests.int, result, "Initial value \(IntClampedTests.int) should  equal result \(result)")
    }
    
    func testClampedOnClosedRangeLowerBound()
    {
        let range = 12...36
        let result = IntClampedTests.int.clamped(to: range)
        XCTAssertEqual(IntClampedTests.int, result, "Initial value \(IntClampedTests.int) should  equal result \(result)")
    }
    
    func testClampedInPartialRangeFrom()
    {
        let range = 0...
        let result = IntClampedTests.int.clamped(to: range)
        XCTAssertEqual(IntClampedTests.int, result, "Initial value \(IntClampedTests.int) should equal result \(result)")
    }
    
    func testClampedBelowPartialRangeFrom()
    {
        let range = 20...
        let result = IntClampedTests.int.clamped(to: range)
        XCTAssertNotEqual(IntClampedTests.int, result, "Initial value \(IntClampedTests.int) should not equal result \(result)")
        let expected = range.lowerBound
        XCTAssertEqual(result, expected, "Result \(result) should equal first element of range \(expected)")
    }
    
    func testClampedOnPartialRangeFromLowerBound()
    {
        let range = 12...
        let result = IntClampedTests.int.clamped(to: range)
        XCTAssertEqual(IntClampedTests.int, result, "Initial value \(IntClampedTests.int) should  equal result \(result)")
    }
}
