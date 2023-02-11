//
//  SecondViewController.swift
//  navigator1
//
//  Created by Mayar Adel on 8/7/22.
//

import UIKit

class SecondViewController: UIViewController {
    
    var main : NavigationProtocol!
    var msg: String = ""
    var furnitureDetails : DataOfChair!

    @IBOutlet weak var chairBackground: UIView!
    @IBOutlet weak var imgChair: UIImageView!
    @IBOutlet weak var chairColor: UIView!
    @IBOutlet weak var chairQuantity: UIView!
    @IBOutlet weak var chairPrice: UIView!
    @IBOutlet weak var chairDetails: UILabel!
    @IBOutlet weak var lbl: UILabel!
    @IBOutlet weak var stringColor: UILabel!
    @IBOutlet weak var stingQuantity: UILabel!
    
    @IBOutlet weak var loveBT: UIButton!
    @IBOutlet weak var stringPrice: UILabel!
    
    @IBOutlet weak var addToCart: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        lbl.text = msg
        imgChair.image = furnitureDetails.photo
        stringPrice.text = "\(furnitureDetails.price)"
        stringColor.text = furnitureDetails.itemColor
        stingQuantity.text = furnitureDetails.quantity
        chairDetails.text = furnitureDetails.details
        
        chairBackground.backgroundColor = furnitureDetails.cellColor
        
        chairBackground.layer.cornerRadius = 70
        chairBackground.layer.maskedCorners = [CACornerMask.layerMinXMaxYCorner]
        
        addToCart.layer.cornerRadius = 40
        addToCart.layer.maskedCorners = [CACornerMask.layerMinXMinYCorner]
        
        lbl.layer.cornerRadius = (lbl.frame.height/2)
        loveBT.layer.cornerRadius = (loveBT.frame.height/2)
        
        
        
        
        
        
       
    }
    /**
     struct DataOfChair {
         let photo : UIImage
         let name : String
         let description1 : String
         let description2 : String
         let price : Double
         let cellColor : UIColor
         let itemColor : String
         let quantity : String
         let details : String
     }     */
    
    

  
    @IBAction func btAddToCart(_ sender: Any) {
        var n = Int(lbl.text!)
      
           n = n! + 1
        lbl.text = String(n!)
           
       
        main.update(lbl.text!)
       
    
    }
    
}
