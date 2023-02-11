//
//  HomeCollectionViewCell.swift
//  navigator1
//
//  Created by Mayar Adel on 8/7/22.
//

import UIKit

class HomeCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imgChair: UIImageView!
    
    @IBOutlet weak var lbChairName: UILabel!
    
    @IBOutlet weak var lbDescription1: UILabel!
    
    @IBOutlet weak var minView: UIView!
    @IBOutlet weak var lpDescription2: UILabel!
    @IBOutlet weak var lbPrice: UILabel!
    
    func setupCell(photo : UIImage , name : String , descroption1 : String , description2 : String , price : Double)
    {
        imgChair.image = photo
        lbChairName.text = name
        lbDescription1.text = descroption1
        lpDescription2.text = description2
        lbPrice.text = "$ \(price)"
    }
}
