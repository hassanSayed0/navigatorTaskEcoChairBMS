//
//  ViewController.swift
//  navigator1
//
//  Created by Mayar Adel on 8/6/22.
//

import UIKit
protocol NavigationProtocol {
    func update(_ count : String)
}

class ViewController: UIViewController , UICollectionViewDelegate , UICollectionViewDataSource {
    
    @IBOutlet weak var lbl: UILabel!
    var arrChair = [DataOfChair]()
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    @IBOutlet weak var orangeBT: UIButton!
    @IBOutlet weak var txtField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        lbl.text = "0"
        arrChair.append(DataOfChair(photo: UIImage(named: "chair1")!, name: "chair1", description1: "nice chair", description2: "for long time working", price: 125, cellColor: #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1), itemColor: "Gray", quantity: "01", details: "chair11111111111111111111111111111111111111111111"))
        arrChair.append(DataOfChair(photo: UIImage(named: "chair2")!, name: "chair2", description1: "nice chair", description2: "for office", price: 300, cellColor: #colorLiteral(red: 0.06274510175, green: 0, blue: 0.1921568662, alpha: 1), itemColor: "dark Yellow", quantity: "02" , details: "chair2222222222222222222222222222222222222222222"))
        
        arrChair.append(DataOfChair(photo: UIImage(named: "chair3")!, name: "chair3", description1: "nice chair", description2: "relaxing chair", price: 200, cellColor: #colorLiteral(red: 0.3098039329, green: 0.01568627544, blue: 0.1294117719, alpha: 1), itemColor: "lihgt Yellow", quantity: "01" , details: "chair3333333333333333333333333333333333333333"))
        
        arrChair.append(DataOfChair(photo: UIImage(named: "chair4")!, name: "chair4", description1: "nice chair", description2: "for home", price: 125, cellColor: #colorLiteral(red: 0.1294117719, green: 0.2156862766, blue: 0.06666667014, alpha: 1), itemColor: "blue", quantity: "2" ,  details: "chair4444444444444444444444444444444444444444"))
        
        arrChair.append(DataOfChair(photo: UIImage(named: "chair5")!, name: "chair5", description1: "nice chair", description2: "school lab chair", price: 90, cellColor: #colorLiteral(red: 0.1215686277, green: 0.01176470611, blue: 0.4235294163, alpha: 1), itemColor: "brouwn", quantity: "01" , details: "chair55555555555555555555555555555555555555"))
        
        arrChair.append(DataOfChair(photo: UIImage(named: "chair6")!, name: "chair6", description1: "nice chair", description2: "for home", price: 105, cellColor: #colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1), itemColor: "red", quantity: "02" , details: "chair6666666666666666666666666666666666666666"))
        
        
        
       // txtField.layer.cornerRadius = 20
        
        lbl.layer.cornerRadius = (lbl.frame.height/2)
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrChair.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! HomeCollectionViewCell
        let data = arrChair[indexPath.row]
        cell.setupCell(photo: data.photo, name: data.name, descroption1: data.description1, description2: data.description2, price: data.price)
        cell.minView.layer.cornerRadius = 20
        cell.minView.backgroundColor = data.cellColor
        
        orangeBT.layer.cornerRadius = (orangeBT.frame.height / 4)
       
        //let vc = self.storyboard?.instantiateViewController(withIdentifier: "Screen2") as! SecondViewController
    //    vc.main = self
//        vc.stringColor.text = arrChair[indexPath.row].itemColor
        
   return cell

}
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let vc = storyboard?.instantiateViewController(identifier: "Screen2") as! SecondViewController
        let data = arrChair[indexPath.row]
        vc.furnitureDetails = data
        vc.main = self
        vc.msg = lbl.text!
        navigationController?.pushViewController(vc, animated: true)
    }
    
}

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
    }

extension ViewController : NavigationProtocol
{
   
    
    func update(_ count: String)
    {
        self.lbl.text = count
    }


}
