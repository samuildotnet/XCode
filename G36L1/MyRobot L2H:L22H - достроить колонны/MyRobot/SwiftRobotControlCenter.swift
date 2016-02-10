import UIKit


class SwiftRobotControlCenter: RobotControlCenter {
    
    override func viewDidLoad() {
        
        levelName = "L22H"
        
        super.viewDidLoad()
    }
    
    override func viewDidAppear(animated: Bool) {
        
        
        super.viewDidAppear(animated)
        builColumnUp()
        turnAbsRight()
        
        builColumnDown()
        turnAbsRight()
        
        builColumnUp()
        turnAbsRight()
        
        builColumnDown()
       
    }
    
    
    func builColumnUp(){
        turnLeft()
        while frontIsClear {
            if noCandyPresent {
                if candyInBag {
                    put()
                }
            
            }
            
            move()
        }
        if frontIsBlocked {
            if noCandyPresent {
                if candyInBag {
                    put()
                }
            }
        }
        
    }
    func builColumnDown(){
        turnRight()
        while frontIsClear {
            if noCandyPresent {
                if candyInBag {
                    put()
                }
                
            }
            
            move()
        }
        if frontIsBlocked {
            if noCandyPresent {
                if candyInBag {
                    put()
                }
            }
        }
        
    }

    
    func turnAbsRight(){
        if facingUp {
            turnRight()
            doubleMove()
            doubleMove()
        }
        
        if facingDown {
            turnLeft()
            doubleMove()
            doubleMove()
        }
    }
    
    func l0c() {
        
        if frontIsClear {
            move()
            doubleMove()
            pick()
            doubleMove()
            turnRight()
            move()
            put()
            turnLeft()
            doubleMove()
        }
            
        else {
            turnLeft()
        }
        wallDeath()

    }
    
    func wallDeath() {
        for _ in 0..<20 {
            move()
            
        }

    }
    
    func doubleMove(){
        move()
        move()
    }
    
    func turnLeft() {
        for _ in 0..<3 {
            turnRight()

        }
       
    }

    func moveToWall() {
        turnRight()
        while frontIsClear {
            move()
        }
    }
    
}


