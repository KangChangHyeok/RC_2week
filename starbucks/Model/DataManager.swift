//
//  DataManager.swift
//  starbucks
//
//  Created by 강창혁 on 2022/05/25.
//

import UIKit

class DataManager {
    var menuArray: [Menu] = []

    func makeMenuData() {
        menuArray = [Menu(menuImage: UIImage(named: "Americano.png"), menuName: "아메리카노", menuEName: "Iced Caffe Americano", menuPrice: "4500원", menuDetail: "진한 에스프레소에 시원한 정수물과 얼음을 더하여 스타벅스의 깔끔하고 강렬한 에스프레소를 가장 부드럽고 시원하게 즐길 수 있는 커피"),
                     Menu(menuImage: UIImage(named: "CaffeLatte.png"), menuName: "카페라떼", menuEName: "Iced Caffe Latte", menuPrice: "5000원", menuDetail: "풍부하고 진한 농도의 에스프레소가 시원한 우유와 얼음을 만나 고소함과 시원함을 즐길 수 있는 대표적인 커피 라떼"),
                     Menu(menuImage: UIImage(named: "HoneyBlackTea.png"), menuName: "허니블랙티", menuEName: "Iced Honey Black Tea", menuPrice: "5700원", menuDetail: "새콤한 자몽과 달콤한 꿀이 깊고 그윽한 풍미의 스타벅스 티바나 블랙티의 조화"),
                     Menu(menuImage: UIImage(named: "JavaChipFrappuccino.png"), menuName: "자바 칩 프라푸치노", menuEName: "Java Chip Frappuccino", menuPrice: "6300원", menuDetail: "커피, 모카 소스, 진한 초콜릿 칩이 입안 가득 느껴지는 스타벅스에서만 맛볼 수 있는 프라푸치노")]
    }
    
    func getMenuData() -> [Menu] {
        return menuArray
    }
}
