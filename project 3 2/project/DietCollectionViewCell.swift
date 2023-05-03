//
//  DietCollectionViewCell.swift
//  project
//
//  Created by Tejo Tata on 4/24/23.
//

import UIKit

class DietCollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet weak var imageDietOutlet: UIImageView!
   
    func assignNutri(with nuti : Nutrients){
        imageDietOutlet.image = UIImage(named: nuti.name)
    }
    
}
