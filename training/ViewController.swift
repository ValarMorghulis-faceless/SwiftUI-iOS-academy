//
//  ViewController.swift
//  training
//
//  Created by Giorgi Samkharadze on 09.11.22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelll: UILabel!
    @IBOutlet weak var buttonPressed: UIButton!
    let titleText : String = "Wait...."
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonreallyPredded(_ sender: UIButton) {
        //labelanim()
        performSegue(withIdentifier: "GoTo2nd", sender: self)
    }
//
//    func labelanim() {
//        var charindex = 0.0
//        for i in titleText {
//            Timer.scheduledTimer(withTimeInterval: 0.5 * charindex, repeats: false) { timer in
//                self.buttonPressed.titleLabel!.text? += "\(i)"
//                if self.buttonPressed.titleLabel?.text == "Wait...." {
//                    self.buttonPressed.titleLabel?.text =  "Start"
//                }
//            }
//            charindex += 1
//
//        }
//
//
//    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "GoTo2nd" {
            let destinatonVC = segue.destination as! SecondView
            var charindex = 0.0
           // destinatonVC.Label1.text! = "Wait"
            for i in 0..<10 {
                Timer.scheduledTimer(withTimeInterval: 0.5 * charindex, repeats: false) { timer in
                    destinatonVC.Label1.text! += "."
                    if destinatonVC.Label1.text! == "Wait...."{
                        destinatonVC.Label1.text! = "Wait"
                    }
                    
                }
                charindex += 1
                
            }
            
        }
    }
        
    
    
}

