//
//  NutrientsData.swift
//  project
//
//  Created by Mopuru,Bharath Kumar Reddy on 5/1/23.
//

import Foundation
import UIKit

struct Nutrients {
    var name : String
    var calories : String
    var carbs : String
    var fats : String
    var proteins : String
}
struct TypeOfNutri {
    var type : String
    var nList : [Nutrients] = []
}

var v = TypeOfNutri(type: "VEG", nList: [Nutrients(name: "Beans", calories: "42 calories per 12g", carbs: "8g per 12g", fats: "0.1g per 12g", proteins: "2.6g per 12g"),Nutrients(name: "Lentil", calories: "14 calories per 100g", carbs: "2.5g per 100g", fats: "0g per 100g", proteins: "1.1g per 100g"),Nutrients(name: "Brown rice", calories: "108 calories per 100g", carbs: "22g per 100g", fats: "1g per 100g", proteins: "3g per 100g"),Nutrients(name: "Avacado", calories: "240 calories per 100g", carbs: "13g per 100g", fats: "22g per 100g", proteins: "3g per 100g"),Nutrients(name: "sweet potato", calories: "114 calories per 100g", carbs: "27g per 100g", fats: "0.1g per 100g", proteins: "2.1g per 12g"),Nutrients(name: "Almonds", calories: "165 calories per 100g", carbs: "6g per 100g", fats: "14g per 100g", proteins: "6g per 100g"),Nutrients(name: "Broccoli", calories: "50 calories per 100g", carbs: "10g per 100g", fats: "0.5g per 100g", proteins: "4.2g per 100g")])

var nonv = TypeOfNutri(type: "NonVEG", nList: [Nutrients(name: "Beef", calories: "213 calories per 100g", carbs: "0g per 100g", fats: "13g per 100g", proteins: "22g per 100g"),Nutrients(name: "Chicken", calories: "335 calories per 100g", carbs: "0g per 100g", fats: "19g per 100g", proteins: "38g per 100g"),Nutrients(name: "Fish", calories: "366 calories per 100g", carbs: "0g per 100g", fats: "22g per 100g", proteins: "39g per 100g"),Nutrients(name: "Pork", calories: "206 calories per 100g", carbs: "0g per 100g", fats: "12g per 100g", proteins: "23g per 100g"),Nutrients(name: "Egg", calories: "78 calories per 100g", carbs: "0.6g per 100g", fats: "1.6g per 100g", proteins: "6g per 100g"),Nutrients(name: "goat", calories: "70 calories per 100g", carbs: "4.4g per 100g", fats: "3.8g per 100g", proteins: "3.5g per 100g"),Nutrients(name: "crab", calories: "83 calories per 100g", carbs: "0g per 100g", fats: "1.2g per 100g", proteins: "17.7g per 100g")])

var n = [v,nonv]

