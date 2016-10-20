//
//  ViewController.swift
//  JPL
//
//  Created by Max Ru on 10/08/16.
//  Copyright © 2016 Max Ru. All rights reserved.
//

import UIKit
import CoreMotion

class ViewController: UIViewController {
    @IBOutlet weak var aboutButton: UIButton!
    @IBOutlet weak var controllerButton: UIButton!
    @IBOutlet weak var asd: UILabel!
    
    var motionManager = CMMotionManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        controllerButton.layer.cornerRadius = 10
        aboutButton.layer.cornerRadius = 10
        
        motionManager.accelerometerUpdateInterval = 0.5
        
        //Motion Sensor
        if (motionManager.isAccelerometerAvailable){
            motionManager.startAccelerometerUpdates(
                to: OperationQueue.current!,
                withHandler: {(accelData: CMAccelerometerData?, errorOC: Error?) in
                    self.outputAccelDataToMySQl(acceleration: (accelData?.acceleration)!)
            })
        }
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return UIInterfaceOrientationMask.portrait
    }
    
    override var shouldAutorotate: Bool {
        return false
    }
    
    func outputAccelDataToMySQl(acceleration: CMAcceleration){
        let url = URL(string: "http://csproject.calstatela.edu:4050/test_environment/InputController?x=\(acceleration.x)&y=\(acceleration.y)&z=\(acceleration.z)")!
        let request = URLRequest(url: url)

        let task = URLSession.shared.dataTask(with: request) {data, response, error in
            if error != nil {
                print("error=\(error)")
                self.asd.text = "Error"
                return
            }
        }
        task.resume()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
