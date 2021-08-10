//
//  ToDoItemCell.swift
//  Todoey
//
//  Created by 최지환 on 2021/08/09.
//  Copyright © 2021 App Brewery. All rights reserved.
//

import UIKit

class ToDoItemCell: UITableViewCell {

    @IBOutlet weak var label: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    
}
