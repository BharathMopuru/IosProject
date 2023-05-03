//
//  DietViewController.swift
//  project
//
//  Created by Tejo Tata on 4/25/23.
//

import UIKit

class DietViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return n[0].nList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        var cell = dietCollectionOutlet.dequeueReusableCell(withReuseIdentifier: "diet", for: indexPath) as! DietCollectionViewCell
        cell.assignNutri(with: (vnv!.nList[indexPath.row]))
        return cell
    }
    
    
    
    @IBOutlet weak var typeDisplay: UILabel!
    
    
    @IBOutlet weak var caloriesDisplay: UILabel!
    
    @IBOutlet weak var carbsDisplay: UILabel!
    
    @IBOutlet weak var fatsDisplay: UILabel!
    
    
    @IBOutlet weak var proteinDisplay: UILabel!
    
    var vnv : TypeOfNutri?
    
  
    @IBOutlet weak var dietCollectionOutlet: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dietCollectionOutlet.delegate = self
        dietCollectionOutlet.dataSource = self
        // Do any additional setup after loading the view.
        typeDisplay.text! = "Type:- \( vnv!.nList[0].name)"
        caloriesDisplay.text! = "Calories :- \( vnv!.nList[0].calories)"
        carbsDisplay.text! = "carbohydrates:- \(vnv!.nList[0].carbs)"
        fatsDisplay.text! = "Fats:- \(vnv!.nList[0].fats)"
        proteinDisplay.text! = "Proteins:- \(vnv!.nList[0].proteins)"
       
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(indexPath)
        assignNutDetails(index: indexPath)
    }

    func assignNutDetails(index: IndexPath){
        typeDisplay.text! = "Type:- \(vnv!.nList[index.row].name)"
        caloriesDisplay.text! = "Calories :- \( vnv!.nList[index.row].calories)"
        carbsDisplay.text! = "carbohydrates:- \( vnv!.nList[index.row].carbs)"
        fatsDisplay.text! = "Fats:- \( vnv!.nList[index.row].fats)"
        proteinDisplay.text! = "Proteins:- \( vnv!.nList[index.row].proteins)"
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
