//
//  DetailViewController.swift
//  Todoey
//
//  Created by 최지환 on 2021/08/09.
//  Copyright © 2021 App Brewery. All rights reserved.
//

import UIKit

class DetailViewController: UITableViewController {

    let contents : [String] = ["nav gonna be well "]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK: - DataSource for DetatilView .
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contents.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: K.Cell.detailCellId, for: indexPath)
        
        cell.textLabel?.text = self.contents[indexPath.row]
        
        return cell
    }
    
    

}
