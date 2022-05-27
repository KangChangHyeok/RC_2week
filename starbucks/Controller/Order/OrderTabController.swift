//
//  OrderTabController.swift
//  starbucks
//
//  Created by 강창혁 on 2022/05/25.
//

import UIKit

protocol dataSendDelegate {
    func sendData(data: Menu)
}
class OrderTabController: UIViewController {

    @IBOutlet weak var orderTabImageV: UIImageView!
    @IBOutlet weak var orderTabNameLabel: UILabel!
    @IBOutlet weak var orderTabENameLabel: UILabel!
    @IBOutlet weak var orderTabDetailLabel: UILabel!
    @IBOutlet weak var orderTabPrice: UILabel!
    @IBOutlet weak var orderButton: UIButton!
    
    var menuData: Menu?
    var delegate : dataSendDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Setup()
        orderButtonSetup()
    }
    func Setup() {
        orderTabImageV.image = menuData?.menuImage
        orderTabNameLabel.text = menuData?.menuName
        orderTabENameLabel.text = menuData?.menuEName
        orderTabDetailLabel.text = menuData?.menuDetail
        orderTabPrice.text = menuData?.menuPrice
    }
    func orderButtonSetup() {
        orderButton.tintColor = .white
        orderButton.clipsToBounds = true
        orderButton.layer.cornerRadius = orderButton.layer.frame.height / 2
        orderButton.backgroundColor = UIColor(red: 0.01, green: 0.40, blue: 0.21, alpha: 1.00)
    }
    @IBAction func OrderButtonTaaped(_ sender: UIButton) {
        if let data = menuData {
            delegate?.sendData(data: data)
            print(data)
        }
        self.navigationController?.popViewController(animated: true)
    }
    
}



