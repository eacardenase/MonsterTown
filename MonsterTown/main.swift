//
//  main.swift
//  MonsterTown
//
//  Created by Edwin Cardenas on 3/27/25.
//

import Foundation

var myTown = Town()

myTown.changePopulation(by: 500)
//myTown.printDescription()
//print(myTown)
//
//let genericMonster = Monster()
//genericMonster.town = myTown
//genericMonster.terrorizeTown()

//let fredTheZombie = Zombie()
let fredTheZombie: Monster = Zombie()
fredTheZombie.town = myTown
fredTheZombie.terrorizeTown()
fredTheZombie.town?.printDescription()
//fredTheZombie.walksWithLimp = true // error if Monster type
(fredTheZombie as? Zombie)?.walksWithLimp = true
//fredTheZombie.walksWithLimp = true

if fredTheZombie is Zombie {
    print("I knew it!")
}
