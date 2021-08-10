//
//  ViewController.swift
//  Todoey
//
//  Created by Philipp Muellauer on 02/12/2019.
//  Copyright © 2019 App Brewery. All rights reserved.
//

import UIKit

class ToDoListViewController: UITableViewController {

    
    var itemListEx : [String] = ["Buy Milk", "Find Mike", "Change wall"]
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK: - Navigation
    @IBOutlet weak var navigationTitleLabel: UINavigationItem!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.destination == DetailViewController() {
            /** Send Data*/
        }
    }
    //MARK: - AlertViewController - addButton
    @IBAction func addButtonPressed(_ sender: UIBarButtonItem) {
        var textfield = UITextField()
        let alert = UIAlertController(title: K.AlertUI.controllerTitle, message: "", preferredStyle: .alert)
        let action = UIAlertAction(title:  K.AlertUI.actionTitle, style: .default) { action in
            if let safeText = textfield.text { self.itemListEx.append(safeText) }
            DispatchQueue.main.async { self.tableView.reloadData() }
        }
        alert.addTextField { alertTextField in
            alertTextField.placeholder = K.AlertUI.placeholder
            textfield = alertTextField
        }
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
        
        
    }
    
    
    //MARK: - DataSource
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemListEx.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: K.Cell.toDoItemCellId, for : indexPath ) as! ToDoItemCell
        cell.textLabel?.text = itemListEx[indexPath.row]
        return cell
    }
    
    //MARK: - Delegate
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if tableView.cellForRow(at: indexPath)?.accessoryType != .checkmark {
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }else{
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
        }
        tableView.deselectRow(at: indexPath, animated: true)
        
    }


}

