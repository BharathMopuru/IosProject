//
//  File.swift
//  project
//
//  Created by Mopuru,Bharath Kumar Reddy on 5/1/23.
//

import Foundation
import ModelIO

struct Nutrients {
    var name : String
    var calories : String
    var carbs : String
    var fats : String
    var proteins : String
}
struct Type {
    var type : String
    var nList : [Nutrients] = []
}

var v = Type(type: "VEG", nList: [Nutrients(name: <#T##String#>, calories: <#T##String#>, carbs: <#T##String#>, fats: <#T##String#>, proteins: <#T##String#>)])

var nonv = Type(type: "NonVEG", nList: [Nutrients(name: <#T##String#>, calories: <#T##String#>, carbs: <#T##String#>, fats: <#T##String#>, proteins: <#T##String#>)])
