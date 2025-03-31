//
//  main.swift
//  MonsterTown
//
//  Created by Edwin Cardenas on 3/27/25.
//

import Foundation

//var myTown = Town()
var myTown = Town(population: 10_000, spotlights: 6)
//var yourTown = myTown

myTown.printDescription()

let myTownSize = myTown.townSize
print(myTownSize)

myTown.changePopulation(by: 1_000_000)
print("Size: \(myTown.townSize)\nPopulation: \(myTown.population)")

//print("myTown has \(myTown.population) and yourTown has \(yourTown.population)")

//myTown.printDescription()
//print(myTown)
//
//let genericMonster = Monster()
//genericMonster.town = myTown
//genericMonster.terrorizeTown()

var fredTheZombie: Zombie? = Zombie(limp: true, fallingAppart: false, town: myTown, monsterName: "Fred")
//let fredTheZombie: Monster = Zombie()
fredTheZombie?.terrorizeTown()
fredTheZombie?.town?.printDescription()
//fredTheZombie.walksWithLimp = true // error if Monster type
//(fredTheZombie as? Zombie)?.walksWithLimp = true

var convenienceZombie = Zombie(limp: true, fallingAppart: false)

//if fredTheZombie is Zombie {
//    print("I knew it!")
//}

//var frederickTheZombie = fredTheZombie
//frederickTheZombie.name = "Frederick"
//
//print("Fred's name is \(fredTheZombie.name)")

//let dracula = Vampire()
//dracula.town = myTown
//
//dracula.terrorizeTown()
//print(dracula.thralls)
//print(dracula.town?.population)
//
//dracula.terrorizeTown()
//print(dracula.thralls)
//print(dracula.town?.population)
//
//dracula.terrorizeTown()
//print(dracula.thralls)
//print(dracula.town?.population)
//
//dracula.terrorizeTown()
//print(dracula.thralls)
//print(dracula.town?.population)
//
//dracula.terrorizeTown()
//print(dracula.thralls)
//print(dracula.town?.population)

print(Zombie.makeSpookyNoise())
print(Zombie.spookyNoise)

if Zombie.isTerrifyng {
    print("Run away!!!")
}

print("Victim pool: \(String(describing: fredTheZombie?.victimPool))")

fredTheZombie?.victimPool = 500

print("Victim pool: \(String(describing: fredTheZombie?.victimPool))")

fredTheZombie = nil
