//
//  Dialer.swift
//  DirectDialpad
//
//  Created by David Oliver Barreto Rodríguez on 17/9/16.
//  Copyright © 2016 Oliver Barreto. All rights reserved.
//

import Cocoa

public struct Dialer {
	
	// Opens URL Scheme for iPhone phone calls  
	public static func dial(_ numberString: String) {
			
		let customURLSchemeString = "tel:" + numberString
		let url = URL(string: customURLSchemeString)
		NSWorkspace.shared().open(url!)
		
	}
	
	public static func validateString(_ numberString: String) -> Bool {
		let status = true
		
		if numberString != "" {
			let lastChar = numberString.characters.last
			
		}
		
		
		
		return status
	}
	
	// Holds the last 10 phone call numbers
	public var callHistory: [String] = []
}

