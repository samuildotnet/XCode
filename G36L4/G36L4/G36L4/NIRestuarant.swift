
import UIKit

enum Raiting : Int {
    case oneStar = 1
    case twoStar = 2
    case Default = 3
    case fourStar = 4
    case fiveStar = 5
}

class NIRestuarant: NSObject {
    
    var raiting: Raiting!
    var name: String!
    var tables: [(reserved: Bool, seatsCount: UInt8)]!

    
    override var description: String {
        get {
            return "----------------------\nRestuarant: \(name) \nRaiting: \(raiting)\nTables count: \(tables.count) \n----------------------"
        }
    }

    
    func addTable(seatsCount: UInt8) {
        tables.append((false, seatsCount))
    }
    
    func changeRaitingToCountOfStars(newRaiting: Raiting) {
        raiting = newRaiting
    }
    
    class func bestOfRestuarants(restA: NIRestuarant, restB: NIRestuarant) -> NIRestuarant {
        if restA.tables.count * restA.raiting.rawValue > restB.tables.count * restB.raiting.rawValue {
            return restA
        } else {
            return restB
        }
    }
    
    override init() {
        raiting = Raiting.oneStar
        name = "Unknown"
        tables = [(reserved: Bool, seatsCount: UInt8)]()
    }
    
    init(initialName: String, initialRaiting: Raiting, tablesCount: UInt8) {
        super.init()
        name = initialName
        raiting = initialRaiting
        tables = [(reserved: Bool, seatsCount: UInt8)]()
        for _ in 0..<tablesCount {
            addTable(UInt8(arc4random_uniform(5))+1)
        }
        
    }
    
}
