//
//  ViewController.swift
//  HomeWork2
//
//  Created by Ярослав on 26.01.16.
//  Copyright © 2016 Ярослав. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        halloWorld()
        print("--------------------")
        printHalloWorld(10)
        print("--------------------")
        printWeek(weekDay(14))
        
        let number = Double(arc4random_uniform(125))
        let firstNumber = Double(arc4random_uniform(125))
        let secondNumber = Double(arc4random_uniform(125))
        
        
        
        let bigerNumber = compareNumbers(firstNumber, number2: secondNumber)
        print("Biger Number of \(firstNumber) and \(secondNumber) is \(bigerNumber)")
        print("--------------------")
        let squareNumber = square(number)
        print("Square of \(number) is \(squareNumber)")
        print("--------------------")
        let qubeNumber = qube(number)
        print("Qube of \(number) is \(qubeNumber)")
        print("--------------------")
        printRangeOfNumbers(Int(firstNumber), number2: Int(secondNumber))
        print("--------------------")
        printDividers(Int(number))
        print("--------------------")
        isNumberPerfect(Int(number))
        print("--------------------")
        projectManhattan()
        print("--------------------")
        student()
        print("--------------------")
        student2()
        print("--------------------")
        reverseNum(52)
        print("--------------------")
        reverseNum(14)
        print("--------------------")
        reverseNum(21)
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    func halloWorld(){
        print("Hallo World")
    }
    
    func printHalloWorld(printTimes:Int){
        for (var i=0; i<printTimes;i++){
            halloWorld()
        }
    }
    
    func printWeek(day:String){
        print(day)
    }
    
    func weekDay(var dayNumber:Int) ->String{
        if dayNumber > 7 {
            dayNumber = dayNumber % 7
        }
        switch dayNumber {
        case 1:
            return "Monday"
        case 2:
            return "Tuesday"
        case 3:
            return "Wednesday"
        case 4:
            return "Thursday"
        case 5:
            return "Friday"
        case 6:
            return "Saturday"
        case 7:
            return "Sunday"
        default: return "Sunday"
 
        }
        
    }
    
    
    func compareNumbers(number1:Double, number2:Double) ->Double {
        if number1 > number2 {
            return number1
        } else if number2 > number1 {
            return number2
        } else {
            return number1
        }
    }
    
    func square(number:Double) ->Double {
        return number*number
    }
    
    func qube(number:Double) ->Double {
        return number*number*number
    }
    
    func printRangeOfNumbers(number1:Int, number2:Int) {
        
        if number1 > number2 {
            print("Range of numbers from \(number2) to \(number1):")
            for (var i=number2; i<=number1; i++){
                print(i)
            }
            for (var i=number1-1; i>=number2; i--){
                print(i)
            }
        }
        
        if number2 > number1 {
            print("Range of numbers from \(number1) to \(number2):")
            for (var i=number1; i<=number2; i++){
                print(i)
            }
            for (var i=number2-1; i>=number1; i--){
                print(i)
            }
        }
        
       
    }
    
    func printDividers(number:Int) {
        print("Dividers for \(number) is:")
        for (var i=1; i<=number; i++) {
            if number%i==0 {
                print(number/i)
            }
        }
    }
    
    func isNumberPerfect(number:Int) {
        var num = 0
        
        for (var i=1; i<number; i++) {
            if number%i==0 {
                num = num + i
            }
        }
        
        if num == number {
            print("The number \(number) is perfect")
            print("Dividers of \(number) are:")
            for (var i=1; i<number; i++) {
                if number%i==0 {
                    print(i)
                }
            }
        } else {
            print("The number \(number) is not perfect")
        }
        
    }
    
    func projectManhattan() {
        let buyYear = 1826
        let startPrice:Double = 24
        let currentYear = 2016
        let percent = 1.06
        var currentPrice:Double = startPrice
        
        for (var i=0; i<currentYear-buyYear; i++) {
            currentPrice = currentPrice * percent
        }
        
        print("Current Manhattan price: \(currentPrice)")
    }
    
    func student() {
        let stependia = 700.00
        let zatratu = 1000.00
        let percent = 1.03
        let studentLife = 10
        var neededMoney:Double = 0
        var neededMoneyTemp:Double = zatratu

        
        for (var i=0; i<studentLife; i++) {
            
            neededMoney = neededMoney + stependia - neededMoneyTemp
            neededMoneyTemp = neededMoneyTemp * percent
        }

        
        print("Student needs: \(-neededMoney)")
        
    }
    
    func student2() {
        var deposit = 2400.00
        let stependia = 700.00
        var zatratu = 1000.00
        let percent = 1.03
        var studentLife = 0
        
        while deposit > 0 {
            deposit = deposit + stependia - zatratu
            zatratu = zatratu * percent
            if deposit < 0 {
                studentLife--
            }
            studentLife++
        }
        
        print("Student can stand: \(studentLife) month")
        
    }
    

    
    
    func reverseNum(var number:Int) {
        let num = number
        var reverseNumber = 0
        while (number != 0) {
            reverseNumber = reverseNumber * 10 + number % 10
            number = number / 10
        }
        print ("Reverse number of \(num) is \(reverseNumber)")
    }
}

