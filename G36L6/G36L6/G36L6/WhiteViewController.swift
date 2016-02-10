//
//  WhiteViewController.swift
//  G36L6
//
//  Created by Ivan Vasilevich on 2/8/16.
//  Copyright © 2016 Ivan Besarab. All rights reserved.
//

import UIKit

class WhiteViewController: UIViewController {
    
    var message = ""

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)

        title = message
    }
   
    @IBAction func moveBack() {
        navigationController?.popViewControllerAnimated(true)
    }
}
