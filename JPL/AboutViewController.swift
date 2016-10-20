//
//  AboutViewController.swift
//  JPL
//
//  Created by Max Ru on 10/08/16.
//  Copyright © 2016 Max Ru. All rights reserved.
//

import UIKit

class AboutViewController: UIViewController {
    
    @IBOutlet weak var vestaButton: UIButton!
    @IBOutlet weak var marsButton: UIButton!
    @IBOutlet weak var weightInMarsButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        vestaButton.layer.cornerRadius = 10
        marsButton.layer.cornerRadius = 10
        weightInMarsButton.layer.cornerRadius = 10
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
