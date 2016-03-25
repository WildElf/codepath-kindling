//
//  ViewController.swift
//  kindling
//
//  Created by Eric Zim on 3/24/16.
//  Copyright © 2016 ez. All rights reserved.
//

import UIKit

class CardsViewController: UIViewController {
    @IBOutlet var rec: UIPanGestureRecognizer!
    
	@IBOutlet weak var centerImage: DraggableImageView!

	var initialcenter: CGPoint?
    
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
        rec.translationInView(centerImage)
        initialcenter = centerImage.center

		let imageBounds = CGRectMake(40, 72, view.bounds.width, 304)
		centerImage = DraggableImageView(frame: imageBounds)
		//centerImage.frame = CGRectMake(40, 72, 100, 100)
		centerImage.image = UIImage(named: "ryan")
		centerImage.imageLabel.text = "Gosling"
		view.addSubview(centerImage);
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}

    @IBAction func onSwipe(sender: UIPanGestureRecognizer) {
//        centerImage.frame.offsetInPlace(dx: 5.0, dy: 0)
        let translation = sender.translationInView(view)
       //let point = sender.locationInView(self.view)
    
        //rec.setTranslation(translation, inView: centerImage)
        centerImage.center = CGPointMake((initialcenter?.x)! + translation.x , (initialcenter?.y)!)
        print("swiping")
    }

}

