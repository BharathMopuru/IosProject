//
//  workoutsdata.swift
//  project
//
//  Created by Mopuru,Bharath Kumar Reddy on 5/1/23.
//

import Foundation
import UIKit

struct Work{
    var type : String = ""
    var list : [WorkoutList] = []
}
struct WorkoutList{
    var name : String = ""
    var rep : Int = 0
    var time : Int = 0
    var img : UIImage?
}

var w1 = Work(type: "Cardio", list: [WorkoutList(name: "Running", rep: 3, time: 40, img: UIImage(named: "Running")!),WorkoutList(name: "Cycling", rep: 2, time: 30, img: UIImage(named: "Cycling")!),WorkoutList(name: "Jumping rope", rep: 3, time: 35, img: UIImage(named: "Jumping rope")!),WorkoutList(name: "Rowing", rep: 2, time: 32, img: UIImage(named: "Rowing")!),WorkoutList(name: "Dancing", rep: 2, time: 60, img: UIImage(named: "Dancing")!),WorkoutList(name: "climbing stairs", rep: 2, time: 30, img: UIImage(named: "climbing steps")!),WorkoutList(name: "treadmills", rep: 2, time: 60, img: UIImage(named: "Treadmill")!)] )
var w2 = Work(type: "workouts", list: [WorkoutList(name: "Barbell squats", rep: 3, time: 25, img: UIImage(named: "Barbell squats")!),WorkoutList(name: "Deadlifts", rep: 3, time: 32, img: UIImage(named: "Deadlifts")!),WorkoutList(name: "Bench press", rep: 5, time: 30, img: UIImage(named: "Bench press")!),WorkoutList(name: "Overhead press", rep: 3, time: 30, img: UIImage(named: "Overhead press")!),WorkoutList(name: "Rows", rep: 3, time: 35, img: UIImage(named: "Rows")!),WorkoutList(name: "Bicep curls", rep: 3, time: 40, img: UIImage(named: "Bicep curls")!),WorkoutList(name: "Tricep extensions", rep: 5, time: 45, img: UIImage(named: "Tricep extensions")!)] )
var w3 = Work(type: "Yoga", list: [WorkoutList(name: "Sun salutations", rep: 5, time: 15, img: UIImage(named: "Sun salutations")!),WorkoutList(name: "Warrior poses", rep: 4, time: 24, img: UIImage(named: "Warrior poses")!),WorkoutList(name: "Downward facing dog", rep: 4, time: 20, img: UIImage(named: "Downward facing dog")!),WorkoutList(name: "Child's pose", rep: 2, time: 10, img: UIImage(named: "Child's pose")!),WorkoutList(name: "Tree pose", rep: 2, time: 12, img: UIImage(named: "Tree pose")!),WorkoutList(name: "Cobra pose", rep: 4, time: 16, img: UIImage(named: "Cobra pose")!),WorkoutList(name: "Corpse pose", rep: 1, time: 5, img: UIImage(named: "Corpse pose")!)] )
var wd = [w1,w2,w3]
