//
//  DetailViewController.swift
//  FoodPin
//
//  Created by Ivan Hom on 6/16/15.
//  Copyright (c) 2015 Ivan Hom. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet var restaurantImageView:UIImageView!
    @IBOutlet var tableView:UITableView!
    
    
    
    
    var restaurant:Restaurant!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.restaurantImageView.image = UIImage(named: restaurant.image)
        self.tableView.backgroundColor = UIColor(red: 240.0/255.0, green: 240.0/255.0, blue: 240.0/255.0, alpha: 0.2)
        self.tableView.tableFooterView = UIView(frame: CGRect.zero)
        self.tableView.separatorColor = UIColor(red: 240.0/255.0, green: 240.0/255.0, blue: 240.0/255.0, alpha: 0.8)
        title = self.restaurant.name
        tableView.estimatedRowHeight = 36.0
        tableView.rowHeight = UITableViewAutomaticDimension
 //       title = "Carson's Restaurant"
        
        //self.restaurantNameLabel.text = restaurantNameString
        //self.restaurantLocationLabel.text = restaurantLocationString
        //self.restaurantTypeLabel.text = restaurantTypeString

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.hidesBarsOnSwipe = false
        self.navigationController?.setNavigationBarHidden(false, animated: true)
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
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) ->
        UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DetailViewCell", for: indexPath)
        as! DetailTableViewCell
        cell.backgroundColor = UIColor.clear
        // Configure the cell...
        switch indexPath.row {
        case 0:
            cell.fieldLabel.text = "Name"
            cell.valueLabel.text = restaurant.name
        case 1:
            cell.fieldLabel.text = "Type"
            cell.valueLabel.text = restaurant.type
        case 2:
            cell.fieldLabel.text = "Location"
            cell.valueLabel.text = restaurant.location
        case 3:
            cell.fieldLabel.text = "Been here"
            cell.valueLabel.text = (restaurant.isVisited) ? "Yes, I’ve been here before" : "No"
        default:
            cell.fieldLabel.text = ""
            cell.valueLabel.text = ""
        }
        return cell
    }
    
    @IBAction func close(_ segue:UIStoryboardSegue) {
    }

}
