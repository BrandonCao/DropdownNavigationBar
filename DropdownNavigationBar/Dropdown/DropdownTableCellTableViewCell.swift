//
//  DropdownTableCellTableViewCell.swift
//  DropdownNavigationBar
//
//  Created by Brandon  Cao on 11/7/17.
//  Copyright © 2017 Brandon Cao. All rights reserved.
//

import UIKit

class DropdownTableCellTableViewCell: UITableViewCell {
	
	open var separator: UIView = {
		let separator = UIView()
		separator.backgroundColor = UIColor.gray
		separator.translatesAutoresizingMaskIntoConstraints = false
		return separator
	}()
	
	open var label: UILabel = {
		let label = UILabel()
		label.textColor = UIColor.black
		label.translatesAutoresizingMaskIntoConstraints = false
		return label
	}()
	
	open var checkmark: UIImageView = {
		let checkmark = UIImageView()
		checkmark.image = UIImage(named: "checkmark")
		checkmark.translatesAutoresizingMaskIntoConstraints = false
		return checkmark
	}()
	
	public override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
		super.init(style: style, reuseIdentifier: reuseIdentifier)

		backgroundColor = UIColor.white
		setupViews()
	}
	
	
	required init?(coder aDecoder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
	open override func layoutSubviews() {
		super.layoutSubviews()		
		contentView.frame = bounds
	}
	
	private func setupViews(){
		contentView.addSubview(label)
		contentView.addSubview(checkmark)
		contentView.addSubview(separator)
		
		contentView.addConstraint(NSLayoutConstraint(item: label, attribute: .left, relatedBy: .equal, toItem: contentView, attribute: .left, multiplier: 1, constant: 25))
		contentView.addConstraint(NSLayoutConstraint(item: label, attribute: .centerY, relatedBy: .equal, toItem: contentView, attribute: .centerY, multiplier: 1, constant: 0))
		
		contentView.addConstraint(NSLayoutConstraint(item: checkmark, attribute: .centerY, relatedBy: .equal, toItem: contentView, attribute: .centerY, multiplier: 1, constant: 0))
		contentView.addConstraint(NSLayoutConstraint(item: checkmark, attribute: .right, relatedBy: .equal, toItem: contentView, attribute: .right, multiplier: 1, constant: -20))
		contentView.addConstraint(NSLayoutConstraint(item: checkmark, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 20))
		contentView.addConstraint(NSLayoutConstraint(item: checkmark, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 20))
		
		contentView.addConstraint(NSLayoutConstraint(item: separator, attribute: .bottom, relatedBy: .equal, toItem: contentView, attribute: .bottom, multiplier: 1, constant: 0))
		contentView.addConstraint(NSLayoutConstraint(item: separator, attribute: .left, relatedBy: .equal, toItem: contentView, attribute: .left, multiplier: 1, constant: 0))
		contentView.addConstraint(NSLayoutConstraint(item: separator, attribute: .right, relatedBy: .equal, toItem: contentView, attribute: .right, multiplier: 1, constant: 0))
		contentView.addConstraint(NSLayoutConstraint(item: separator, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 0.5))
	}

}
