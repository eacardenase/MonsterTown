//
//  main.swift
//  MonsterTown
//
//  Created by Edwin Cardenas on 3/27/25.
//

import Foundation

var myTown = Town()
var yourTown = myTown

myTown.changePopulation(by: 500)

print("myTown has \(myTown.population) and yourTown has \(yourTown.population)")

//myTown.printDescription()
//print(myTown)
//
//let genericMonster = Monster()
//genericMonster.town = myTown
//genericMonster.terrorizeTown()

let fredTheZombie = Zombie()
//let fredTheZombie: Monster = Zombie()
fredTheZombie.town = myTown
fredTheZombie.terrorizeTown()
fredTheZombie.town?.printDescription()
//fredTheZombie.walksWithLimp = true // error if Monster type
//(fredTheZombie as? Zombie)?.walksWithLimp = true

//if fredTheZombie is Zombie {
//    print("I knew it!")
//}

var frederickTheZombie = fredTheZombie
frederickTheZombie.name = "Frederick"

print("Fred's name is \(fredTheZombie.name)")
