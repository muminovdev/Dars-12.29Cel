//
//  FirstViewController.swift
//  Dars 12.29Cel
//
//  Created by Mac on 29/12/22.
//

import UIKit

class FirstViewController: UIViewController {
    let tableview = UITableView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height), style: .grouped)
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(tableview)
        title = "tableViewCell"
        tableview.delegate = self
        tableview.dataSource = self
        tableview.register(TableViewCell.self, forCellReuseIdentifier: "cell")
        tableview.register(SecondTableViewCell.self, forCellReuseIdentifier: "cell2")
        tableview.register(Header.self, forHeaderFooterViewReuseIdentifier: "header")
        tableview.backgroundColor = .white
        
        
        for family in UIFont.familyNames.sorted() {
            let names = UIFont.fontNames(forFamilyName: family)
            print("Family: \(family) Font names: \(names)")
        }
       
    }

}
extension FirstViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = tableView.dequeueReusableHeaderFooterView(withIdentifier: "header")

        return header
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row % 2 == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell2", for: indexPath) as! SecondTableViewCell
            cell.label.text = "Baxtiyor"
            return cell
            
        }
        else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
            cell.label.text = "Baxtiyor bugun sosst 5da turmoxchi edi lekin qotib qoldi "
            return cell
        }
        
    }
}
