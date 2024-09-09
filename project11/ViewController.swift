//
//  ViewController.swift
//  project11
//
//  Created by Dmitrii Nazarov on 08.09.2024.
//

import UIKit


class ViewController: UIViewController {


    private let data = CollectionData.mockData()
    
    lazy var collectionView: UICollectionView = {
        
        var layout = $0.collectionViewLayout as! UICollectionViewFlowLayout
        layout.scrollDirection = .vertical
        
        //автоматический размер
        layout.estimatedItemSize = UICollectionViewFlowLayout.automaticSize
        layout.minimumInteritemSpacing = 10
        layout.minimumLineSpacing = 20
        
        $0.dataSource = self
        $0.register(ItemCell.self, forCellWithReuseIdentifier: ItemCell.reuseID)
        $0.contentInset = UIEdgeInsets(top: 0, left: 30, bottom: 0, right: 30)
        
    return $0
    }(UICollectionView(frame: view.frame, collectionViewLayout: UICollectionViewFlowLayout()))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(collectionView)
        
    }


}



extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        data.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ItemCell.reuseID, for: indexPath) as! ItemCell
       
        let item = data[indexPath.item]
        
        cell.setupCell(item: item)
        
        //cell.contentView.backgroundColor = .red
        return cell
    }
    
    
}
