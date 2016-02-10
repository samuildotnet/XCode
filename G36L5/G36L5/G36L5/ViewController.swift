//
//  ViewController.swift
//  G36L5
//
//  Created by Ivan Vasilevich on 2/3/16.
//  Copyright © 2016 Ivan Besarab. All rights reserved.
//

import UIKit

let kRunsCount = "kRunsCount"

class ViewController: UIViewController {
    
    var carsDescription = [String]()
    
    @IBOutlet weak var imageBox: UIImageView!
    @IBOutlet weak var drugsButton: UIButton!
    @IBOutlet weak var mainLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let fileUrl = NSBundle.mainBundle().URLForResource("CarsDescription", withExtension: "plist") {
            print(fileUrl)
            if let array = NSArray(contentsOfURL: fileUrl) {
                carsDescription = array as! [String]
            }
        }
        
        
        // Do any additional setup after loading the view, typically from a nib.
        var runCount = NSUserDefaults.standardUserDefaults().integerForKey(kRunsCount)
        print("run #\(runCount++)")
        NSUserDefaults.standardUserDefaults().setInteger(runCount, forKey: kRunsCount)
        view.backgroundColor = UIColor(rgb: 0xFFF81A, alphaVal: 1)
        view.backgroundColor = UIColor.randomColor()
        
        
        
        
    }

    
    @IBAction func buttonsPressed(sender: UIButton) {
        print("button \(sender.currentTitle!) Pressed")
        secondButtonsMethod(sender, forEvent: UIEvent())
        let carImage = UIImage(named: "Car\(sender.tag)")
        imageBox.image = carImage
        mainLabel.text = carsDescription[sender.tag]
    }
    
    @IBAction func secondButtonsMethod(sender: UIButton, forEvent event: UIEvent) {
        print("dsds")
    }
    
    override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {
        if let touchSet = touches as? NSSet {
            if let touch = touchSet.anyObject() {

                drugsButton.center = touch.locationInView(view)
            }
            
        }
    }
    


}



