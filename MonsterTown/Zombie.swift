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
    class var spookyNoise: String { "Brains..." }
    
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
