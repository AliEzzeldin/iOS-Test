//
//  OfficesVC.swift
//  iOS Test
//
//  Created by Ali Ezzeldin on 2021-09-22.
//

import UIKit

class OfficesVC: UIViewController {
    
    //MARK: - Properties
    let officesView = OfficesView()
    var arrOfOffices = [String]()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        officesView.tableViewOffices.delegate = self
        officesView.tableViewOffices.dataSource = self
        officesView.tableViewOffices.register(OfficesTableViewCell.self, forCellReuseIdentifier: OfficesTableViewCell.identifier)
        self.officesView.tableViewOffices.separatorStyle = UITableViewCell.SeparatorStyle.none
        
        for item in availableCars {
            if selectedName == item.name && selectedModel == item.model && selectedYear == item.year {
                
                arrOfOffices.append(item.office)
            }
        }
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        setupViews()
    }
    //MARK: - SetupViews
    func setupViews() {
        
        view.addSubview(officesView)
        officesView.frame = CGRect(x: 0, y: 44, width: view.frame.width, height: view.frame.height - 78)
        
    }
}
//MARK: - Implement Table view Data Source and Delegate
extension OfficesVC: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return arrOfOffices.count
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: OfficesTableViewCell.identifier, for: indexPath) as! OfficesTableViewCell
        
        cell.lblItem.text = arrOfOffices[indexPath.row]
        
        return cell
    }
}
