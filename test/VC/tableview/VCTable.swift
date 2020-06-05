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
    
    
    // tuple
    let arrayData = [("sanjay","34","Jaipur"), ("prasant","12","Jalgaon"), ("hemant","15","Chirawa")]
    
    // array of dictionary
    var arrayDataDict = [[String:String]]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let dict1 = ["name" : "sanjay",  "age":"25", "city" : "Jaipur"]
        let dict2 = ["name" : "prasant",  "age":"12", "city" : "Jaipur"]
        
        arrayDataDict = [ dict1  , dict2 ]
        
        table.dataSource = self //  3rd step
        table.delegate = self  //
        
    }

    
    
    func myFun() -> String {
        return ""
    }
    
    
   
    
    
    
    
    
  // 4 sptep
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayDataDict.count
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
    
    
    // 5th step  custom cell
        
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
                   
        // 6 step
        let cell = CellTable.commonInit()
        
       
        
        // let tup  = arrayData[indexPath.row]
        
        
//        cell.lblName.text = "\(tup.0)"
//        cell.lblAge.text = "\(tup.1)"
//        cell.lblCity.text = "\(tup.2)"
        
        
        /// set dict data
        
        let dict = arrayDataDict[indexPath.row]
        
        cell.lblName.text = dict["name"]
        cell.lblAge.text = dict["age"]
        cell.lblCity.text = dict["city"]
        
        
        return cell

         
    }
    
    
    
    // cell selection
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
      
        let vcDetail = VCDetail.init(nibName: "VCDetail", bundle: nil)
        vcDetail.tuple = arrayData[indexPath.row]
        vcDetail.dictInfo = arrayDataDict[indexPath.row]
        self.navigationController?.pushViewController(vcDetail, animated: true)
        
//        drawView(raw_index: indexPath.row)
    }

    
    func drawView(raw_index:Int) {
        
        let viewDetail = ViewDetail.commonInit()
        viewDetail.dictInfo = arrayDataDict[raw_index]
        viewDetail.frame = CGRect.init(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height)
        self.view.addSubview(viewDetail)
        
    }
}
