//
//  DropdownTitleView.swift
//  DropdownNavigationBar
//
//  Created by Brandon  Cao on 11/7/17.
//  Copyright © 2017 Brandon Cao. All rights reserved.
//

import UIKit


open class DropdownTitleView: UIView {
	
	open var arrowButton: ArrowButton!
	
	
	public init?(navigationController: UINavigationController, title: String){
		super.init(frame: CGRect.zero)
		
		arrowButton.label.text = title
		addSubview(arrowButton)
		
	}
	
	required public init?(coder aDecoder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
	open override func layoutSubviews() {
		super.layoutSubviews()
		
		arrowButton.sizeToFit()
		frame.size = arrowButton.frame.size
	}
	
	
}
