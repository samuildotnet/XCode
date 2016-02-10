//g36 l1
import UIKit


class SwiftRobotControlCenter: RobotControlCenter {
    
    override func viewDidLoad() {
        
        levelName = "L22H"
        
        super.viewDidLoad()
    }
    
    
    
    override func viewDidAppear(animated: Bool) {
        
        super.viewDidAppear(animated)
        /*
        
        bla
        bla
        asklBSDSAKLFDF'DS
        FDSLFD
        FDSF
        'DS
        FL
        'DSFL;'DSLA
        '
        '
        
        */
        
        // LOOP FOR CANDY FINDING
        while noCandyPresent {
            
            if frontIsClear {
                move()
            }
            else {
                break
            }
        }
        turnRight()
        
    }
    
    func loopsExample() {
        for _ in 0..<19 {
            put()
            move()
        }
        put()
        turnRight()
        moveToWall()
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
    
    func doubleMove() {
        move()
        move()
    }
    
    func turnLeft() {
        for _ in 0..<3 {
            turnRight()
        }
        
    }
    
    func wallDeath() {
        for _ in 0..<20 {
            move()
        }
    }
    
    func moveToWall() {
        while frontIsClear {
            move()
        }
    }
    
}


