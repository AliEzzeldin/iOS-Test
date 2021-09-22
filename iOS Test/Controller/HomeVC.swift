//
//  ViewController.swift
//  iOS Test
//
//  Created by Ali Ezzeldin on 2021-09-20.
//

import UIKit

class HomeVC: UIViewController {
    
    //MARK: - Properties
    let homeView = HomeView()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        fillCarsDataArr()
        
        homeView.collectionviewCarItem.delegate = self
        homeView.collectionviewCarItem.dataSource = self
        homeView.collectionviewCarItem.register(CarItemCollectionViewCell.self, forCellWithReuseIdentifier: CarItemCollectionViewCell.identifier)
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        setupViews()
    }
    //MARK: - SetupViews
    func setupViews() {
        
        view.addSubview(homeView)
        homeView.frame = CGRect(x: 0, y: 44, width: view.frame.width, height: view.frame.height - 78)
        
    }
    //MARK: - Filling cars data array
    func fillCarsDataArr() {
        
        availableCars = [
            AvailableCars(name: "BMW", model: "C200", office: "Florya", year: "2021", logo: #imageLiteral(resourceName: "bmw")),
            
            AvailableCars(name: "Mercedes", model: "S300", office: "Florya", year: "2021", logo: #imageLiteral(resourceName: "merceds")),
            
            AvailableCars(name: "BMW", model: "C200", office: "Florya", year: "2020", logo: #imageLiteral(resourceName: "bmw")),
            
            AvailableCars(name: "Mercedes", model: "S300", office: "Florya", year: "2020", logo: #imageLiteral(resourceName: "merceds")),
            
            AvailableCars(name: "Fiat", model: "F200", office: "Florya", year: "2021", logo: #imageLiteral(resourceName: "fiat")),
            
            AvailableCars(name: "Mercedes", model: "S300", office: "Florya", year: "2019", logo: #imageLiteral(resourceName: "merceds")),
            
            AvailableCars(name: "Fiat", model: "F200", office: "Florya", year: "2020", logo: #imageLiteral(resourceName: "fiat")),
            
            AvailableCars(name: "Opel", model: "O300", office: "Florya", year: "2021", logo: #imageLiteral(resourceName: "opel")),
            
            AvailableCars(name: "Fiat", model: "F200", office: "Florya", year: "2019", logo: #imageLiteral(resourceName: "fiat")),
            
            AvailableCars(name: "Opel", model: "O300", office: "Florya", year: "2020", logo: #imageLiteral(resourceName: "opel")),
            
            AvailableCars(name: "Tesla", model: "T500", office: "Maslak", year: "2021", logo: #imageLiteral(resourceName: "tesla")),
            
            AvailableCars(name: "Opel", model: "O300", office: "Florya", year: "2019", logo: #imageLiteral(resourceName: "opel")),
            
            AvailableCars(name: "Tesla", model: "T500", office: "Maslak", year: "2020", logo: #imageLiteral(resourceName: "tesla")),
            
            AvailableCars(name: "BMW", model: "C400", office: "Maslak", year: "2019", logo: #imageLiteral(resourceName: "bmw")),
            
            AvailableCars(name: "Tesla", model: "T500", office: "Maslak", year: "2019", logo: #imageLiteral(resourceName: "tesla")),
            
            AvailableCars(name: "BMW", model: "C400", office: "Maslak", year: "2018", logo: #imageLiteral(resourceName: "bmw")),
            
            AvailableCars(name: "Fiat", model: "F250", office: "Maslak", year: "2018", logo: #imageLiteral(resourceName: "fiat")),
            
            AvailableCars(name: "Mercedes", model: "S400", office: "Maslak", year: "2018", logo: #imageLiteral(resourceName: "merceds")),
            
            AvailableCars(name: "Fiat", model: "F250", office: "Maslak", year: "2017", logo: #imageLiteral(resourceName: "fiat")),
            
            AvailableCars(name: "Opel", model: "O400", office: "Merter", year: "2018", logo: #imageLiteral(resourceName: "opel")),
            
            AvailableCars(name: "Mercedes", model: "S400", office: "Maslak", year: "2017", logo: #imageLiteral(resourceName: "merceds")),
            
            AvailableCars(name: "Opel", model: "O400", office: "Merter", year: "2017", logo: #imageLiteral(resourceName: "opel")),
            
            AvailableCars(name: "Tesla", model: "T700", office: "Merter", year: "2018", logo: #imageLiteral(resourceName: "tesla")),
            
            AvailableCars(name: "Reno", model: "R400", office: "Merter", year: "2018", logo: #imageLiteral(resourceName: "reno")),
            
            AvailableCars(name: "Tesla", model: "T700", office: "Merter", year: "2017", logo: #imageLiteral(resourceName: "tesla")),
            
            AvailableCars(name: "Reno", model: "R400", office: "Merter", year: "2017", logo: #imageLiteral(resourceName: "reno")),
            
            AvailableCars(name: "Nissan", model: "N300", office: "Merter", year: "2019", logo: #imageLiteral(resourceName: "nissan")),
            
            AvailableCars(name: "Kia", model: "K500", office: "sefaKoy", year: "2020", logo: #imageLiteral(resourceName: "kia")),
            
            AvailableCars(name: "Nissan", model: "N300", office: "Merter", year: "2019", logo: #imageLiteral(resourceName: "nissan")),
            
            AvailableCars(name: "Toyota", model: "Y500", office: "sefaKoy", year: "2018", logo: #imageLiteral(resourceName: "toyota")),
            
            AvailableCars(name: "Toyota", model: "Y500", office: "sefaKoy", year: "2018", logo: #imageLiteral(resourceName: "toyota")),
            
            AvailableCars(name: "Kia", model: "K500", office: "sefaKoy", year: "2020", logo: #imageLiteral(resourceName: "kia"))
        ]
    }
}
//MARK: - Collection view data source and delegate
extension HomeVC: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        10
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return availableCars.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CarItemCollectionViewCell.identifier, for: indexPath) as! CarItemCollectionViewCell
        
        cell.data = availableCars[indexPath.row]
        
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let width = ((homeView.collectionviewCarItem.frame.width - 30) / 2)
        let height = CGFloat(200.0)
        
        return CGSize(width: width, height: height)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        selectedName = availableCars[indexPath.item].name
        let detailsVC = DetailsVC()
        navigationController?.pushViewController(detailsVC, animated: true)
    }
}
