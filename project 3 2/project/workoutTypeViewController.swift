//
//  workoutTypeViewController.swift
//  project
//
//  Created by Mopuru,Bharath Kumar Reddy on 5/1/23.
//

import UIKit

class worklis{
        var name : String = ""
        var reps : Int = 0
        var time : Int = 0
        var img : UIImage?
    init(name : String,reps : Int,time : Int,img : UIImage){
        self.name = name
        self.reps = reps
        self.time = time
        self.img = img
    }
}
var na = ""
var re = 0
var ti = 0
var img : UIImage?
var wo = [worklis]()
class workoutTypeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        wo.removeAll()
        return wd[0].list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = worktypeList.dequeueReusableCell(withIdentifier: "typeCell", for: indexPath)
        cell.textLabel?.text = t!.list[indexPath.row].name
        na = t!.list[indexPath.row].name
        re = t!.list[indexPath.row].rep
        ti = t!.list[indexPath.row].time
        img = t!.list[indexPath.row].img
        
        var p = worklis(name: na, reps: re, time: ti, img: img!)
        wo.append(p)
        return cell
    }
    
    var t : Work?
    
    @IBOutlet weak var worktypeList: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        worktypeList.delegate = self
        worktypeList.dataSource = self
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
           let transition = segue.identifier
        if(transition == "imgSegue"){
            let destination = segue.destination as! TableResultViewController
            destination.tab = wo[(worktypeList.indexPathForSelectedRow?.row)!]
        }
        
    }
}
