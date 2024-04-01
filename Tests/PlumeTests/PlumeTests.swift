import XCTest
@testable import Plume

final class PlumeTests: XCTestCase {
    func testExample() throws {
        // XCTest Documentation
        // https://developer.apple.com/documentation/xctest

        // Defining Test Cases and Test Methods
        // https://developer.apple.com/documentation/xctest/defining_test_cases_and_test_methods
    }
    static let intClosedRange = 1...50
    
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
