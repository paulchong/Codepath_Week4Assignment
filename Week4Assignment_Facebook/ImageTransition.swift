//
//  imageTransition.swift
//  Week4Assignment_Facebook
//
//  Created by Paul Chong on 3/2/15.
//  Copyright (c) 2015 Paul Chong. All rights reserved.
//

import UIKit

class ImageTransition: BaseTransition {
   
    override func presentTransition(containerView: UIView, fromViewController: UIViewController, toViewController: UIViewController) {
        
        var homeViewController = fromViewController as HomeViewController
        homeViewController.selectedImageView.hidden = true
        
        var popUpViewController = toViewController as popUoViewController
        
        popUpViewController.popUpImageView.hidden = true
        
        var movingImageView = UIImageView(image: homeViewController.selectedImageView.image)

        movingImageView.contentMode = homeViewController.selectedImageView.contentMode
        movingImageView.clipsToBounds = homeViewController.selectedImageView.clipsToBounds
        containerView.addSubview(movingImageView)
        
        var frame = containerView.convertRect(homeViewController.selectedImageView.frame, fromView: homeViewController.feedScrollView)
        movingImageView.frame = frame
        
        toViewController.view.alpha = 0
        UIView.animateWithDuration(duration, animations: {
            toViewController.view.alpha = 1
            movingImageView.frame = popUpViewController.popUpImageView.frame
        }) { (finished: Bool) -> Void in
            self.finish()
            popUpViewController.popUpImageView.hidden = false
            movingImageView.removeFromSuperview()
        }
    }
    
    override func dismissTransition(containerView: UIView, fromViewController: UIViewController, toViewController: UIViewController) {
        
        fromViewController.view.alpha = 1
        UIView.animateWithDuration(duration, animations: {
            fromViewController.view.alpha = 0
            }) { (finished: Bool) -> Void in
                self.finish()
        }
    }
    
}
