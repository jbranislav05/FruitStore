//
//  String+Extensions.swift
//  TestPKCV
//
//  Created by Branislav Jovanović on 20.4.22..
//

import Foundation


extension String {
    func capitalizingFirstLetter() -> String {
        return prefix(1).capitalized + dropFirst()
    }

    mutating func capitalizeFirstLetter() {
        self = self.capitalizingFirstLetter()
    }
}
