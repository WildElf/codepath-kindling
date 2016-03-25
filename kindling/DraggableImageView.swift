//
//  DraggableImageView.swift
//  kindling
//
//  Created by Eric Zim on 3/24/16.
//  Copyright © 2016 ez. All rights reserved.
//

import UIKit

class DraggableImageView: UIView {

	@IBOutlet var centerImageView: UIView!
	@IBOutlet weak var centerImage: UIImageView!
	@IBOutlet weak var imageLabel: UILabel!
	
	var label: String? {
		get { return imageLabel?.text }
		set { imageLabel.text = newValue }
	}
	
	var image: UIImage? {
		get { return centerImage.image }
		set { centerImage.image = newValue }
	}

	required init(coder aDecoder: NSCoder) {
		
		super.init(coder: aDecoder)!
		
		initSubviews()
	}
	
	override init (frame: CGRect) {
		super.init(frame: frame)
		initSubviews()
	}
	
	func initSubviews() {
		let nib = UINib(nibName: "DraggableImageView", bundle: nil)
		nib.instantiateWithOwner(self, options: nil)
		centerImageView.frame = bounds
		addSubview(centerImageView)
	}
	/*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */

	
}
