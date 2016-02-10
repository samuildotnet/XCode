import UIKit


class SwiftRobotControlCenter: RobotControlCenter {
    
    func turnLeft() {
        
        for _ in 0..<3 {
            
            turnRight()
        }
    }
    
    override func viewDidLoad() {
        
        levelName = "L1C"
        
        super.viewDidLoad()}
    
    override func viewDidAppear(animated: Bool) {
        
        super.viewDidAppear(animated)
        
        buildColumns()
        
        
    }
    
    func buildColumns() {
        for _ in 0..<4 {
            rebuildSingleColumn()
        }
        
        
    }
    
    func rebuildSingleColumn() {
        turnAlongColumn()
        repeareColumn()
        moveToNextColumn()
    }
    
    func turnAlongColumn() {
        if rightIsClear {
            turnRight()
        }
        else if leftIsClear {
            turnLeft()
        }
    }
    
    func repeareColumn() {
        while frontIsClear {
            putCandyIfNeeded()
            move()
        }
        putCandyIfNeeded()
    }
    
    func putCandyIfNeeded(){
        if noCandyPresent {
            put()
        }
    }
    
    func moveToNextColumn() {
        turnAbsoluteRight()
        for _ in 0..<4 {
            if frontIsClear {
                move()
            }
        }
    }
    
    func turnAbsoluteRight(){
        while noFacingRight {
            turnRight()
        }
    }
    
}


