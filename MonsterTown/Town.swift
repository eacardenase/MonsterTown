//
//  Town.swift
//  MonsterTown
//
//  Created by Edwin Cardenas on 3/27/25.
//

import Foundation

struct Town {
    var population = 5_422
    var numberOfSpotlights = 4
    
    func printDescription() {
        print("Population: \(population)\nNumber of spotlights: \(numberOfSpotlights)")
//        print("Population: \(myTown.population)\nNumber of spotlights: \(myTown.numberOfSpotlights)") // still works 
    }
}
