//
//  Town.swift
//  MonsterTown
//
//  Created by Edwin Cardenas on 3/27/25.
//

import Foundation

struct Town {
    static let world = "Earth"
    
    let region: String
    var population: Int {
//        didSet(oldPopulation) {
//            print("The population has changed to \(population) from \(oldPopulation)")
//        }
        didSet {
            if population < oldValue {
                print("The population has changed to \(population) from \(oldValue)")
            }
        }
        willSet {
            if newValue < population {
                print("The population will change from \(population) to \(newValue)")
            }
        }
    }
    var numberOfSpotlights: Int
    
    init(region: String, population: Int, spotlights: Int) {
        self.region = region
        self.population = population
        numberOfSpotlights = spotlights
    }
    
    init(population: Int, spotlights: Int) {
        self.init(region: "N/A", population: population, spotlights: spotlights)
    }
    
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
        print("Population: \(population)\nNumber of spotlights: \(numberOfSpotlights)\nRegion: \(region)")
//        print("Population: \(myTown.population)\nNumber of spotlights: \(myTown.numberOfSpotlights)") // still works
    }
    
    mutating func changePopulation(by amount: Int) {
        population += amount
    }
}
