//
//  NIRestaurant.swift
//  G36_Lesson4
//
//  Created by Serge Sukhanov on 01.02.16.
//  Copyright © 2016 Serge Sukhanov. All rights reserved.
//

import UIKit

let kRestaurantDefaultNotification = "kRestaurantDefaultNotification"

enum Rating: Int {
    case oneStar = 1
    case twoStars
    case Default
    case fourStars
    case fiveStars
}

class NIRestaurant: NSObject {
    override var description: String {
        get {
            return("\(name) with rating \(rating) and tables count \(tables.count)")
        }
    }
    
    var rating: Rating!
    var name: String!
    var tables: [(reserved: Bool, seatsCount: UInt8)]!
    var cash = 300_000
    
    func newDayCome () {
        cash -= 100_000
        if cash <= 0 {
            thisIsTheEnd()
        }
    }
    
    func thisIsTheEnd() {
        print("KAPUT!!!")
        NSNotificationCenter.defaultCenter().postNotificationName(kRestaurantDefaultNotification, object: self)
        
    }
    
    func addTable(seatsCount: UInt8) {
        tables.append((false, seatsCount))
    }
    
    func changeRating(newRating: Rating) {
        rating = newRating
    }
    
    class func bestOfRestaurants(restA: NIRestaurant, restB: NIRestaurant) -> NIRestaurant {
        if restA.tables.count * restA.rating.rawValue > restB.tables.count * restB.rating.rawValue {
            return restA
        } else {
            return restB
        }
    }
    
    override init() {
        self.rating = Rating.oneStar
        self.name = "Unknown"
        self.tables = [(reserved: Bool, seatsCount: UInt8)]()
    }
    
    init(name: String, rating: Rating, tablesCount: UInt8) {
        super.init()
        self.name = name
        self.rating = rating
        self.tables = [(reserved: Bool, seatsCount: UInt8)]()
        for _ in 0..<tablesCount {
            self.addTable(UInt8(arc4random_uniform(5)+1))
        }
    }
}
