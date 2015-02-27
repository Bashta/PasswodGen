//
//  PasswordViewController.swift
//  Password
//
//  Created by Alb on 2/20/15.
//  Copyright (c) 2015 01Logic. All rights reserved.
//

import UIKit

class PasswordViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()

		self.view.backgroundColor = UIColor.whiteColor()

		var title:UILabel = UILabel(frame: CGRectMake(0.0, 0.0, 320.0, 24.0))
		title.accessibilityLabel = "About";
		title.autoresizingMask = UIViewAutoresizing.FlexibleWidth;
		title.backgroundColor = UIColor.clearColor()
		title.font = UIFont.mediumFontWithSize(18.0)
		title.textColor = UIColor.whiteColor()
		title.text = "About";
		title.layer.shouldRasterize = true
		title.clipsToBounds = false
		title.sizeToFit()

		self.navigationItem.titleView = title;

		var backButton:UIButton = UIButton.buttonWithType(UIButtonType.Custom) as UIButton
		backButton.frame = CGRectMake(0, 0, 13.0, 22.0);
		backButton.setBackgroundImage(UIImage(named: "back-view"), forState: UIControlState.Normal)
		backButton.setBackgroundImage(UIImage(named: "back-view"), forState: UIControlState.Highlighted)
		backButton.addTarget(self, action: "close:", forControlEvents: UIControlEvents.TouchDown)

		var backBarButtonItem:UIBarButtonItem = UIBarButtonItem(customView: backButton)
		self.navigationItem.leftBarButtonItem = backBarButtonItem

		var infoDictionary:NSDictionary = NSBundle.mainBundle().infoDictionary!
		var shortVersion:String = infoDictionary.objectForKey("CFBundleShortVersionString") as String
		var build:String = infoDictionary.objectForKey("CFBundleVersion") as String

		var version:UILabel = UILabel(frame: CGRectMake(10.0, 80.0, self.view.frame.size.width - 20.0, 65.0))
		version.accessibilityLabel = "Version " + shortVersion + "(" + build + ")"
		version.autoresizingMask = UIViewAutoresizing.FlexibleWidth;
		version.backgroundColor = UIColor.clearColor()
		version.font = UIFont.mediumFontWithSize(18.0)
		version.textColor = UIColor.passwordMainColor()
		version.text = "Version " + shortVersion + "(" + build + ")"
		version.layer.shouldRasterize = true
		version.clipsToBounds = false
		version.textAlignment = NSTextAlignment.Center
		self.view.addSubview(version)

	}

	func close(sender:UIButton) {
		self.navigationController?.popViewControllerAnimated(true)
	}
}
