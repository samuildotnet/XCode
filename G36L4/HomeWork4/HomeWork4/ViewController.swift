//
//  ViewController.swift
//  HomeWork4
//
//  Created by Ярослав on 02.02.16.
//  Copyright © 2016 Ярослав. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        var testArray2 = [Int]()
        var testArray = [Int]()
        for _ in 0..<20 {
            testArray.append(Int(arc4random_uniform(10)))
        }
        print("Not sorted: \(testArray)")
        //print(testArray[0])
        var temp : Int
        for i in 0..<20 {
            for y in 0..<20 {
                if testArray[i] <= testArray[y] {
                    temp = testArray[i]
                    testArray[i] = testArray[y]
                    testArray[y] = temp
                }
            }
        }
        
        
        print("Sorted: \(testArray)")
        
        for i in 1..<20 {
            if testArray[i] != testArray[i-1] {
                testArray2.append(testArray[i-1])
            }
        }
        //print(testArray2)
        if testArray[19] != testArray2[testArray2.count - 1] {
            testArray2.append(testArray[19])
        }
        
        print("Histogram:")
        
        for i in testArray2 {
            print("\(i): ", terminator:"")
            for j in testArray {
                if i == j {
                    
                    
                    print("* ", terminator:"")
                }
            }
            print("")
        }
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    @IBAction func aimButton() {
        let clearView = UIView(frame: CGRect(x: 1, y: 75, width: 500, height: 500))
        clearView.backgroundColor = UIColor.whiteColor()
        view.addSubview(clearView)
        let text = Int(inputField.text!)!
        print(text)
        
        for var j=1; j <= text; j++ {
            let aim = UIView(frame: CGRect(x: 100 + (10 * j), y: 180 + (10 * j), width: 100 - (20 * j), height: 100 - (20 * j)))
            if j % 2 == 0 {
                aim.backgroundColor = UIColor.blueColor()
            } else {
                aim.backgroundColor = UIColor.redColor()
            }
            view.addSubview(aim)
        }
        
    }
    
    
    @IBAction func pyramideButton() {
        let clearView = UIView(frame: CGRect(x: 1, y: 75, width: 500, height: 500))
        clearView.backgroundColor = UIColor.whiteColor()
        view.addSubview(clearView)
        let text = Int(inputField.text!)! + 1
        print(text)
        for var i=1; i < text; i++ {
            for var j=1; j <= (text - i); j++ {
                let pyramide = UIView(frame: CGRect(x: 25 * (i - 1) + 50 * j, y: 180 + (20 * i), width: 5, height: 5))
                pyramide.backgroundColor = UIColor.blueColor()
                view.addSubview(pyramide)
            }
        }
        
    }
    
    
    @IBOutlet weak var inputField: UITextField!
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

