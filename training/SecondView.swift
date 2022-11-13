//
//  SecondView.swift
//  training
//
//  Created by Giorgi Samkharadze on 10.11.22.
//

import UIKit

class SecondView: UIViewController {

    @IBOutlet weak var Label1: UILabel!
    let delay : Double = 4.5
    override func viewDidLoad() {
        super.viewDidLoad()
        
        seg()

        // Do any additional setup after loading the view.
    }
    func seg() {
        DispatchQueue.main.asyncAfter(deadline: .now() + delay) {
            self.performSegue(withIdentifier: "GoTo3rd", sender: self)
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
