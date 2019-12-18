//
//  ShareViewController.swift
//  FoodPin
//
//  Created by Ivan Hom on 8/14/15.
//  Copyright (c) 2015 Ivan Hom. All rights reserved.
//

import UIKit

class ShareViewController: UIViewController {
    
    @IBOutlet weak var facebookButton:UIButton!
    @IBOutlet weak var messageButton:UIButton!
    @IBOutlet weak var twitterButton:UIButton!
    @IBOutlet weak var emailButton:UIButton!
    @IBOutlet weak var backgroundImageView:UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        let blurEffect = UIBlurEffect(style: UIBlurEffectStyle.dark)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = view.bounds
        backgroundImageView.addSubview(blurEffectView)
        var translate = CGAffineTransform(translationX: 0, y: 500)
        facebookButton.transform = translate
        twitterButton.transform = translate
        translate = CGAffineTransform(translationX: 0, y: -500)
        messageButton.transform = translate
        emailButton.transform = translate
        
        
        

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        // Spring animation
        UIView.animate(withDuration: 0.7, delay: 0.0, options: [], animations: {
            self.facebookButton.transform = CGAffineTransform(translationX: 0, y: 0)
            }, completion: nil)
        UIView.animate(withDuration: 0.9, delay: 0.0, options: [], animations: {
            self.twitterButton.transform = CGAffineTransform(translationX: 0, y: 0)
            }, completion: nil)
        UIView.animate(withDuration: 0.9, delay: 0.0, options: [], animations: {
            self.messageButton.transform = CGAffineTransform(translationX: 0, y: 0)
            }, completion: nil)
        UIView.animate(withDuration: 0.7, delay: 0.0, options: [], animations: {
            self.emailButton.transform = CGAffineTransform(translationX: 0, y: 0)
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
