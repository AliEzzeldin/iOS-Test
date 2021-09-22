//
//  CarItemCollectionViewCell.swift
//  iOS Test
//
//  Created by Ali Ezzeldin on 2021-09-20.
//

import UIKit

class CarItemCollectionViewCell: UICollectionViewCell {
    
    //MARK: - Properties
    static let identifier = "CarItemCollectionViewCell"
    var data: AvailableCars? {
        didSet {
            guard let carData = data else {return}
            imgItem.image = carData.logo
            lblItem.text = carData.name
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        layer.cornerRadius = 15.0
        contentView.layer.borderWidth = 0.5
        
        contentView.layer.borderColor = UIColor.clear.cgColor
        layer.backgroundColor = UIColor.white.cgColor
        layer.shadowColor = UIColor.gray.cgColor
        layer.shadowOffset = .zero
        layer.shadowRadius = 3.0
        layer.shadowOpacity = 0.3
        layer.masksToBounds = false
        
        contentView.addSubview(imgItem)
        contentView.addSubview(lblItem)
        
        imgItem.anchor(top: contentView.topAnchor, leading: contentView.leadingAnchor, bottom: nil, trailing: contentView.trailingAnchor, padding: UIEdgeInsets(top: 8, left: 64, bottom: 0, right: 64), size: CGSize(width: 0, height: 150))
        
        lblItem.anchor(top: nil, leading: contentView.leadingAnchor, bottom: contentView.bottomAnchor, trailing: contentView.trailingAnchor, padding: UIEdgeInsets(top: 0, left: 64, bottom: 8, right: 64), size: CGSize(width: 0, height: 30))
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - UIComponents
    let imgItem: UIImageView = {
       let image = UIImageView()
        image.contentMode = .scaleAspectFit
        image.contentMode = .center
        return image
    }()
    let lblItem: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = label.font.withSize(16)
        label.textAlignment = .center
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 0.5
        label.sizeToFit()
        return label
    }()
}
