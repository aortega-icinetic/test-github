//
//  MyCustomViewController.swift
//  AGitTest
//
//  This App has been generated using IBM Mobile UI Builder
//

import UIKit

class MyCustomViewController: DataViewController<Screen0DSItem> {
    
    var didSetupConstraints = false

	var textLabel1: UILabel!
	var textLabel1Button: UIButton!
	
	var textLabel2: UILabel!
	var imageView3: UIImageView!
	var textLabel4: UILabel!
	var textLabel5: UILabel!
	var textLabel6: UILabel!
	var textLabel7: UILabel!
	var textLabel8: UILabel!
	var textLabel9: UILabel!
	var textLabel10: UILabel!
	var textLabel10Button: UIButton!
	
	
	
	override init() {
        super.init()
        
        datasource = DatasourceManager.sharedInstance.Screen0DS
        dataResponse = self
    }
	
	override func viewDidLoad() {
        super.viewDidLoad()

		AnalyticsManager.sharedInstance?.analytics?.logPage("MyCustom")
		
	  
		

		textLabel1 = createLabel(Style.sharedInstance.font(Fonts.Sizes.medium, bold: true, italic: true), textColor: UIColor(rgb: 0x408c14), alignment: NSTextAlignment.Right)
		addSubview(textLabel1)	
		
		textLabel1Button = createButton(Images.email)
        addSubview(textLabel1Button)
		 
		textLabel2 = createLabel()
		addSubview(textLabel2)	
		
		imageView3 = createImageView()
		addSubview(imageView3)	
		
		textLabel4 = createLabel()
		addSubview(textLabel4)	
		
		textLabel5 = createLabel()
		addSubview(textLabel5)	
		
		textLabel6 = createLabel()
		addSubview(textLabel6)	
		
		textLabel7 = createLabel()
		addSubview(textLabel7)	
		
		textLabel8 = createLabel()
		addSubview(textLabel8)	
		
		textLabel9 = createLabel()
		addSubview(textLabel9)	
		
		textLabel10 = createLabel()
		addSubview(textLabel10)	
		
		textLabel10Button = createButton(Images.location)
        addSubview(textLabel10Button)
		 
	

        for behavior in self.behaviors {
            behavior.load()
        }
			
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
			"textLabel1": textLabel1,
			"textLabel1Button": textLabel1Button,
			"textLabel2": textLabel2,
			"imageView3": imageView3,
			"textLabel4": textLabel4,
			"textLabel5": textLabel5,
			"textLabel6": textLabel6,
			"textLabel7": textLabel7,
			"textLabel8": textLabel8,
			"textLabel9": textLabel9,
			"textLabel10": textLabel10,
			"textLabel10Button": textLabel10Button,
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
			
		textLabel1.translatesAutoresizingMaskIntoConstraints = false
        contentConstraints.appendContentsOf(NSLayoutConstraint.constraintsWithVisualFormat("H:|-margin-[textLabel1]-margin-[textLabel1Button(buttonSize)]-margin-|",
            options: .DirectionLeadingToTrailing,
            metrics: metrics,
            views: views))
		
		textLabel1Button.translatesAutoresizingMaskIntoConstraints = false
        contentConstraints.appendContentsOf(NSLayoutConstraint.constraintsWithVisualFormat("V:[textLabel1Button(buttonSize)]",
            options: .DirectionLeadingToTrailing,
            metrics: metrics,
            views: views))
		
		contentConstraints.append(NSLayoutConstraint(item: textLabel1Button,
            attribute: .CenterY,
            relatedBy: .Equal,
            toItem: textLabel1,
            attribute: .CenterY,
            multiplier: 1.0,
            constant: 0))
			
		textLabel2.translatesAutoresizingMaskIntoConstraints = false
        contentConstraints.appendContentsOf(NSLayoutConstraint.constraintsWithVisualFormat("H:|-margin-[textLabel2]-margin-|",
            options: .DirectionLeadingToTrailing,
            metrics: metrics,
            views: views))
		
		imageView3.translatesAutoresizingMaskIntoConstraints = false
		contentConstraints.appendContentsOf(NSLayoutConstraint.constraintsWithVisualFormat("H:|[imageView3]|",
            options: .DirectionLeadingToTrailing,
            metrics: metrics,
            views: views))
        
        contentConstraints.append(NSLayoutConstraint(item: imageView3,
            attribute: .CenterX,
            relatedBy: .Equal,
            toItem: contentView,
            attribute: .CenterX,
            multiplier: 1.0,
            constant: 0))
		textLabel4.translatesAutoresizingMaskIntoConstraints = false
        contentConstraints.appendContentsOf(NSLayoutConstraint.constraintsWithVisualFormat("H:|-margin-[textLabel4]-margin-|",
            options: .DirectionLeadingToTrailing,
            metrics: metrics,
            views: views))
		
		textLabel5.translatesAutoresizingMaskIntoConstraints = false
        contentConstraints.appendContentsOf(NSLayoutConstraint.constraintsWithVisualFormat("H:|-margin-[textLabel5]-margin-|",
            options: .DirectionLeadingToTrailing,
            metrics: metrics,
            views: views))
		
		textLabel6.translatesAutoresizingMaskIntoConstraints = false
        contentConstraints.appendContentsOf(NSLayoutConstraint.constraintsWithVisualFormat("H:|-margin-[textLabel6]-margin-|",
            options: .DirectionLeadingToTrailing,
            metrics: metrics,
            views: views))
		
		textLabel7.translatesAutoresizingMaskIntoConstraints = false
        contentConstraints.appendContentsOf(NSLayoutConstraint.constraintsWithVisualFormat("H:|-margin-[textLabel7]-margin-|",
            options: .DirectionLeadingToTrailing,
            metrics: metrics,
            views: views))
		
		textLabel8.translatesAutoresizingMaskIntoConstraints = false
        contentConstraints.appendContentsOf(NSLayoutConstraint.constraintsWithVisualFormat("H:|-margin-[textLabel8]-margin-|",
            options: .DirectionLeadingToTrailing,
            metrics: metrics,
            views: views))
		
		textLabel9.translatesAutoresizingMaskIntoConstraints = false
        contentConstraints.appendContentsOf(NSLayoutConstraint.constraintsWithVisualFormat("H:|-margin-[textLabel9]-margin-|",
            options: .DirectionLeadingToTrailing,
            metrics: metrics,
            views: views))
		
		textLabel10.translatesAutoresizingMaskIntoConstraints = false
        contentConstraints.appendContentsOf(NSLayoutConstraint.constraintsWithVisualFormat("H:|-margin-[textLabel10]-margin-[textLabel10Button(buttonSize)]-margin-|",
            options: .DirectionLeadingToTrailing,
            metrics: metrics,
            views: views))
		
		textLabel10Button.translatesAutoresizingMaskIntoConstraints = false
        contentConstraints.appendContentsOf(NSLayoutConstraint.constraintsWithVisualFormat("V:[textLabel10Button(buttonSize)]",
            options: .DirectionLeadingToTrailing,
            metrics: metrics,
            views: views))
		
		contentConstraints.append(NSLayoutConstraint(item: textLabel10Button,
            attribute: .CenterY,
            relatedBy: .Equal,
            toItem: textLabel10,
            attribute: .CenterY,
            multiplier: 1.0,
            constant: 0))
			
		contentConstraints.appendContentsOf(NSLayoutConstraint.constraintsWithVisualFormat("V:|-margin-[textLabel1]-margin-[textLabel2]-margin-[imageView3]-margin-[textLabel4]-margin-[textLabel5]-margin-[textLabel6]-margin-[textLabel7]-margin-[textLabel8]-margin-[textLabel9]-margin-[textLabel10]-(>=margin)-|",
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
        
        navigationItem.title = ""
        
		textLabel1.text = item?.name
		
		setAction(MailAction(recipient: item?.name), view: textLabel1)
		setAction(MailAction(recipient: item?.name), view: textLabel1Button)
		 
		textLabel2.text = item?.description
		
		imageView3.loadImage(datasource.imagePath(item?.picture), containerView: view)
		
		textLabel4.text = item?.phone
		
		textLabel5.text = String(geoPoint: item?.location)
		
		textLabel6.text = item?.address
		
		textLabel7.text = item?.rating
		
		textLabel8.text = item?.c1
		
		textLabel9.text = item?.1c
		
		textLabel10.text = item?.name
		
		setAction(MapAction(uri: String(format: "%@%@", item?.name ?? "", item?.rating ?? "")), view: textLabel10)
		setAction(MapAction(uri: String(format: "%@%@", item?.name ?? "", item?.rating ?? "")), view: textLabel10Button)
		 
       
    }
    
    func failure(error: NSError?) {
        ErrorManager.show(error, rootController: self)
    }
}


