//
//  OtherController.swift
//  starbucks
//
//  Created by 강창혁 on 2022/05/23.
//

import UIKit

class BasketController: UIViewController {
    @IBOutlet weak var basketTableV: UITableView!
    
    var basketData : [Menu] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        basketTableV.dataSource = self
        
    }
    
}


extension BasketController: dataSendDelegate {
    func sendData(data: Menu) {
        basketData.append(data)
        basketTableV.reloadData()
    }
    
    
}

extension BasketController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return basketData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = basketTableV.dequeueReusableCell(withIdentifier: "BasketTableViewCell", for: indexPath) as! BasketTableViewCell
    
        cell.basketMenuImage.image = basketData[indexPath.row].menuImage
        cell.basketMenuName.text = basketData[indexPath.row].menuName
        cell.basketMenuEName.text = basketData[indexPath.row].menuEName
        cell.basketMenuPrice.text = basketData[indexPath.row].menuPrice
        
        cell.selectionStyle = .none
        
        return cell
    }
    
}
