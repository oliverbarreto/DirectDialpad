//
//  ViewController.swift
//  DirectDialpad
//
//  Created by David Oliver Barreto Rodríguez on 16/9/16.
//  Copyright © 2016 Oliver Barreto. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

	
	//MARK: UI Methods

	@IBOutlet weak var display: NSTextField!
	@IBOutlet weak var backspace: NSButton!

	@IBOutlet weak var number7: NSButton!
	
	@IBOutlet weak var number8: NSButton!
	
	@IBOutlet weak var number9: NSButton!
	
	@IBOutlet weak var number4: NSButton!
	
	@IBOutlet weak var number5: NSButton!
	
	@IBOutlet weak var number6: NSButton!
	
	@IBOutlet weak var number1: NSButton!
	
	@IBOutlet weak var number2: NSButton!
	
	@IBOutlet weak var number3: NSButton!
	
	@IBOutlet weak var number0: NSButton!
	
	@IBOutlet weak var keyAsterisk: NSButton!
	
	@IBOutlet weak var keyPound: NSButton!
	

	//MARK: Variables
		
	@IBAction func numberPressed(_ sender: NSButton) {
		self.display.stringValue = self.display.stringValue + String(sender.title)
		
	}
	
	@IBAction func call(_ sender: NSButton) {
		
		// Opens URL Scheme for iPhone phone calls		
		Dialer.dial(self.display.stringValue)

	}
	
	
	@IBAction func deletePressed(_ sender: NSButton) {
		self.display.stringValue = String(self.display.stringValue.characters.dropLast()) 
		
	}

	
	//MARK: View LiveCycle
	override func viewDidLoad() {
		super.viewDidLoad()

		// Do any additional setup after loading the view.
		
		//display.becomeFirstResponder()
		display.focusRingType = .none
		
		// Customize Buttons
		backspace.isBordered = false
		
		number0.isBordered = false
		number1.isBordered = false
		number2.isBordered = false
		number3.isBordered = false
		number4.isBordered = false
		number5.isBordered = false
		number6.isBordered = false
		number7.isBordered = false
		number8.isBordered = false
		number9.isBordered = false
		
		keyAsterisk.isBordered = false
		keyPound.isBordered = false
		
		display.isBezeled = false
		display.drawsBackground = false
		
		
		// Add Long Press Gesture Recognizer to Button 0
		let longPressRecognizer = NSPressGestureRecognizer(target: self, action: #selector(self.longpressOnZeroButton)) 
			
		number0.addGestureRecognizer(longPressRecognizer)
		
 
	}

	func longpressOnZeroButton(sender: NSPressGestureRecognizer)
	{
		print("Convert 0 to +")
		self.display.stringValue = self.display.stringValue + "+"

	}

	/*
	override var representedObject: AnyObject? {
		didSet {
		// Update the view, if already loaded.
		}
	}
*/

}

