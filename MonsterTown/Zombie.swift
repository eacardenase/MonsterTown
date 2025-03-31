//
//  Zombie.swift
//  MonsterTown
//
//  Created by Edwin Cardenas on 3/27/25.
//

import Foundation

class Zombie: Monster {
    var walksWithLimp: Bool
//    private var isFallingApart = false
    private(set) var isFallingApart: Bool
    
//    required convenience init(town: Town?, monsterName: String) {
//        self.init(limp: false, fallingAppart: false, town: town, monsterName: monsterName)
//    }
    
    required init(town: Town?, monsterName: String) {
        walksWithLimp = false
        isFallingApart = false
        
        super.init(town: town, monsterName: monsterName)
    }
    
    init(limp: Bool, fallingAppart: Bool, town: Town?, monsterName: String) {
//        super.init(town: town, monsterName: monsterName) // compile error, self.walksWithLimp not initialized at super.init
        
        walksWithLimp = limp
        isFallingApart = fallingAppart
        
        super.init(town: town, monsterName: monsterName)
    }
    
    convenience init(limp: Bool, fallingAppart: Bool) {
        self.init(limp: limp, fallingAppart: fallingAppart, town: nil, monsterName: "Fred")
        
        // instance is ready for use
        if walksWithLimp {
            print("This zombie has a bad knee.")
        }
    }
    
    func regenerate() {
        walksWithLimp = false
    }
    
    override func terrorizeTown() {
        if !isFallingApart {
            town?.changePopulation(by: -10)
        }
        
        super.terrorizeTown()
        regenerate()
    }
    
//    class let spookyNoise = "Brains..." // not supported in classes
//    static let spookyNoise = "Brains..." // cannot be overriden by its subclasses
    
    // allows overriding
//    class var spookyNoise: String {
//        get {
//            return "Brains..."
//        }
//    }
//    class var spookyNoise: String {
//        return "Brains..."
//    }
    override class var spookyNoise: String { "Brains..." }
    
    // can be overriden by subclasses
    class func makeSpookyNoise() -> String {
        return Self.spookyNoise
    }
    
//    // cannot be overriden by subclasses
//    static func makeSpookyNoise() -> String {
//        return "Brains..."
//    }
//    
//    // cannot be overriden by subclasses
//    final class func makeSpookyNoise() -> String {
//        return "Brains..."
//    }
}
