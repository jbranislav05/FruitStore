//
//  DTO_Test.swift
//  TestPKCVTests
//
//  Created by Branislav Jovanović on 20.4.22..
//

import XCTest
@testable import FruitStore

class DTO_Test: XCTestCase {

    func test_fruitsDTO_compare_shouldReturnInAlphabeticalOrder () throws {
        var arrayOfLetters = ["a", "z", "f", "b"]
        let correctOrderArray = ["a", "b", "f", "z"]
        
        let _ =  arrayOfLetters.sort(by: <)
        
        XCTAssertEqual(arrayOfLetters, correctOrderArray)
    }


}
