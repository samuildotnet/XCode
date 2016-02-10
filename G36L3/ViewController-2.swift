//
//  ViewController.swift
//  G36L3
//
//  Created by Ivan Vasilevich on 1/27/16.
//  Copyright © 2016 Ivan Besarab. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var name = "Ivan"
        let secondName = "Besarab"
        
        if secondName.hasPrefix("Bes") {
            print("secondName contains prefix \"Bes\"")
        }
        
        name = name + " Vasilevich"
        print("my name is \(name.uppercaseString), name lenght = \(name.characters.count)")
        
        for singleChar in name.characters {
            print(singleChar)
            break
        }
        
        
        let strNumber = "5o3"
        if let realNumber = Int(strNumber) {
            print("number from str is \(realNumber)")
        }
        else {
            print("no number in str")
        }
        
        
        let stringToSearch = "Do any additional setup after loading the view, typically from a nib"
        let searchablePeace = "setup"
        
        if let range = stringToSearch.rangeOfString(searchablePeace) {
            print(searchablePeace + " position is " + String(range.endIndex))
        }
        
        var students = "Dima, Farhod, Vladimir, Taras, Nikita, Yaroslav, Serg, Vlad, Illya".componentsSeparatedByString(", ")
        print("G36L3 group = \(students), students count = \(students.count)")
        print("Student #4 = \(students[3])")
        
        students.insert("Ivan", atIndex: 2)
        
        for nick in students {
            print("hello \(nick)")
        }
        
        //        ["Dima", "Farhod"]
        
        var japAutos = [
            "haciroku":"toyota ae86",
            "sliva":"silvia",
            "lisa":"subaru impreza hatchback",
            "fox":"subaru impreza hatchback",
            "pockemon":"subaru impreza hatchback",
            "konuktivit":"subaru impreza hatchback",
            "legendary engine":"2jz gte"]
        
        NSLog("%@", japAutos)
        
        print("sliva = " + String(japAutos["sjliva"]))
        
        for pair in japAutos {
            print(pair.1)
        }
        
        var testArray = [Int]()
        for _ in 0..<20 {
            testArray.append(Int(arc4random_uniform(10)))
        }
        
        print(testArray)
        
    }
    
}

