//
//  OfficesTableViewCell.swift
//  iOS Test
//
//  Created by Ali Ezzeldin on 2021-09-22.
//

import UIKit

class OfficesTableViewCell: UITableViewCell {

    //MARK: - Properties
    static let identifier = "OfficesTableViewCell"
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        setupViews()
    }
    //MARK: - SetupViews
    func setupViews() {
        
        layer.cornerRadius = 15.0
        contentView.layer.borderWidth = 0.5
        
        contentView.layer.borderColor = UIColor.clear.cgColor
        layer.backgroundColor = UIColor.white.cgColor
        layer.shadowColor = UIColor.gray.cgColor
        layer.shadowOffset = .zero
        layer.shadowRadius = 3.0
        layer.shadowOpacity = 0.3
        layer.masksToBounds = false
        
        contentView.addSubview(lblItem)
        
        lblItem.anchor(top: contentView.topAnchor, leading: contentView.leadingAnchor, bottom: contentView.bottomAnchor, trailing: contentView.trailingAnchor, padding: UIEdgeInsets(top: 8, left: 64, bottom: 8, right: 64), size: CGSize(width: 0, height: 30))
    }
    //MARK: - UIComponents
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
