//
//  ResturauntTableViewController.swift
//  FoodPin
//
//  Created by Ivan Hom on 5/26/15.
//  Copyright (c) 2015 Ivan Hom. All rights reserved.
//

import UIKit

class ResturauntTableViewController: UITableViewController {
    
     
    
    var restaurants:[Restaurant] = [
        Restaurant(name: "Cafe Deadend", type: "Coffee & Tea Shop", location: "G/F, 72 Po Hing Fong, Sheung Wan, Hong Kong", image: "cafedeadend.jpg", isVisited: true),
        Restaurant(name: "Homei", type: "Cafe", location: "Shop B, G/F, 22-24A Tai Ping San Street SOHO, Sheung Wan, Hong Kong", image: "homei.jpg", isVisited: false),
        Restaurant(name: "Teakha", type: "Tea House", location: "Shop B, 18 Tai Ping Shan Road SOHO, Sheung Wan, Hong Kong", image: "teakha.jpg", isVisited: false),
        Restaurant(name: "Cafe loisl", type: "Austrian / Causual Drink", location: "Shop B, 20 Tai Ping Shan Road SOHO, Sheung Wan, Hong Kong", image: "cafeloisl.jpg", isVisited: false),
        Restaurant(name: "Petite Oyster", type: "French", location: "24 Tai Ping Shan Road SOHO, Sheung Wan, Hong Kong", image: "petiteoyster.jpg", isVisited: false),
        Restaurant(name: "For Kee Restaurant", type: "Bakery", location: "Shop J-K., 200 Hollywood Road, SOHO, Sheung Wan, Hong Kong", image: "forkeerestaurant.jpg", isVisited: false),
        Restaurant(name: "Po's Atelier", type: "Bakery", location: "G/F, 62 Po Hing Fong, Sheung Wan, Hong Kong", image: "posatelier.jpg", isVisited: false),
        Restaurant(name: "Bourke Street Backery", type: "Chocolate", location: "633 Bourke St Sydney New South Wales 2010 Surry Hills", image: "bourkestreetbakery.jpg", isVisited: false),
        Restaurant(name: "Haigh's Chocolate", type: "Cafe", location: "412-414 George St Sydney New South Wales", image: "haighschocolate.jpg", isVisited: false),
        Restaurant(name: "Palomino Espresso", type: "American / Seafood", location: "Shop 1 61 York St Sydney New South Wales", image: "palominoespresso.jpg", isVisited: false),
        Restaurant(name: "Upstate", type: "American", location: "95 1st Ave New York, NY 10003", image: "upstate.jpg", isVisited: false),
        Restaurant(name: "Traif", type: "American", location: "229 S 4th St Brooklyn, NY 11211", image: "traif.jpg", isVisited: false),
        Restaurant(name: "Graham Avenue Meats", type: "Breakfast & Brunch", location: "445 Graham Ave Brooklyn, NY 11211", image: "grahamavenuemeats.jpg", isVisited: false),
        Restaurant(name: "Waffle & Wolf", type: "Coffee & Tea", location: "413 Graham Ave Brooklyn, NY 11211", image: "wafflewolf.jpg", isVisited: false),
        Restaurant(name: "Five Leaves", type: "Coffee & Tea", location: "18 Bedford Ave Brooklyn, NY 11222", image: "fiveleaves.jpg", isVisited: false),
        Restaurant(name: "Cafe Lore", type: "Latin American", location: "Sunset Park 4601 4th Ave Brooklyn, NY 11220", image: "cafelore.jpg", isVisited: false),
        Restaurant(name: "Confessional", type: "Spanish", location: "308 E 6th St New York, NY 10003", image: "confessional.jpg", isVisited: false),
        Restaurant(name: "Barrafina", type: "Spanish", location: "54 Frith Street London W1D 4SL United Kingdom", image: "barrafina.jpg", isVisited: false),
        Restaurant(name: "Donostia", type: "Spanish", location: "10 Seymour Place London W1H 7ND United Kingdom", image: "donostia.jpg", isVisited: false),
        Restaurant(name: "Royal Oak", type: "British", location: "2 Regency Street London SW1P 4BZ United Kingdom", image: "royaloak.jpg", isVisited: false),
        Restaurant(name: "Thai Cafe", type: "Thai", location: "22 Charlwood Street London SW1V 2DY Pimlico", image: "thaicafe.jpg", isVisited: false)
        ]
        
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        tableView.estimatedRowHeight = 36.0
        tableView.rowHeight = UITableViewAutomaticDimension
        
            

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.hidesBarsOnSwipe = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
       
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            // Return the number of rows in the section.
            return self.restaurants.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath:
            IndexPath) -> UITableViewCell {
            let cellIdentifier = "Cell"
            let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for:
            indexPath) as! CustomTableViewCell
            // Configure the cell...
            let restaurant = restaurants[indexPath.row]
            cell.nameLabel.text = restaurant.name
            cell.thumbnailImageView.image = UIImage(named: restaurant.image)
            cell.locationLabel.text = restaurant.location
            cell.typeLabel.text = restaurant.type
            cell.favImageView.isHidden = !restaurant.isVisited
            // Circular image
            cell.thumbnailImageView.layer.cornerRadius = cell.thumbnailImageView.frame.size.width /
            2
            cell.thumbnailImageView.clipsToBounds = true
            return cell
    }    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    */
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath:
        IndexPath) {
//        // Create an option menu as an action sheet
//        let optionMenu = UIAlertController(title: nil, message: "What do you want to do?",
//        preferredStyle: .ActionSheet)
//        // Add actions to the menu
//        let cancelAction = UIAlertAction(title: "Cancel", style: .Cancel, handler: nil)
//        optionMenu.addAction(cancelAction)
//        let callActionHandler = { (action:UIAlertAction!) -> Void in
//    let alertMessage = UIAlertController(title: "Service Unavailable", message: "Sorry, the call feature is not available yet. Please retry later.", preferredStyle: .Alert)
//    alertMessage.addAction(UIAlertAction(title: "OK", style: .Default, handler: nil))
//    self.presentViewController(alertMessage, animated: true, completion: nil)
//        }
//    var hereString = ""
//    if restaurantIsVisited[indexPath.row] {
//            hereString = "I have not been here"
//        }
//        else {
//            hereString = "I have been here"
//        }
//        let callAction = UIAlertAction(title: "Call " + "123-000-\(indexPath.row)", style:
//    UIAlertActionStyle.Default, handler: callActionHandler)
//        optionMenu.addAction(callAction)
//        let isVisitedAction = UIAlertAction(title: hereString, style: .Default, handler: {
//        (action:UIAlertAction!) -> Void in
//        let cell = tableView.cellForRowAtIndexPath(indexPath)
//            if self.restaurantIsVisited[indexPath.row] == true  {
//            self.restaurantIsVisited[indexPath.row] = false
//            cell?.accessoryType = .None
//            }
//            else {
//             self.restaurantIsVisited[indexPath.row] = true
//            cell?.accessoryType = .Checkmark
//            }
//  //      cell?.accessoryType = .Checkmark
//        })
//        optionMenu.addAction(isVisitedAction)
//        // Display the menu
//        self.presentViewController(optionMenu, animated: true, completion: nil)
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle:
        UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
        // Delete the row from the data source
        self.restaurants.remove(at: indexPath.row)
                
        self.tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
    override func tableView(_ tableView: UITableView, editActionsForRowAt indexPath:
            IndexPath) -> [UITableViewRowAction] {
            let shareAction = UITableViewRowAction(style: UITableViewRowActionStyle.default, title:
            "Share", handler: { (action:UITableViewRowAction, indexPath:IndexPath) -> Void in
            let shareMenu = UIAlertController(title: nil, message: "Share using",preferredStyle:.actionSheet)
            let twitterAction = UIAlertAction(title: "Twitter", style: UIAlertActionStyle.default, handler: nil)
            let facebookAction = UIAlertAction(title: "Facebook", style: UIAlertActionStyle.default, handler: nil)
            let emailAction = UIAlertAction(title: "Email", style: UIAlertActionStyle.default, handler: nil)
            let cancelAction = UIAlertAction(title: "Cancel", style: UIAlertActionStyle.cancel, handler: nil)
            shareMenu.addAction(twitterAction)
            shareMenu.addAction(facebookAction)
            shareMenu.addAction(emailAction)
            shareMenu.addAction(cancelAction)
            self.present(shareMenu, animated: true, completion: nil)
            }
            )
            let deleteAction = UITableViewRowAction(style: UITableViewRowActionStyle.default,
            title: "Delete",handler: { (action:UITableViewRowAction, indexPath:IndexPath) -> Void in
            // Delete the row from the data source
           self.restaurants.remove(at: indexPath.row)
        
            self.tableView.deleteRows(at: [indexPath], with: .fade)
            }
            )
            shareAction.backgroundColor = UIColor(red: 0/255.0, green: 166.0/255.0, blue: 0/255.0, alpha: 1.0)
            //deleteAction.backgroundColor = UIColor(red: 51.0/255.0, green: 51.0/255.0, blue:51.0/255.0, alpha: 1.0)
            return [deleteAction, shareAction]
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any!) {
        if segue.identifier == "showRestaurantDetail" {
            if let indexPath = self.tableView.indexPathForSelectedRow {
                let destinationController = segue.destination as!
        DetailViewController
                destinationController.restaurant = restaurants[indexPath.row]
                
            }
        }
    }

}
