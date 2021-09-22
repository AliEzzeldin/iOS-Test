//
//  HomeView.swift
//  iOS Test
//
//  Created by Ali Ezzeldin on 2021-09-20.
//

import UIKit

class HomeView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.addSubview(collectionviewCarItem)
        
        collectionviewCarItem.anchor(top: self.topAnchor, leading: self.leadingAnchor, bottom: self.bottomAnchor, trailing: self.trailingAnchor, padding: UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0))
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - UI Components
    let collectionviewCarItem: UICollectionView = {
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 5, left: 10, bottom: 5, right: 10)
        
        let collectionview = UICollectionView(frame: CGRect.zero, collectionViewLayout: layout)
        
        collectionview.backgroundColor = .clear
        
        //MARK: - Collection View Scrollable
        layout.scrollDirection = .vertical
        
        return collectionview
    }()
}
