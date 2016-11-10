//
//  CategoriesViewController.swift
//  AGitTest
//
//  This App has been generated using IBM Mobile UI Builder
//

import UIKit

class CategoriesViewController: TableViewController<MenuItem>, UITableViewDataSource, UITableViewDelegate {
    
    typealias Cell = BasicImageCell
    
	override init() {
        super.init()
    }
	
    override func viewDidLoad() {
        super.viewDidLoad()

        AnalyticsManager.sharedInstance?.analytics?.logPage("Categories")
        
		navigationItem.title = NSLocalizedString("Categories", comment: "")
		
        items = [
			MenuItem(text: "test", action: NavigationAction<TestViewController>(rootViewController: self), image: "DefaultMenuIcon.png"),
			MenuItem(text: "1 a", action: NavigationAction<MenuItem0ViewController>(rootViewController: self), image: "DefaultMenuIcon.png"),
			MenuItem(text: "MyCustom", action: NavigationAction<MyCustomViewController>(rootViewController: self), image: "DefaultMenuIcon.png"),
		
        ]
        
		tableView.dataSource = self
        tableView.delegate = self
        tableView.registerClass(Cell.self, forCellReuseIdentifier: Cell.identifier)
		
		updateViewConstraints()
    }
  
    //MARK: - <UITableViewDataSource>
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return items.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier(Cell.identifier, forIndexPath: indexPath) as! Cell
        
        let item = items[indexPath.row]

        cell.titleLabel.text = item.text
		cell.photoImageView.loadImage(item.image)
        cell.userInteractionEnabled = false
        cell.accessoryView = nil
        cell.accessoryType = .None
        if let action = item.action where action.canBeExecuted() {
            
            cell.userInteractionEnabled = true

            // You can customize the accessory icon ...
            let icon = UIImage(named: Images.arrow)?.imageWithRenderingMode(.AlwaysTemplate)
            let accessoryImageView = UIImageView(image: icon)
            accessoryImageView.tintColor = Style.sharedInstance.foregroundColor
            cell.accessoryView = accessoryImageView
        }
        
        return cell
    }
    
    //MARK: - <UITableViewDelegate>
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        
        let item = items[indexPath.row]
        item.action?.execute()
    }
}
