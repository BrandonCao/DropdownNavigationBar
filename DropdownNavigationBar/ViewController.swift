//
//  ViewController.swift
//  DropdownNavigationBar
//
//  Created by Brandon  Cao on 11/7/17.
//  Copyright © 2017 Brandon Cao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
		
		guard let nav = self.navigationController
			else{ return }
		
		let titleView = DropdownTitleView(navigationController: nav, title: "Drop Down")
		navigationItem.titleView = titleView
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}

