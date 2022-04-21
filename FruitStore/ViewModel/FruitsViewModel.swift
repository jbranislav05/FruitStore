//
//  FruitsViewModel.swift
//  TestPKCV
//
//  Created by Branislav Jovanović on 14.4.22..
//

import Foundation
import Alamofire
import SwiftyJSON

class FruitsViewModel: ObservableObject {
    
    @Published var fruitList = [FruitsDTO]()
    private let fruitsURL = Constants.fruitsURL
    
    init() {
        self.fetchFruits()
    }
    
    private func fetchFruits() {
        AF.request(fruitsURL).responseData { response in
            let json = try! JSON(data: response.data!)
            var id = 0

            for item in json["list"] {
                for fruit in json["fruits"] {
                    if item.1.stringValue == fruit.0 {
                        self.fruitList.append(FruitsDTO(id: id, name: item.1.stringValue, url: fruit.1["url"].stringValue))
                    }
                }
                id += 1
            }
            let _ = self.fruitList.sort(by: <)
        }
    }
    
    func removeDuplicateFruits(fruitsArray: [FruitsDTO]) {
        var encountered = Set<String>()
        var result: [FruitsDTO] = []
        
        for value in fruitsArray {
            
            if !encountered.contains(value.name) {
                encountered.insert(value.name)
                result.append(value)
            }
        }
        
        fruitList = result
    }
}
