//
//  Str.swift
//  Password
//
//  Created by Alb on 2/22/15.
//  Copyright (c) 2015 01Logic. All rights reserved.
//

import Foundation

class StringUtil {

	class func randomizeStringWith(value:String) -> String {

		var selectedSet: NSString = value
		var selectedSetLength = selectedSet.length
		var randomString = NSMutableString(capacity: selectedSetLength)

		for index in 0...selectedSetLength {
			var rand = arc4random_uniform(UInt32(selectedSetLength))
			randomString.appendFormat("%C", selectedSet.characterAtIndex(Int(rand)))
		}

		return randomString
	}
}