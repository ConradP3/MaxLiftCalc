//
//  ViewController.swift
//  Max Lift
//
//  Created by Conrad Pereira on 6/7/20.
//  Copyright © 2020 Pereira. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var weightLb: UITextField!
    
    @IBOutlet weak var maxReps: UITextField!
    
    @IBOutlet weak var out: UILabel!
    
    @IBOutlet weak var compLift: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       
       
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
 
   
    
    @IBAction func calcMax(_ sender: Any) {
        
        var liftType = compLift.text
        let weightVal = Double(weightLb.text!)
        let repVal = Double(maxReps.text!)
        
        
        
        let maxLift = Double(weightVal!+repVal!*5)
        
       
        
        
        out.text = "Predicted Max: \(maxLift)"
        
    }
    
    func squat(weight: Double, reps: Double) -> Double {
        let maxLift = Double(weight+reps*5)
        
        return Double(maxLift)
        
    }
    
    
}

