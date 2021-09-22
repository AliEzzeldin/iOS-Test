//
//  DetailsView.swift
//  iOS Test
//
//  Created by Ali Ezzeldin on 2021-09-21.
//

import UIKit

class DetailsView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.addSubview(tableViewCarDetails)
        
        tableViewCarDetails.anchor(top: self.topAnchor, leading: self.leadingAnchor, bottom: self.bottomAnchor, trailing: self.trailingAnchor, padding: UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0))
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - UI Components
    let tableViewCarDetails: UITableView = {
        let tableView = UITableView(frame: CGRect.zero)
        tableView.bounces = false
        tableView.showsVerticalScrollIndicator = false
        tableView.rowHeight = 46
        return tableView
    }()
}
