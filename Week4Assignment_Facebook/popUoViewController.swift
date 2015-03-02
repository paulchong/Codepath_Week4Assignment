//
//  popUoViewController.swift
//  Week4Assignment_Facebook
//
//  Created by Paul Chong on 2/28/15.
//  Copyright (c) 2015 Paul Chong. All rights reserved.
//

import UIKit

class popUoViewController: UIViewController {

    @IBOutlet weak var popUpImageView: UIImageView!
    
    var feedImage: UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        popUpImageView.image = feedImage

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func didPressDoneButton(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
