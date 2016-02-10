import UIKit


class SwiftRobotControlCenter: RobotControlCenter {
    
    override func viewDidLoad() {
        
        levelName = "L55H"
        
        super.viewDidLoad()
    }
    
    override func viewDidAppear(animated: Bool) {
        
       
        super.viewDidAppear(animated)
        
        if levelName == "L2H"{
            l2h()
        }
        
        if levelName == "L22H"{
            l2h()
        }
        
        if levelName == "L2C"{
            l2c()
        }
        
        if levelName == "L3C"{
            l2c()
        }
        
        if levelName == "L4H"{
            l4h()
        }
        
        if levelName == "L55H"{
            l4h()
        }
        
        if levelName == "L555H"{
            l4h()
        }
        
        if levelName == "L1C"{
            l1c()
        }
        
        if levelName == "L11C"{
            l1c()
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

    func l2h() {
        builColumnUp()
        moveToColumn()
        
        builColumnDown()
        moveToColumn()
        
        builColumnUp()
        moveToColumn()
        
        builColumnDown()
    }
    
    func l2c() {
        for _ in 0..<14 {
            if frontIsBlocked {
                turnAbsDown()
                while leftIsBlocked {
                    move()
                }
                turnAbsRight()
                move()
                turnAbsUp()
                while frontIsClear {
                    move()
                }
                turnAbsRight()
            } else {
                move()
            }
        }
        
    }
    
    func l1c(){
        move()
        countCandy()
        move()
        returnCandy()
        
    }

    func l4h(){
//        findZero()
//        candyToCorner()
//        findZero()
//        cornerClear()
//        findZero()
//        chessBuild()
//        chessClear()
//        worldCenter()
        x()
        
        
    }
    func x() {
        while rightIsClear {
            put()
            move()
            turnAbsDown()
            move()
            turnAbsRight()
            put()
        }
        
        turnAbsUp()
        moveToWall()
        turnAbsLeft()
        while leftIsClear {
            put()
            move()
            turnAbsDown()
            move()
            turnAbsLeft()
            put()
        }
    }
    
    func countCandy(){
        while candyPresent {
            pick()
            move()
            put()
            put()
            turnAbsLeft()
            move()
            turnAbsRight()
        }
    }
    
    func returnCandy(){
        while candyPresent {
            pick()
            turnAbsLeft()
            move()
            put()
            turnAbsRight()
            move()
            
        }
    }
    
    func candyToCorner(){
        for _ in 0..<3 {
            if noCandyPresent {
                put()
                moveToWall()
                turnRight()
            }
        }
        put()
    }
    
    func cornerClear(){
        for _ in 0..<3 {
            if candyPresent {
                pick()
                moveToWall()
                turnRight()
            }
        }
        pick()
    }
    
    func chessBuild(){
        buildLine1()
        while rightIsClear {
            returnLine()
            buildLine2()
            returnLine()
            buildLine1()
        }
        
    }
    
    func chessClear(){
        findZero()
        while rightIsClear {
            while frontIsClear {
                pick()
                pick()
                move()
            }
            pick()
            pick()
            returnLine()
        }
        while frontIsClear {
            pick()
            pick()
            move()
            pick()
        }
        findZero()
        
    }
    
    func worldCenter(){
        verticalCenter()
        horizontalCenter()
    }
    
    func verticalCenter(){
        turnAbsDown()
        while frontIsClear {
            move()
            put()
        }
        reverse()
        while candyPresent {
            pick()
            move()
            while candyPresent {
                move()
            }
            reverse()
            move()
            
        }

    }

    func horizontalCenter(){
        turnAbsRight()
        while frontIsClear {
            move()
            put()
        }
        reverse()
        while candyPresent {
            pick()
            move()
            while candyPresent {
                move()
            }
            reverse()
            move()
           
        }
        
    }
    
    func reverse (){
        if facingLeft {
            turnAbsRight()
            return
        }
        
        if facingRight {
            turnAbsLeft()
            return
        }

        if facingUp {
            turnAbsDown()
            return
        
        }
        
        if facingDown {
            turnAbsUp()
            return
        }
    }
    
    func moveToColumn() {
        turnAbsRight()
        doubleMove()
        doubleMove()
    }
    
    func buildLine1() {
        while frontIsClear {
            
            put()
            move()
            
            if frontIsBlocked {
                return
            }
            if frontIsClear {
                move()
            }
            
            put()
            
        }
    }
    
    func buildLine2() {
        while frontIsClear {
            
            
            move()
           
            
            put()
            
            
            if frontIsBlocked {
                return
            }
            if frontIsClear {
                move()
            }
        }
    }

    func returnLine(){
        if rightIsClear {
            turnAbsDown()
            move()
            turnAbsLeft()
            moveToWall()
            turnAbsRight()
        }
    }
    
    func findZero(){
        turnAbsLeft()
        moveToWall()
        turnAbsUp()
        moveToWall()
        turnAbsRight()
    }
    
    func turnAbsLeft(){
        if facingUp {
            turnLeft()
            return
        }
        if facingDown {
            turnRight()
            return
        }
        if facingRight {
            turnRight()
            turnRight()
            return
        }
    }
    
    func turnAbsRight(){
        if facingUp {
            turnRight()
            return
        }
        if facingDown {
            turnLeft()
            return
        }
        if facingLeft {
            turnRight()
            turnRight()
            return
        }
    }
    
    func turnAbsUp(){
        if facingRight {
            turnLeft()
            return
        }
        
        if facingLeft {
            turnRight()
            return
        }
        
        if facingDown {
            turnRight()
            turnRight()
            return
        }
    }
    
    func turnAbsDown(){
        if facingRight {
            turnRight()
            return
        }
        
        if facingLeft {
            turnLeft()
            return
        }
        
        if facingUp {
            turnRight()
            turnRight()
            return
        }
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
    
    func moveAbsRightL2H(){
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
        while frontIsClear {
            move()
        }
    }
    
}


