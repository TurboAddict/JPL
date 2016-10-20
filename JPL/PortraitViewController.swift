//
//  PortraitViewController.swift
//  JPL
//
//  Created by Max Ru on 10/11/16.
//  Copyright © 2016 Max Ru. All rights reserved.
//

import UIKit

class PortraitViewController: UIViewController {
    @IBOutlet weak var label: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return UIInterfaceOrientationMask.portrait
    }
    
    override var shouldAutorotate: Bool {
        return false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   
    @IBAction func zoom(_ sender: AnyObject) {
        print("zoom")
    }

    @IBAction func swipeLeft(_ sender: AnyObject) {
        print("test")
    }
}
