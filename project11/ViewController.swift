//
//  ViewController.swift
//  project11
//
//  Created by Dmitrii Nazarov on 08.09.2024.
//

import UIKit

struct CollectionData {
    let image: String
    let name: String
    let price: String
    let date: String
    let views: String
    let number: String
    
    static func mockData() -> [CollectionData] {
        [
            CollectionData(image: "car", name: "Volvo XC90, 2020", price: "6 690 000 ₽", date: "19 апреля", views: "2823 просмотров", number: "№1122360845"),
            CollectionData(image: "car2", name: "Chery Tiggo 8, 2022", price: "8 945 434", date: "31 мая", views: "3423 просмотров", number: "№1346460845"),
            CollectionData(image: "car", name: "Volvo XC90, 2020", price: "6 690 000 ₽", date: "19 апреля", views: "2823 просмотров", number: "№1122360845"),
            CollectionData(image: "car2", name: "Chery Tiggo 8, 2022", price: "8 945 434", date: "31 мая", views: "3423 просмотров", number: "№1346460845"),CollectionData(image: "car", name: "Volvo XC90, 2020", price: "6 690 000 ₽", date: "19 апреля", views: "2823 просмотров", number: "№1122360845"),
            CollectionData(image: "car2", name: "Chery Tiggo 8, 2022", price: "8 945 434", date: "31 мая", views: "3423 просмотров", number: "№1346460845"),
            CollectionData(image: "car2", name: "Chery Tiggo 8, 2022", price: "8 945 434", date: "31 мая", views: "3423 просмотров", number: "№1346460845"),
            CollectionData(image: "car2", name: "Chery Tiggo 8, 2022", price: "8 945 434", date: "31 мая", views: "3423 просмотров", number: "№1346460845"),
            
        ]
    }
}


class ViewController: UIViewController {

    private let data = CollectionData.mockData()
    
    lazy var collectionView: UICollectionView = {
        var layout = $0.collectionViewLayout as! UICollectionViewFlowLayout
        layout.scrollDirection = .vertical
        layout.estimatedItemSize = UICollectionViewFlowLayout.automaticSize
        layout.minimumInteritemSpacing = 10
        layout.minimumLineSpacing = 20
        
        $0.dataSource = self
        $0.register(ItemCell.self, forCellWithReuseIdentifier: ItemCell.reuseID)
        
        return $0
    }(UICollectionView(frame: view.frame, collectionViewLayout: UICollectionViewFlowLayout()))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        view.addSubview(collectionView)
    }
}

extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        data.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ItemCell.reuseID, for: indexPath) as! ItemCell
        
        
        return cell
    }
    
    
}
