//
//  TestViewController.swift
//  AGitTest
//
//  This App has been generated using IBM Mobile UI Builder
//

import UIKit

class TestViewController: TableViewController<Screen0DSItem>, UITableViewDataSource, UITableViewDelegate {
    
    typealias Cell = DetailCell

    
    override init() {
        super.init()
		
		datasource = DatasourceManager.sharedInstance.Screen0DS
		dataResponse = self	
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        AnalyticsManager.sharedInstance?.analytics?.logPage("test")
       
	    navigationItem.title = NSLocalizedString("test", comment: "")
			

        tableView.dataSource = self
        tableView.delegate = self
        tableView.registerClass(Cell.self, forCellReuseIdentifier: Cell.identifier)

        for behavior in self.behaviors {
            behavior.load()
        }
			
		updateViewConstraints()

        loadData()					
    }
    
	//MARK: - <UITableViewDataSource>
	
	func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return items.count
    }
	
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    
        let cell = tableView.dequeueReusableCellWithIdentifier(Cell.identifier, forIndexPath: indexPath) as! Cell

		// No detail or actions
        cell.userInteractionEnabled = false
	
        // Binding 
        let item = items[indexPath.row]
		cell.titleLabel.text = item.name
		cell.detailLabel.text = item.description
		
		// Styles

		cell.detailLabel.font = Style.sharedInstance.font(Fonts.Sizes.small, bold: false, italic: false)
			
		return cell
    }

	 //MARK: - <UITableViewDelegate>
	 
	func tableView(tableView: UITableView, willDisplayCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath) {
        
        loadMoreData(indexPath.row)
		
		cell.preservesSuperviewLayoutMargins = false
        cell.layoutMargins = UIEdgeInsetsZero
        cell.separatorInset = UIEdgeInsetsZero
    }
}

//MARK: - <DataResponse>

extension TestViewController: DataResponse {

    func success() {
        
        tableView.reloadData()
    }
    
    func failure(error: NSError?) {
        
        ErrorManager.show(error, rootController: self)
    }
}

