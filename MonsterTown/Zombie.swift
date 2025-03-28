//
//  Zombie.swift
//  MonsterTown
//
//  Created by Edwin Cardenas on 3/27/25.
//

import Foundation

class Zombie: Monster {
    var walksWithLimp = true
    
    func regenerate() {
        walksWithLimp = false
    }
    
    override func terrorizeTown() {
        town?.changePopulation(by: -10)
        super.terrorizeTown()
        regenerate()
    }
}
