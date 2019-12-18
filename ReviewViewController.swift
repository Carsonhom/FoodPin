//
//  ReviewViewController.swift
//  FoodPin
//
//  Created by Ivan Hom on 7/21/15.
//  Copyright (c) 2015 Ivan Hom. All rights reserved.
//

import UIKit

class ReviewViewController: UIViewController {
    
    @IBOutlet weak var backgroundImageView:UIImageView!
    @IBOutlet weak var dialogView:UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        let blurEffect = UIBlurEffect(style: UIBlurEffectStyle.dark)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = view.bounds
        backgroundImageView.addSubview(blurEffectView)
        //dialogView.transform = CGAffineTransformMakeScale(0.0, 0.0)
        //dialogView.transform = CGAffineTransformMakeTranslation(0, 500)
        let scale = CGAffineTransform(scaleX: 0.0, y: 0.0)
        let translate = CGAffineTransform(translationX: 0, y: 500)
        dialogView.transform = scale.concatenating(translate)

    }
    
    override func viewDidAppear(_ animated: Bool) {
        // Spring animation
        UIView.animate(withDuration: 0.7, delay: 0.0, usingSpringWithDamping: 0.6, initialSpringVelocity: 0.5, options: [], animations: {
            self.dialogView.transform = CGAffineTransform(translationX: 0, y: 0)
        }, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
