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
    
    @IBAction func didTapButton(_ sender: AnyObject) {
       let vc = UIViewController()
           vc.view.backgroundColor = .red
           navigationController?.pushViewController(vc, animated: true)
       }
       // Exercises
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
 
    
    @IBAction func calcMax(_ sender: Any) {
        
        let liftType = compLift.text
        var maxLift = Double(0.0)
        let weightVal = Double(weightLb.text!)
        let repVal = Double(maxReps.text!)
        
        if(liftType! == "squat"){
            maxLift = squat(weight: weightVal!, reps: repVal!)
            out.text = "Predicted Max: \(maxLift)"
            
        }else if(liftType! == "bench"){
            maxLift = bench(weight: weightVal!, reps: repVal!)
            out.text = "Predicted Max: \(maxLift)"
            
        }else if(liftType! == "deadlift"){
            maxLift = deadlift(weight: weightVal!, reps: repVal!)
            out.text = "Predicted Max: \(maxLift)"
            
        }else if(liftType! == "hangclean"){
            maxLift = hangclean(weight: weightVal!, reps: repVal!)
            out.text = "Predicted Max: \(maxLift)"
            
        }else{
            out.text = "Error Enter: squat, bench, deadlift, or handclean"
        }
    
        
        
        
        
    }
    
    func squat(weight: Double, reps: Double) -> Double {
        
        let k = Double(0.0333)
        // Brzycki formula
        let maxLift = Double((weight*reps*(k))+weight)
        
        return Double(maxLift)
        
    }
    func bench(weight: Double, reps: Double) -> Double {
        
        let k = Double(0.0333)
        // Brzycki formula
        let maxLift = Double((weight*reps*(k))+weight)
        
        return Double(maxLift)
        
    }
    func deadlift(weight: Double, reps: Double) -> Double {
        
        let k = Double(0.0333)
        // Brzycki formula
        let maxLift = Double((weight*reps*(k))+weight)
        
        return Double(maxLift)
        
    }
    func hangclean(weight: Double, reps: Double) -> Double {
        
        let k = Double(0.0333)
        // Brzycki formula
        let maxLift = Double((weight*reps*(k))+weight)
        
        return Double(maxLift)
        
    }
    
    
   
   
        
    

}

