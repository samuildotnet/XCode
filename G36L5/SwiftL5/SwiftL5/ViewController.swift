//
//  ViewController.swift
//  SwiftL5
//
//  Created by Ivan Vasilevich on 12/7/15.
//  Copyright © 2015 Ivan Besarab. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageBpx: UIImageView!
    
    let superSecretNSUserdefaultsKey = "superSecretNSUserdefaultsKey"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let bgimage = UIImage(named: "gost")!
        view.backgroundColor = UIColor(patternImage: bgimage)
        imageBpx.backgroundColor = UIColor.blackColor()
        print(NSUserDefaults.standardUserDefaults().valueForKey(superSecretNSUserdefaultsKey))
    }

    @IBAction func clear() {
        let carImage = UIImage(named: "car")
        imageBpx.image = carImage
        view.bringSubviewToFront(imageBpx)
        for box in view.subviews {
            if box.tag == 0 {
                let index = view.subviews.indexOf(box)!
                box.backgroundColor = (index % 2 == 0) ? UIColor.orangeColor() : UIColor.greenColor()
//                box.removeFromSuperview()
            }
        }
        view.viewWithTag(2)!.hidden = !view.viewWithTag(2)!.hidden
        if let textField = view.viewWithTag(2)! as? UITextField {
                    NSUserDefaults.standardUserDefaults().setValue(textField.text!, forKey: superSecretNSUserdefaultsKey)
            textField.backgroundColor = UIColor(
                red: 147/255.0,
                green: 255/255.0,
                blue: 105/255.0,
                alpha: 1)
        }

        saveInfo()
    }
    
    
    
    func saveInfo() {
        
        let nums: NSMutableArray = NSMutableArray(array: [13, 256, 7, 55])
        let documentsPath = NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true).first
        print(documentsPath)
        if let _ = try? nums.writeToFile(documentsPath!+"/file.plist", atomically: true) {
            print("success")
        }
    }

}

