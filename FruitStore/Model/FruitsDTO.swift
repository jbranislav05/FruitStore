//
//  FruitsDTO.swift
//  TestPKCV
//
//  Created by Branislav Jovanović on 14.4.22..
//

import Foundation

struct FruitsDTO: Decodable, Identifiable, Hashable, Comparable {
    static func < (lhs: FruitsDTO, rhs: FruitsDTO) -> Bool {
        return lhs.name < rhs.name
    }
    
    var id: Int
    var name: String
    var url: String
}
