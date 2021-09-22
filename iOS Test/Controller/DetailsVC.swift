//
//  DetailsVC.swift
//  iOS Test
//
//  Created by Ali Ezzeldin on 2021-09-21.
//

import UIKit

struct CellData {
    var opened = Bool()
    var title = String()
    var sectionData = [String]()
}

class DetailsVC: UIViewController {
    
    //MARK: - Properties
    let detailsView = DetailsView()
    
    var tableViewData = [CellData]()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        detailsView.tableViewCarDetails.delegate = self
        detailsView.tableViewCarDetails.dataSource = self
        detailsView.tableViewCarDetails.register(CarDetailsTableViewCell.self, forCellReuseIdentifier: CarDetailsTableViewCell.identifier)
        self.detailsView.tableViewCarDetails.separatorStyle = UITableViewCell.SeparatorStyle.none
        carModelsArr.removeAll()
        for item in availableCars {
            if selectedName == item.name {
                let years =  getCarYearsForModel(modelName: item.model)
                
                tableViewData.append(CellData(opened: false, title: item.model, sectionData: years))
                
            }
        }
        
    }
    func getCarYearsForModel(modelName: String) -> [String] {
        var arrOfResult = [String]()
        for item in availableCars {
            if modelName == item.model {
                
                arrOfResult.append(item.year)
            }
            
        }
        return arrOfResult
    }
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        setupViews()
    }
    //MARK: - SetupViews
    func setupViews() {
        
        view.addSubview(detailsView)
        detailsView.frame = CGRect(x: 0, y: 44, width: view.frame.width, height: view.frame.height - 78)
        
    }
}
//MARK: - Implement Table view Data Source and Delegate
extension DetailsVC: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        tableViewData.count
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if tableViewData[section].opened == true {
            
            return tableViewData[section].sectionData.count + 1
        } else {
            return 1
        }
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CarDetailsTableViewCell.identifier, for: indexPath) as! CarDetailsTableViewCell
        
        if indexPath.row == 0 {
            cell.lblItem.text = tableViewData[indexPath.section].title
        } else {
            cell.lblItem.text = tableViewData[indexPath.section].sectionData[indexPath.row - 1]
        }
        
        return cell
    }
    // Change the table view cell background color
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        cell.backgroundColor = UIColor.clear
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            selectedModel = tableViewData[indexPath.section].title
        if tableViewData[indexPath.section].opened == true {
            tableViewData[indexPath.section].opened = false
            let sections = IndexSet.init(integer: indexPath.section)
            tableView.reloadSections(sections, with: .automatic)
        } else {
            tableViewData[indexPath.section].opened = true
            let sections = IndexSet.init(integer: indexPath.section)
            tableView.reloadSections(sections, with: .automatic)
            }
        } else {
            selectedYear = tableViewData[indexPath.section].sectionData[indexPath.row - 1]
            let officesVC = OfficesVC()
            navigationController?.pushViewController(officesVC, animated: true)
            
        }
    }
}
