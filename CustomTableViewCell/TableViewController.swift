//
//  ViewController.swift
//  CustomTableViewCell
//
//  Created by developersancho on 19.05.2018.
//  Copyright © 2018 developersancho. All rights reserved.
//

import UIKit

struct CellData {
    var image : UIImage?
    var message : String?
}

class TableViewController: UITableViewController {

    var data = [CellData]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        data = [CellData.init(image: #imageLiteral(resourceName: "portal"), message: "Champion BeşiktaşChampion BeşiktaşChampion BeşiktaşChampion BeşiktaşChampion BeşiktaşChampion BeşiktaşChampion BeşiktaşChampion BeşiktaşChampion BeşiktaşChampion BeşiktaşChampion BeşiktaşChampion BeşiktaşChampion Beşiktaş"),
        CellData.init(image: #imageLiteral(resourceName: "portal"), message: "Champion Beşiktaş"),
        CellData.init(image: #imageLiteral(resourceName: "portal"), message: "Champion Beşiktaş"),
        CellData.init(image: #imageLiteral(resourceName: "portal"), message: "Champion Beşiktaş"),
        CellData.init(image: #imageLiteral(resourceName: "portal"), message: "Champion Beşiktaş"),
        CellData.init(image: #imageLiteral(resourceName: "portal"), message: "Champion Beşiktaş")]
        
        self.tableView.register(CustomCell.self, forCellReuseIdentifier: "custom")
        self.tableView.rowHeight = UITableViewAutomaticDimension
        self.tableView.estimatedRowHeight = 200
    }

  
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "custom") as! CustomCell
        cell.mainImage = data[indexPath.row].image
        cell.message = data[indexPath.row].message
        cell.layoutSubviews()
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
}

