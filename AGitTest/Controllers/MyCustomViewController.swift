//
//  MyCustomViewController.swift
//  AGitTest
//
//  This App has been generated using IBM Mobile App Builder
//

import UIKit

class MyCustomViewController: DataViewController<Screen0DSItem> {
    
    var didSetupConstraints = false
   
	var titleLabel1: UILabel!
	var titleLabel2: UILabel!
	var imageUrl3: UIImageView!
	var titleLabel4: UILabel!
	var titleLabel5: UILabel!
	var titleLabel6: UILabel!
	var titleLabel7: UILabel!
	var titleLabel8: UILabel!
	var titleLabel9: UILabel!
	var titleLabel10: UILabel!
	var titleLabel10Button: UIButton!
	
	
	
	override init() {
        super.init()
        
        datasource = DatasourceManager.sharedInstance.Screen0DS
        
        dataResponse = self

	
    }
	
	override func viewDidLoad() {
        super.viewDidLoad()

		AnalyticsManager.sharedInstance?.analytics?.logPage("MyCustom")
		title = NSLocalizedString("MyCustom", comment: "")
		

		titleLabel1 = createLabel(Style.sharedInstance.font(Fonts.Sizes.medium, bold: true, italic: true), textColor: UIColor(rgb: 0x408c14), alignment: NSTextAlignment.Right)
		addSubview(titleLabel1)	
		
		titleLabel2 = createLabel()
		addSubview(titleLabel2)	
		
		imageUrl3 = createImageView()
		addSubview(imageUrl3)	
		
		titleLabel4 = createLabel()
		addSubview(titleLabel4)	
		
		titleLabel5 = createLabel()
		addSubview(titleLabel5)	
		
		titleLabel6 = createLabel()
		addSubview(titleLabel6)	
		
		titleLabel7 = createLabel()
		addSubview(titleLabel7)	
		
		titleLabel8 = createLabel()
		addSubview(titleLabel8)	
		
		titleLabel9 = createLabel()
		addSubview(titleLabel9)	
		
		titleLabel10 = createLabel()
		addSubview(titleLabel10)	
		
		titleLabel10Button = createButton(Images.location)
        addSubview(titleLabel10Button)
		 
	
		
		updateViewConstraints()
		
		loadData()
	}
    
    override func updateViewConstraints() {
        
        if !didSetupConstraints {
            
            didSetupConstraints = true
            setupConstraints()
        }
        super.updateViewConstraints()
    }

	func setupConstraints() {
        
        let views:[String: UIView] = [
            "scrollView": scrollView,
            "contentView": contentView,
			"titleLabel1": titleLabel1,
			"titleLabel2": titleLabel2,
			"imageUrl3": imageUrl3,
			"titleLabel4": titleLabel4,
			"titleLabel5": titleLabel5,
			"titleLabel6": titleLabel6,
			"titleLabel7": titleLabel7,
			"titleLabel8": titleLabel8,
			"titleLabel9": titleLabel9,
			"titleLabel10": titleLabel10,
			"titleLabel10Button": titleLabel10Button,
        ]
        
        let metrics:[String: CGFloat] = [
            "zero": Dimens.Margins.none,
            "margin": Dimens.Margins.large,
            "buttonSize": Dimens.Sizes.small
        ]
		
		contentView.removeConstraints(contentConstraints)
        scrollView.removeConstraints(scrollConstraints)
        view.removeConstraints(mainConstraints)
		
		scrollView.translatesAutoresizingMaskIntoConstraints = false
		mainConstraints.appendContentsOf(NSLayoutConstraint.constraintsWithVisualFormat("H:|[scrollView]|",
            options: .DirectionLeadingToTrailing,
            metrics: metrics,
            views: views))
        
        mainConstraints.appendContentsOf(NSLayoutConstraint.constraintsWithVisualFormat("V:|[scrollView]|",
            options: .DirectionLeadingToTrailing,
            metrics: metrics,
            views: views))
        
		contentView.translatesAutoresizingMaskIntoConstraints = false
        scrollConstraints.appendContentsOf(NSLayoutConstraint.constraintsWithVisualFormat("H:|[contentView(==scrollView)]|",
            options: .DirectionLeadingToTrailing,
            metrics: metrics,
            views: views))
        
        scrollConstraints.appendContentsOf(NSLayoutConstraint.constraintsWithVisualFormat("V:|[contentView]|",
            options: .DirectionLeadingToTrailing,
            metrics: metrics,
            views: views))
			
		titleLabel1.translatesAutoresizingMaskIntoConstraints = false
        contentConstraints.appendContentsOf(NSLayoutConstraint.constraintsWithVisualFormat("H:|-margin-[titleLabel1]-margin-|",
            options: .DirectionLeadingToTrailing,
            metrics: metrics,
            views: views))
		
		titleLabel2.translatesAutoresizingMaskIntoConstraints = false
        contentConstraints.appendContentsOf(NSLayoutConstraint.constraintsWithVisualFormat("H:|-margin-[titleLabel2]-margin-|",
            options: .DirectionLeadingToTrailing,
            metrics: metrics,
            views: views))
		
		imageUrl3.translatesAutoresizingMaskIntoConstraints = false
		contentConstraints.appendContentsOf(NSLayoutConstraint.constraintsWithVisualFormat("H:|[imageUrl3]|",
            options: .DirectionLeadingToTrailing,
            metrics: metrics,
            views: views))
        
        contentConstraints.append(NSLayoutConstraint(item: imageUrl3,
            attribute: .CenterX,
            relatedBy: .Equal,
            toItem: contentView,
            attribute: .CenterX,
            multiplier: 1.0,
            constant: 0))
		titleLabel4.translatesAutoresizingMaskIntoConstraints = false
        contentConstraints.appendContentsOf(NSLayoutConstraint.constraintsWithVisualFormat("H:|-margin-[titleLabel4]-margin-|",
            options: .DirectionLeadingToTrailing,
            metrics: metrics,
            views: views))
		
		titleLabel5.translatesAutoresizingMaskIntoConstraints = false
        contentConstraints.appendContentsOf(NSLayoutConstraint.constraintsWithVisualFormat("H:|-margin-[titleLabel5]-margin-|",
            options: .DirectionLeadingToTrailing,
            metrics: metrics,
            views: views))
		
		titleLabel6.translatesAutoresizingMaskIntoConstraints = false
        contentConstraints.appendContentsOf(NSLayoutConstraint.constraintsWithVisualFormat("H:|-margin-[titleLabel6]-margin-|",
            options: .DirectionLeadingToTrailing,
            metrics: metrics,
            views: views))
		
		titleLabel7.translatesAutoresizingMaskIntoConstraints = false
        contentConstraints.appendContentsOf(NSLayoutConstraint.constraintsWithVisualFormat("H:|-margin-[titleLabel7]-margin-|",
            options: .DirectionLeadingToTrailing,
            metrics: metrics,
            views: views))
		
		titleLabel8.translatesAutoresizingMaskIntoConstraints = false
        contentConstraints.appendContentsOf(NSLayoutConstraint.constraintsWithVisualFormat("H:|-margin-[titleLabel8]-margin-|",
            options: .DirectionLeadingToTrailing,
            metrics: metrics,
            views: views))
		
		titleLabel9.translatesAutoresizingMaskIntoConstraints = false
        contentConstraints.appendContentsOf(NSLayoutConstraint.constraintsWithVisualFormat("H:|-margin-[titleLabel9]-margin-|",
            options: .DirectionLeadingToTrailing,
            metrics: metrics,
            views: views))
		
		titleLabel10.translatesAutoresizingMaskIntoConstraints = false
        contentConstraints.appendContentsOf(NSLayoutConstraint.constraintsWithVisualFormat("H:|-margin-[titleLabel10]-margin-[titleLabel10Button(buttonSize)]-margin-|",
            options: .DirectionLeadingToTrailing,
            metrics: metrics,
            views: views))
		
		titleLabel10Button.translatesAutoresizingMaskIntoConstraints = false
        contentConstraints.appendContentsOf(NSLayoutConstraint.constraintsWithVisualFormat("V:[titleLabel10Button(buttonSize)]",
            options: .DirectionLeadingToTrailing,
            metrics: metrics,
            views: views))
		
		contentConstraints.append(NSLayoutConstraint(item: titleLabel10Button,
            attribute: .CenterY,
            relatedBy: .Equal,
            toItem: titleLabel10,
            attribute: .CenterY,
            multiplier: 1.0,
            constant: 0))
			
		contentConstraints.appendContentsOf(NSLayoutConstraint.constraintsWithVisualFormat("V:|-margin-[titleLabel1]-margin-[titleLabel2]-margin-[imageUrl3]-margin-[titleLabel4]-margin-[titleLabel5]-margin-[titleLabel6]-margin-[titleLabel7]-margin-[titleLabel8]-margin-[titleLabel9]-margin-[titleLabel10]-(>=margin)-|",
            options: .DirectionLeadingToTrailing,
            metrics: metrics,
            views: views))

		view.addConstraints(mainConstraints)
        contentView.addConstraints(contentConstraints)
        scrollView.addConstraints(scrollConstraints)
	}
}

extension MyCustomViewController: DataResponse {

    func success() {
 		titleLabel1.text = item?.name
		
		titleLabel2.text = item?.description
		
		imageUrl3.loadImage(datasource.imagePath(item?.picture), containerView: view)
		
		titleLabel4.text = item?.phone
		
		titleLabel5.text = String(geoPoint: item?.location)
		
		titleLabel6.text = item?.address
		
		titleLabel7.text = item?.rating
		
		titleLabel8.text = item?.c1
		
		titleLabel9.text = item?.1c
		
		titleLabel10.text = item?.name
		
		setAction(MapAction(uri: String(format: "%@%@", item?.name ?? "", item?.rating ?? "")), view: titleLabel10Button)
		 
       
    }
    
    func failure(error: NSError?) {
        ErrorManager.show(error, rootController: self)
    }
}

