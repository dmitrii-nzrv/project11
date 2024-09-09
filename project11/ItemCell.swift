//
//  ItemCell.swift
//  project11
//
//  Created by Dmitrii Nazarov on 09.09.2024.
//

import UIKit

class ItemCell: UICollectionViewCell {
    
    static let reuseID: String = "ItemCell"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
