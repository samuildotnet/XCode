//
//  ViewController.swift
//  G36L4
//
//  Created by Ivan Vasilevich on 2/1/16.
//  Copyright © 2016 Ivan Besarab. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var tucCounter = 0
    @IBOutlet weak var inputField: UITextField!
    override func viewDidLoad() {
        print("viewDidLoadStart")
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let odessa = NIRestuarant(initialName: "Odessa", initialRaiting: Raiting.Default, tablesCount: 25)
        odessa.changeRaitingToCountOfStars(Raiting.fiveStar)
        
        
        let famous = NIRestuarant(initialName: "Famous", initialRaiting: Raiting.fourStar, tablesCount: 255)
        famous.changeRaitingToCountOfStars(.oneStar)
        
        
        print(NIRestuarant.bestOfRestuarants(odessa, restB: famous))
        
        print("viewDidLoadEnd")
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        print(inputField.text!)
                tucCounter++
        let box = UIView(frame: CGRect(x: Int(arc4random_uniform(400)), y: 240, width: 23, height: 23))
        box.backgroundColor = UIColor.redColor()
        view.addSubview(box)
        print(tucCounter)
    }
    
    
    @IBAction func buttonPressed() {
        tucCounter++
        let box = UIView(frame: CGRect(x: Int(arc4random_uniform(400)), y: 240, width: 23, height: 23))
        box.backgroundColor = UIColor.greenColor()
        view.addSubview(box)
    }
}

