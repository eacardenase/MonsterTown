//
//  Monster.swift
//  MonsterTown
//
//  Created by Edwin Cardenas on 3/27/25.
//

import Foundation

class Monster {
    var town: Town?
    var name = "Monster"
    var victimPool: Int {
        get {
            return town?.population ?? 0
        }
//        set(newVictimPool) {
//            town?.population = newVictimPool
//        }
        set {
            town?.population = newValue // using the default new value name
        }
    }
    
    func terrorizeTown() {
        if town != nil { // town is not used, so boolean validation is preferred
            print("\(name) is terrorizing a town!")
        } else {
            print("\(name) hasn't found a town to terrorize yet...")
        }
    }
}
