//
//  OrderController.swift
//  starbucks
//
//  Created by 강창혁 on 2022/05/23.
//

import UIKit

class OrderController: UIViewController {


    var menuDataManager = DataManager()
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        menuDataManager.makeMenuData()
    }

}


extension OrderController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return menuDataManager.getMenuData().count
    }
    
    // 특정 row에 표시할 cell 리턴
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // 내가 정의한 Cell 만들기
        let cell = tableView.dequeueReusableCell(withIdentifier: "MenuCell", for: indexPath) as! TableViewCell
        // Cell Label의 내용 지정
        
        let menu = menuDataManager.getMenuData()[indexPath.row]
        cell.tableViewCellImageV.image = menu.menuImage
        cell.tableViewCellLabel.text = menu.menuName
        cell.tableViewCellELabel.text = menu.menuEName
        cell.tableViewPriceLabel.text = menu.menuPrice
        cell.selectionStyle = .none
        // 생성한 Cell 리턴
        return cell
    }
}


extension OrderController: UITableViewDelegate {

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "detail", sender: indexPath)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "detail" {
           let detail = segue.destination as! OrderTabController
            
            let array = menuDataManager.getMenuData()
            
            let indexPath = sender as! IndexPath
            
            detail.menuData = array[indexPath.row]
        }
    }
}
