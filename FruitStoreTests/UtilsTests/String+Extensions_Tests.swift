//
//  String+Extensions_Tests.swift
//  TestPKCVTests
//
//  Created by Branislav Jovanović on 20.4.22..
//

import XCTest
@testable import FruitStore

class String_Extensions_Tests: XCTestCase {

    func test_capitalizingFirstLetter_shouldCapitaliseLetter() throws {
        let testingChar = "a"
        
        XCTAssertEqual("A", testingChar.capitalizingFirstLetter())
    }

}
