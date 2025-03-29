//
//  Town.swift
//  MonsterTown
//
//  Created by Edwin Cardenas on 3/27/25.
//

import Foundation

struct Town {
    let region = "Middle"
    var population = 5_422
    var numberOfSpotlights = 4
    
    enum Size {
        case small, medium, large
    }
    
//    lazy var townSize: Size = {
//        switch population {
//        case 0...10_000:
//            return .small
//        case 10_001...100_000:
//            return .medium
//        default:
//            return .large
//        }
//    }()
    
    var townSize: Size {
        switch population {
        case 0...10_000:
            return .small
        case 10_001...100_000:
            return .medium
        default:
            return .large
        }
    }
    
    func printDescription() {
        print("Population: \(population)\nNumber of spotlights: \(numberOfSpotlights)")
//        print("Population: \(myTown.population)\nNumber of spotlights: \(myTown.numberOfSpotlights)") // still works 
    }
    
    mutating func changePopulation(by amount: Int) {
        population += amount
    }
}
