//
//  CharacterClampedTests.swift
//
//
//  Created by Duncan on 4/8/24.
//

import XCTest

final class CharacterClampedTests : XCTestCase
{
    static let character : Character = "D"
    
    func testClampedInClosedRange()
    {
        let range : ClosedRange<Character> = "A"..."Z"
        let result = CharacterClampedTests.character.clamped(to: range)
        XCTAssertEqual(CharacterClampedTests.character, result, "Initial value \(CharacterClampedTests.character) should equal result \(result)")
    }
    
    func testClampedAboveClosedRange()
    {
        let range : ClosedRange<Character> = "5"..."A"
        let result = CharacterClampedTests.character.clamped(to: range)
        XCTAssertNotEqual(CharacterClampedTests.character, result, "Initial value \(CharacterClampedTests.character) should not equal result \(result)")
        let expected = range.upperBound
        XCTAssertEqual(result, expected, "Result \(result) should equal upper bound of range \(expected)")
    }
    
    func testClampedBelowClosedRange()
    {
        let range : ClosedRange<Character> = "F"..."f"
        let result = CharacterClampedTests.character.clamped(to: range)
        XCTAssertNotEqual(CharacterClampedTests.character, result, "Initial value \(CharacterClampedTests.character) should not equal result \(result)")
        let expected = range.lowerBound
        XCTAssertEqual(result, expected, "Result \(result) should equal lower bound of range \(expected)")
    }
    
    func testClampedOnClosedRangeUpperBound()
    {
        let range : ClosedRange<Character> = "0"..."D"
        let result = CharacterClampedTests.character.clamped(to: range)
        XCTAssertEqual(CharacterClampedTests.character, result, "Initial value \(CharacterClampedTests.character) should  equal result \(result)")
    }
    
    func testClampedOnClosedRangeLowerBound()
    {
        let range : ClosedRange<Character> = "D"..."z"
        let result = CharacterClampedTests.character.clamped(to: range)
        XCTAssertEqual(CharacterClampedTests.character, result, "Initial value \(CharacterClampedTests.character) should  equal result \(result)")
    }
    
    func testClampedInPartialRangeFrom()
    {
        let range : PartialRangeFrom<Character> = "A"...
        let result = CharacterClampedTests.character.clamped(to: range)
        XCTAssertEqual(CharacterClampedTests.character, result, "Initial value \(CharacterClampedTests.character) should equal result \(result)")
    }
    
    func testClampedBelowPartialRangeFrom()
    {
        let range : PartialRangeFrom<Character> = "J"...
        let result = CharacterClampedTests.character.clamped(to: range)
        XCTAssertNotEqual(CharacterClampedTests.character, result, "Initial value \(CharacterClampedTests.character) should not equal result \(result)")
        let expected = range.lowerBound
        XCTAssertEqual(result, expected, "Result \(result) should equal lower bound of range \(expected)")
    }
    
    func testClampedOnPartialRangeFromLowerBound()
    {
        let range : PartialRangeFrom<Character> = "D"...
        let result = CharacterClampedTests.character.clamped(to: range)
        XCTAssertEqual(CharacterClampedTests.character, result, "Initial value \(CharacterClampedTests.character) should  equal result \(result)")
    }
}
