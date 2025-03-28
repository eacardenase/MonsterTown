//
//  Vampire.swift
//  MonsterTown
//
//  Created by Edwin Cardenas on 3/28/25.
//

import Foundation

class Vampire: Monster {
    var thralls = [Vampire]()
    
    override func terrorizeTown() {
        super.terrorizeTown()
        
        if town != nil && town!.population > 0 {
            thralls.append(Vampire())
            town?.changePopulation(by: -1)
        }
    }
}
