//
//  VCTable.swift
//  POSLiteWeb
//
//  Created by Python on 5/24/20.
//  Copyright © 2020 Python. All rights reserved.
//

import UIKit

class VCTable: UIViewController,UITableViewDataSource,UITableViewDelegate { // 2nd stape
  
    
    @IBOutlet var table: UITableView!
    let arrayName = ["sanjay","prasant", "hemant", "peter", "pubg"]
    let arrayAge = ["34","54", "56", "67", "76"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        table.dataSource = self //  3rd step
        table.delegate = self  //
        
    }

    
    
    func myFun() -> String {
        return ""
    }
    
    
   
    
    
    
    
    
      // 4 sptep
      func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return arrayName.count
      }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
    
    
//      // 5th step
//      func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//
//        // 6 step
//        let cell = UITableViewCell.init(style: .value1, reuseIdentifier: "none")
//
//        cell.textLabel?.text  = arrayName[indexPath.row]
//        cell.detailTextLabel?.text = "Janu"
//
//        return cell
//
//
//      }
//
    
    
    
    // 5th step  custom cell
        
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
                   
           // 6 step
            let cell = CellTable.commonInit()
           
            cell.lblName.text = arrayName[indexPath.row]
            cell.lblAge.text = arrayAge[indexPath.row]

           return cell
           

         
    }
       
    
    
    
    
    
    
    // cell selection
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let alertController = UIAlertController.init(title: arrayName[indexPath.row], message: "janu", preferredStyle: .alert)
        let cancel = UIAlertAction.init(title: "OK", style: .cancel, handler: nil)
        alertController.addAction(cancel)
        self.present(alertController, animated: true, completion: nil)
    }

}
