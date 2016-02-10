//
//  Pokemon.swift
//  SwiftL3
//
//  Created by Ivan Vasilevich on 12/2/15.
//  Copyright © 2015 Ivan Besarab. All rights reserved.
//

import UIKit

class Pokemon: NSObject {
    
    
    
    
    var name = ""
    var weight = 0.0
    var health = 100
    var magic = ""
    var damage = 1
    
    override var description: String {
        get {
            return "Pokemon, name = \(name), magic = \(magic), damage = \(damage), weight = \(weight), health = \(health), "
        }
    }
    
    func kickBy(pokemon: Pokemon){
        health -= (Int(arc4random_uniform(UInt32(pokemon.damage)))/2 + pokemon.damage/2)
    }
    
    private func kickYourSelf() {
        kickBy(self)
    }
    
    func inBall() {
        kickYourSelf()
        health = 100
    }

}
