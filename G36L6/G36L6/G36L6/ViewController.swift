//
//  ViewController.swift
//  G36L6
//
//  Created by Ivan Vasilevich on 2/8/16.
//  Copyright © 2016 Ivan Besarab. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var myTextField: UITextField!
    let restoran = NIRestaurant()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        print("Ivan")
//    myTextField.text = "piska"
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        print("Besarab")
        myTextField.text = "piska"
        // Do any additional setup after loading the view, typically from a nib.
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "showDefaultOfRestaurant:", name: kRestaurantDefaultNotification, object: nil)
    }
    
    func showDefaultOfRestaurant(notification: NSNotification) {
        
        view.backgroundColor = UIColor.redColor()
        
    }
    
    @IBAction func showWhiteScreen(sender: AnyObject) {
        
        performSegueWithIdentifier("showWhite", sender: nil)
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let whiteVC = segue.destinationViewController as? WhiteViewController {
            whiteVC.message = myTextField.text!
        }
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        print("All")
    }
    
    @IBAction func dayLost() {
        restoran.newDayCome()
        navigationController?.popViewControllerAnimated(true)
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        print("viewWillLayoutSubviews")
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        print("viewDidLayoutSubviews")
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        print("viewDidAppear")
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        print("viewWillDisappear")
    }
    
    override func viewDidDisappear(animated: Bool) {
        super.viewDidDisappear(animated)
        print("viewDidDisappear")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    deinit {
        // perform the deinitialization
        NSNotificationCenter.defaultCenter().removeObserver(self)
    }



}

