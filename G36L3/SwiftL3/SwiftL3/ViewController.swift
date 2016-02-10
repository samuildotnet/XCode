//
//  ViewController.swift
//  SwiftL3
//
//  Created by Ivan Vasilevich on 12/2/15.
//  Copyright © 2015 Ivan Besarab. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var commandTextField: UITextField!
    @IBOutlet weak var centerLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let stringWithPossibleNumber = "26"
        
        if let number = Int(stringWithPossibleNumber) {
            let secondNum = number + 5
            print("summ of myNumber & 5 = \(secondNum)")
        } else {
            print("string does not contains number")
        }
        
        
        let pikachu = Pokemon()
        pikachu.name = "Pikachu"
        pikachu.magic = "thunder"
        pikachu.weight = 3
        pikachu.damage = 30
        pikachu.inBall()
        
        
        let slouPok = Pokemon()
        slouPok.name = "SlouPok"
        slouPok.magic = "slowness"
        slouPok.weight = 8.3
        slouPok.damage = Int(arc4random_uniform(UInt32(50)))
        
        slouPok.kickBy(pikachu)
        
        print(slouPok)
        
        pikachu.kickBy(slouPok)
        
        print(pikachu.description)
        
        
        
        
    }

    @IBAction func buttonPressed(sender: AnyObject) {
        print("JOB DONE")
        centerLabel.text = commandTextField.text
        
        let box = UIView()
        box.frame.size.height = 40
        box.frame.size.width = 40
        box.frame.origin.x = 100
        box.frame.origin.y = CGFloat(arc4random_uniform(UInt32(300)))
        box.backgroundColor = UIColor.purpleColor()
//        view.addSubview(box)
    }
    
    
    
}

