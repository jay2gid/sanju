//
//  VCTable.swift
//  POSLiteWeb
//
//  Created by Python on 5/24/20.
//  Copyright © 2020 Python. All rights reserved.
//

import UIKit

class VCTable: UIViewController,UITableViewDataSource,UITableViewDelegate {
  
    
    @IBOutlet var table: UITableView!
    
    let arrayName = ["sanjay","prasant", "hemant", "peter", "pubg"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        table.dataSource = self
        table.delegate = self
    }

    
    
    func myFun() -> String {
        return ""
    }
    
    
    
    
    
      func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return arrayName.count
      }
      
      func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
                
            let cell = UITableViewCell.init(style: .value1, reuseIdentifier: "none")

            cell.textLabel?.text  = arrayName[indexPath.row]
            cell.detailTextLabel?.text = "janu"
            
            return cell
        
      }
    
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let alertController = UIAlertController.init(title: arrayName[indexPath.row], message: "janu", preferredStyle: .alert)
        let cancel = UIAlertAction.init(title: "OK", style: .cancel, handler: nil)
        alertController.addAction(cancel)
        self.present(alertController, animated: true, completion: nil)
    }

}
