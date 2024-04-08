//
//  FloatClampedTests.swift
//  
//
//  Created by Duncan on 4/8/24.
//

import XCTest

final class FloatClampedTests: XCTestCase
{
    static let float : Float = 41.65
    
    func testClampedInClosedRange()
    {
        let range : ClosedRange<Float> = 1.1...10000.15
        let result = FloatClampedTests.float.clamped(to: range)
        XCTAssertEqual(FloatClampedTests.float, result, "Initial value \(FloatClampedTests.float) should equal result \(result)")
    }
    
    func testClampedAboveClosedRange()
    {
        let range : ClosedRange<Float> = -1030.54...0.25
        let result = FloatClampedTests.float.clamped(to: range)
        XCTAssertNotEqual(FloatClampedTests.float, result, "Initial value \(FloatClampedTests.float) should not equal result \(result)")
        let expected = range.upperBound
        XCTAssertEqual(result, expected, "Result \(result) should equal last element of range \(expected)")
    }
    
    func testClampedBelowClosedRange()
    {
        let range : ClosedRange<Float> = 65.74...128.32
        let result = FloatClampedTests.float.clamped(to: range)
        XCTAssertNotEqual(FloatClampedTests.float, result, "Initial value \(FloatClampedTests.float) should not equal result \(result)")
        let expected = range.lowerBound
        XCTAssertEqual(result, expected, "Result \(result) should equal first element of range \(expected)")
    }
    
    func testClampedOnClosedRangeUpperBound()
    {
        let range : ClosedRange<Float> = -34.185...41.65
        let result = FloatClampedTests.float.clamped(to: range)
        XCTAssertEqual(FloatClampedTests.float, result, "Initial value \(FloatClampedTests.float) should  equal result \(result)")
    }
    
    func testClampedOnClosedRangeLowerBound()
    {
        let range : ClosedRange<Float> = 41.65...2482.109
        let result = FloatClampedTests.float.clamped(to: range)
        XCTAssertEqual(FloatClampedTests.float, result, "Initial value \(FloatClampedTests.float) should  equal result \(result)")
    }
    
    func testClampedInPartialRangeFrom()
    {
        let range : PartialRangeFrom<Float> = 0.0...
        let result = FloatClampedTests.float.clamped(to: range)
        XCTAssertEqual(FloatClampedTests.float, result, "Initial value \(FloatClampedTests.float) should equal result \(result)")
    }
    
    func testClampedBelowPartialRangeFrom()
    {
        let range : PartialRangeFrom<Float> = 50.12...
        let result = FloatClampedTests.float.clamped(to: range)
        XCTAssertNotEqual(FloatClampedTests.float, result, "Initial value \(FloatClampedTests.float) should not equal result \(result)")
        let expected = range.lowerBound
        XCTAssertEqual(result, expected, "Result \(result) should equal first element of range \(expected)")
    }
    
    func testClampedOnPartialRangeFromLowerBound()
    {
        let range : PartialRangeFrom<Float> = 41.65...
        let result = FloatClampedTests.float.clamped(to: range)
        XCTAssertEqual(FloatClampedTests.float, result, "Initial value \(FloatClampedTests.float) should  equal result \(result)")
    }
}
