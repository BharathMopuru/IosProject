//
//  TableResultViewController.swift
//  project
//
//  Created by Tejo Tata on 4/24/23.
//

import UIKit

class TableResultViewController: UIViewController {

    @IBOutlet weak var tableImageOutlet: UIImageView!
    
    @IBOutlet weak var tableSatusOutlet: UITextView!
    
    var tab : worklis?
   
  
     override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tableImageOutlet.image = tab!.img
         tableSatusOutlet.text = "\(tab!.name) need to do \(tab!.reps) repos each of \(tab!.time) minutes"
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
