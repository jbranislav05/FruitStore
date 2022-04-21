//
//  FruitsViewModelTests.swift
//  TestPKCVTests
//
//  Created by Branislav Jovanović on 20.4.22..
//

import XCTest
@testable import FruitStore

class FruitsViewModelTests: XCTestCase {

    func test_removeDuplicateFruits_shouldBeEqualArrays() {
        let vm = FruitsViewModel()
        
        let fruits: [FruitsDTO] = [
            FruitsDTO(id: 1, name: "watermelon", url: ""),
            FruitsDTO(id: 1, name: "watermelon", url: ""),
            FruitsDTO(id: 2, name: "tomato", url: ""),
            FruitsDTO(id: 2, name: "tomato", url: "")
        ]
        
        let nonDuplicateFruits: [FruitsDTO] = [
            FruitsDTO(id: 1, name: "watermelon", url: ""),
            FruitsDTO(id: 2, name: "tomato", url: "")
        ]
        
        vm.removeDuplicateFruits(fruitsArray: fruits)
        
        XCTAssertEqual(vm.fruitList, nonDuplicateFruits)
    }
    
    func test_removeDuplicateFruits_shouldReturnNotBeEqualArrays() {
        let vm = FruitsViewModel()
        
        let fruits: [FruitsDTO] = [
            FruitsDTO(id: 1, name: "watermelon", url: ""),
            FruitsDTO(id: 1, name: "watermelon", url: ""),
            FruitsDTO(id: 2, name: "tomato", url: ""),
            FruitsDTO(id: 2, name: "tomato", url: "")
        ]
        
        let fakeNonDuplicateFruits: [FruitsDTO] = [
            FruitsDTO(id: 1, name: "watermelon", url: ""),
            FruitsDTO(id: 2, name: "tomato", url: ""),
            FruitsDTO(id: 2, name: "tomato", url: "")
        ]
        
        vm.removeDuplicateFruits(fruitsArray: fruits)
        
        XCTAssertNotEqual(vm.fruitList, fakeNonDuplicateFruits)
    }
    
    
}
