//
//  ArrowButton.swift
//  DropdownNavigationBar
//
//  Created by Brandon  Cao on 11/7/17.
//  Copyright © 2017 Brandon Cao. All rights reserved.
//

import UIKit

public struct ArrowButtonProperties {
	
	public struct Text {
		public static var color: UIColor = UIColor.white
		public static var selectedColor: UIColor = UIColor.gray
		public static var font: UIFont = UIFont.boldSystemFont(ofSize: 18)
	}
}

open class ArrowButton: UIButton {
	
	let padding: CGFloat = 10
	let size: CGFloat = 15
	
	// MARK: - Views
	open lazy var label:UILabel = {
		let label = UILabel()
		label.translatesAutoresizingMaskIntoConstraints = false
		label.textColor = UIColor.black;
		return label
	}()
	
	open lazy var arrow: UIImageView = {
		let arrow = UIImageView()
		arrow.translatesAutoresizingMaskIntoConstraints = false
		arrow.image = UIImage(named: "dropdown_arrow")
		return arrow
	}()
	
	public init(){
		super.init(frame: .zero)
		
		addSubview(label)
		addSubview(arrow)
	}
	
	required public init?(coder aDecoder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
	open override func layoutSubviews() {
		super.layoutSubviews()
		
		label.center = CGPoint(x: bounds.size.width / 2, y: bounds.size.height / 2)
		
		arrow.frame.size = CGSize(width: size, height: size)
		arrow.center = CGPoint(x: label.frame.maxX + padding, y: bounds.size.height / 2)
	}
	
}
