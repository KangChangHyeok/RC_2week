//
//  OrderController.swift
//  starbucks
//
//  Created by 강창혁 on 2022/05/23.
//

import UIKit

class OrderController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self

    }

}


extension OrderController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5 // 한 개의 섹션당 10개의 셀을 표시하겠다
    }
    
    // 특정 row에 표시할 cell 리턴
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // 내가 정의한 Cell 만들기
        let cell = tableView.dequeueReusableCell(withIdentifier: "FirstCell", for: indexPath) as! TableViewCell
        // Cell Label의 내용 지정
        cell.tableViewCellLabel.text = "추천"
        
        // 생성한 Cell 리턴
        return cell
    }
}
