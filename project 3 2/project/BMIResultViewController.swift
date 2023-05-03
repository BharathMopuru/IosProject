//
//  BMIResultViewController.swift
//  project
//
//  Created by Tejo Tata on 4/24/23.
//

import UIKit

class BMIResultViewController: UIViewController {
    @IBOutlet weak var bmiImageOutlet: UIImageView!
    
    @IBOutlet weak var bmiStatusOutlet: UILabel!
    
    @IBOutlet weak var dietBtnOutlet: UIButton!
    
    @IBOutlet weak var workOutBtnOutlet: UIButton!
    var b : Double?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        bmiStatus()
        animate()

    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func dietBtn(_ sender: Any) {
    }
    @IBAction func workOutBtn(_ sender: Any) {
    }
    func bmiStatus(){
        if b! < 18.5 {
            bmiStatusOutlet.text = "Under Weight"
            bmiImageOutlet.image = UIImage(named: "underweight")
            
        }
        else if b! >= 18.5 && b! <= 24.9 {
            bmiStatusOutlet.text = "Normal Weight"
            bmiImageOutlet.image = UIImage(named: "normal")
        }
        else if b! > 24.9 && b! <= 29.9 {
            bmiStatusOutlet.text = "Over weight"
            bmiImageOutlet.image = UIImage(named: "overweight")
        }
        else if b! > 29.9 && b! <= 34.9 {
            bmiStatusOutlet.text = "Obesity"
            bmiImageOutlet.image = UIImage(named: "obese")
        }
        else if b! > 34.9 {
            bmiStatusOutlet.text = " Extrem Obesity"
            bmiImageOutlet.image = UIImage(named: "extremelyobese")
        }
       
    }
    func animate(){
        dietBtnOutlet.frame.origin.x = view.frame.maxX
        workOutBtnOutlet.frame.origin.x = view.frame.minX
        UIView.animate(withDuration: 2, animations: {
                    //Move all the compoenets to the center and disable show button
                    self.dietBtnOutlet.center.x = self.view.center.x
                    self.workOutBtnOutlet.center.x = self.view.center.x
        
    })
        var width = bmiImageOutlet.frame.width
                
                width += 40
                
                var height = bmiImageOutlet.frame.height
                
                height = height + 40
                
                var x  =  bmiImageOutlet.frame.origin.x-20
                
                
                var y = bmiImageOutlet.frame.origin.y-20
                
                var largeFrame = CGRect(x: x, y: y, width: width, height: height)
                
        UIView.animate(withDuration: 2, delay: 0, usingSpringWithDamping: 0.6, initialSpringVelocity: 35, animations: {
                    self.bmiImageOutlet.frame = largeFrame
                })
    }
    
}
