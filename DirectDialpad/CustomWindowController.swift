//
//  CustomWindowController.swift
//  DirectDialpad
//
//  Created by David Oliver Barreto Rodríguez on 20/9/16.
//  Copyright © 2016 Oliver Barreto. All rights reserved.
//

import Cocoa

class CustomWindowController: NSWindowController {

    override func windowDidLoad() {
        super.windowDidLoad()
    
        // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
		
		// Custom Appearance of NSWindow
		// http://stylekit.org/blog/2016/01/23/Chromeless-window/#footnotes
		
		window?.title = "Direct Dialpad"
		window?.titlebarAppearsTransparent = true
		window?.titleVisibility = .hidden
		
		// Blue Transparend Semi-transparent Background
		window?.contentView!.wantsLayer = true
		//window?.backgroundColor = NSColor.init(red: 25/255, green: 198/255, blue: 250/255, alpha: 0.8)
		window?.isOpaque = false
		
		// Visual Effects for Vibrancy: Dark-Mode
		if let rect = window?.contentView?.frame {
			let visualEffectView = NSVisualEffectView(frame: NSMakeRect(rect.origin.x, rect.origin.y, rect.size.width, rect.size.height))//<---the width and height is set to 0, as this doesn't matter. 
			//visualEffectView.material = NSVisualEffectMaterial.appearanceBased
			visualEffectView.material = NSVisualEffectMaterial.mediumLight
			//Dark,MediumLight,PopOver,UltraDark,AppearanceBased,Titlebar,Menu
			visualEffectView.blendingMode = NSVisualEffectBlendingMode.behindWindow//I think if you set this to WithinWindow you get the effect safari has in its TitleBar. It should have an Opaque background behind it or else it will not work well
			visualEffectView.state = NSVisualEffectState.active//FollowsWindowActiveState,Inactive
			window?.contentView?.addSubview(visualEffectView, 
											positioned: NSWindowOrderingMode.below, relativeTo: window?.contentView)
			//window?.contentView = visualEffectView/*you can also add the visualEffectView to the contentview, just add some width and height to the visualEffectView, you also need to flip the view if you like to work from TopLeft, do this through subclassing*/
			
			
			//self.appearance = NSAppearance(named: NSAppearanceNameVibrantDark)
			
			
		}
		
    }

}
