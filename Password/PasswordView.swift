//
//  PasswordView.swift
//  Password
//
//  Created by Alb on 2/19/15.
//  Copyright (c) 2015 01Logic. All rights reserved.
//

import UIKit

class PasswordView: UIView {
	var passwordSecureTextField: UITextField?
	var normalTextContainer: UIView?
	var secureTextContainer: UIView?
	var attributedLabel: TTTAttributedLabel?
	
	var passwordLabel:UILabel?
	
	required init(coder aDecoder: NSCoder) {
		super.init(coder: aDecoder)
	}
	
	override init(frame: CGRect) {
		super.init(frame: frame)

		//Init the secureTextContainer
		secureTextContainer = UIView(frame: CGRectMake(320, 0, self.frame.size.width, PasswordView.height()))
		secureTextContainer?.backgroundColor = UIColor(red: 235.0 / 255, green: 89.0 / 255, blue: 89.0 / 255, alpha: 1)
		self.addSubview(secureTextContainer!)


		//Init the normal Text Container
		normalTextContainer = UIView(frame: CGRectMake(0.0, 0.0, self.frame.size.width, PasswordView.height()))
		normalTextContainer?.backgroundColor = UIColor.whiteColor()
		self.addSubview(normalTextContainer!)
		
				//Init AtributetLabel
		attributedLabel = TTTAttributedLabel(frame: CGRectMake(0, 0, self.frame.size.width, PasswordView.height()))
		attributedLabel?.textColor = UIColor(red: 133.0 / 255, green: 155.0 / 255, blue: 172.0 / 255, alpha: 1)
		attributedLabel?.backgroundColor = UIColor.clearColor()
		attributedLabel?.numberOfLines = 0
		attributedLabel?.font = UIFont(name: "Helvetica", size: 17)
		attributedLabel?.textAlignment = NSTextAlignment.Center
		normalTextContainer?.addSubview(attributedLabel!)
		attributedLabel?.text = ""
		attributedLabel?.hidden = true
		
		//Init the passwordSecureTextField
		passwordSecureTextField = UITextField(frame: CGRectMake(0, 0, self.frame.size.width, PasswordView.height()))
		passwordSecureTextField?.autoresizingMask = UIViewAutoresizing.FlexibleWidth
		passwordSecureTextField?.backgroundColor = UIColor.clearColor()
		passwordSecureTextField?.font = UIFont(name: "Helvetica", size: 17)
		passwordSecureTextField?.textAlignment = NSTextAlignment.Center
		passwordSecureTextField?.textColor = UIColor(red: 250.0 / 255.0, green: 250.0 / 255.0, blue: 250.0 / 255.0, alpha: 1)
		passwordSecureTextField?.secureTextEntry = true
		secureTextContainer?.addSubview(passwordSecureTextField!)
		
		//Init the password label
		passwordLabel = UILabel(frame: CGRectMake(0, 0, self.frame.size.width, PasswordView.height()))
		passwordLabel?.textColor = UIColor(red: 133.0 / 255, green: 155.0 / 255, blue: 172.0 / 255, alpha: 1)
		passwordLabel?.backgroundColor = UIColor.clearColor()
		passwordLabel?.numberOfLines = 0
		passwordLabel?.font = UIFont(name: "Helvetica", size: 17)
		passwordLabel?.textAlignment = NSTextAlignment.Center
		normalTextContainer?.addSubview(passwordLabel!)
	}
	
	func slideIn() {
		UIView.animateWithDuration(0.5, delay: 0.0, options: .CurveEaseInOut | .AllowUserInteraction, animations: {
			
			self.normalTextContainer?.frame = CGRectMake(0.0, 0.0, self.bounds.size.width, PasswordView.height())
			
			self.secureTextContainer?.frame = CGRectMake(self.bounds.size.width, 0, self.bounds.size.width, PasswordView.height())
			
			}) { finished in }
	}
	
	func slideOut() {
		UIView.animateWithDuration(0.4, delay: 0.0, options: .CurveEaseInOut | .AllowUserInteraction, animations: {
			
			self.normalTextContainer?.frame = CGRectMake(-self.bounds.size.width, 0, self.bounds.size.width, PasswordView.height())
			
			self.secureTextContainer?.frame = CGRectMake(0, 0, self.bounds.size.width, PasswordView.height())
			
			}) { finished in }
	}
	
	class func height() -> CGFloat {
		
		var sceenSize: CGSize = UIScreen.mainScreen().bounds.size
		if sceenSize.height == 480 {
			return 50
		} else {
			return 54
		}
	}
}






















