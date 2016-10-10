//
//  MainMenuViewController.swift
//  AGitTest
//
//  This App has been generated using IBM Mobile App Builder
//

import UIKit

class MainMenuViewController: UITableViewController {
    
    typealias Cell = BasicCell
    
    var items: [MenuItem]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
		view.backgroundColor = Style.sharedInstance.backgroundColor
		
        items = [
			MenuItem(text: "Categories",
                action: NavigationAction<CategoriesViewController>(rootViewController: self, type: .Auto)
            ),
			MenuItem(text: "Logout",
                action: LogoutAction()
            ),
		
        ]
        
        tableView.registerClass(Cell.self, forCellReuseIdentifier: Cell.identifier)
        
    }
    
    func configure(cell: Cell, indexPath: NSIndexPath) {
    
        let item = items[indexPath.row]

        cell.titleLabel.text = item.text
        cell.userInteractionEnabled = false
        if let action = item.action where action.canBeExecuted() {
            cell.userInteractionEnabled = true
        }
    }
    
    //MARK: - <UITableViewDataSource>
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return items.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier(Cell.identifier, forIndexPath: indexPath) as! Cell
        
        configure(cell, indexPath: indexPath)
        
        return cell
    }
    
    //MARK: - <UITableViewDelegate>
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        
        let item = items[indexPath.row]
        item.action?.execute()
    }
}
