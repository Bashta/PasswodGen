//
//  SettingsTableViewCell.swift
//  Password
//
//  Created by Alb on 2/20/15.
//  Copyright (c) 2015 01Logic. All rights reserved.
//

import UIKit

class SettingsTableViewCell: UITableViewCell {

	var label:UILabel?
	var switchMode:UISwitch?

	override init(style: UITableViewCellStyle, reuseIdentifier: String!) {
		super.init(style: style, reuseIdentifier: reuseIdentifier)

		self.textLabel!.hidden = true
		self.layer.shouldRasterize = true
		self.layer.rasterizationScale = UIScreen.mainScreen().scale
		self.selectionStyle = UITableViewCellSelectionStyle.None

		label = UILabel(frame: CGRectMake(0.0, 0.0, self.frame.size.width, 20.0))
		label?.numberOfLines = 0
		label?.autoresizingMask = UIViewAutoresizing.FlexibleWidth
		label?.backgroundColor = UIColor.clearColor()
		label?.font = UIFont(name: "Avenir-Medium", size: 16)
		label?.textColor = UIColor.passwordTextColor()
		self.contentView.addSubview(label!)

		switchMode = UISwitch(frame: CGRectMake(0, 0, self.frame.size.width, 20.0))
		switchMode!.onTintColor = UIColor.passwordTextColor()
		switchMode!.setOn(true, animated: true)
		self.contentView.addSubview(switchMode!)
	}

	required init(coder aDecoder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}

	override  func layoutSubviews() {
		label?.frame = CGRectMake(14.0, 12.0, self.frame.size.width, 20.0)
		switchMode?.frame = CGRectMake(self.frame.size.width - switchMode!.frame.size.width - 10.0, 6.0, 0.0, 0.0)
	}

}
