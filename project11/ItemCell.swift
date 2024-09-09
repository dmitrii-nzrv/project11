//
//  ItemCell.swift
//  project11
//
//  Created by Dmitrii Nazarov on 09.09.2024.
//

//error nil

import UIKit

protocol CellProtocol: AnyObject{
    static var reuseID: String { get }
}


//1 class - полный доступ по всей программе
//2 функиция - если элемент повторояется внутри 1 класса
//3 клоужер - если 1 элемент на весь класс


class ItemCell: UICollectionViewCell, CellProtocol{
    
    static var reuseID = "ItemCell"
    
    lazy var profileImg: UIImageView = {
        $0.contentMode = .scaleAspectFill
        $0.clipsToBounds = true
        $0.translatesAutoresizingMaskIntoConstraints = false
        
        $0.heightAnchor.constraint(equalToConstant: 60).isActive = true
        $0.widthAnchor.constraint(equalToConstant: 60).isActive = true
        $0.layer.cornerRadius = 30
        
        return $0
    }(UIImageView())
    
    lazy var profileName: UILabel = CustomLabel(labelFont: .systemFont(ofSize: 20, weight: .bold))
    
    lazy var imageView: UIImageView = {
        $0.contentMode = .scaleAspectFill
        $0.clipsToBounds = true
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UIImageView())
    
    lazy var dateLabel: UILabel = CustomLabel(labelFont: .systemFont(ofSize: 14, weight: .regular))
    
    lazy var cellHeader: UILabel = CustomLabel(labelFont: .systemFont(ofSize: 20, weight: .black))
    lazy var celltext: UILabel = CustomLabel()
    
    lazy var cellWidth: CGFloat = UIScreen.main.bounds.width
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        
        [imageView, cellHeader, celltext, profileImg, profileName, dateLabel].forEach{
            contentView.addSubview($0)
        }
        
        contentView.backgroundColor = .gray
        
    }
    
    func setupCell(item: CollectionData){
        imageView.image = UIImage(named: item.image)
        cellHeader.text = item.name
        celltext.text = item.description
        profileImg.image = UIImage(named: item.profileImage)
        profileName.text = item.profileName
        dateLabel.text = item.date
        setConstraints()
    }
    
    
    private func setConstraints(){
        let hAnchor = imageView.heightAnchor.constraint(equalTo: imageView.widthAnchor, multiplier: imageView.image?.getRatio() ?? 1)
        hAnchor.priority = .defaultHigh
        
        NSLayoutConstraint.activate([
            
            profileImg.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 20),
            profileImg.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            
            profileName.topAnchor.constraint(equalTo: profileImg.topAnchor, constant: 15),
            profileName.leadingAnchor.constraint(equalTo: profileImg.trailingAnchor, constant: 10),
            
            
            
            imageView.topAnchor.constraint(equalTo: profileImg.bottomAnchor, constant: 20),
            imageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            imageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            imageView.widthAnchor.constraint(equalToConstant: cellWidth - 60),
            hAnchor,
            
            dateLabel.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 10),
            dateLabel.leadingAnchor.constraint(equalTo: cellHeader.leadingAnchor),
            
            cellHeader.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            cellHeader.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10),
            cellHeader.topAnchor.constraint(equalTo: dateLabel.bottomAnchor, constant: 10),
            
            celltext.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            celltext.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10),
            celltext.topAnchor.constraint(equalTo: cellHeader.bottomAnchor, constant: 10),
            celltext.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -20)
            
        
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}


extension UIImage{
    func getRatio() -> CGFloat?{
        return self.size.height / self.size.width
    }
}

class CustomLabel: UILabel{
    
    init(labelFont: UIFont = UIFont.systemFont(ofSize: 16, weight: .light)) {
        super.init(frame: .zero)
        translatesAutoresizingMaskIntoConstraints = false
        font = labelFont
        numberOfLines = 0
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
