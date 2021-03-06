//
//  MyTrackerTableViewController.swift
//  Hack
//
//  Created by Prasanna Vishwas Ballal on 18/07/18.
//  Copyright © 2018 Sreeja Chowdhury. All rights reserved.
//

import UIKit

class MyTrackerTableViewController: UITableViewController {
    let trackerValues = ["Diet","Exercise","Medicine","Sleep","My Binder"]
    let primaryValues = ["Calories: 100/1500","Calories: 100/1500","Calories: 100/1500","Calories: 100/1500",""]
    let secondaryValues = ["Vit D Goal: 1/5","Vit D Goal: 1/5","Vit D Goal: 1/5","Vit D Goal: 1/5",""]
   let imageNames = ["launch1","launch1","launch1","launch1","launch1","launch1"]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 5
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90.0
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:TrackerCell = (tableView.dequeueReusableCell(withIdentifier: "test", for: indexPath) as? TrackerCell)!
        
        cell.trackerValue.text = trackerValues[indexPath.row]
        cell.primaryDescription.text = primaryValues[indexPath.row]
        cell.secondaryDescription.text = secondaryValues[indexPath.row]
        cell.imageForTracker.image = UIImage(named: imageNames[indexPath.row])
        cell.contentView.backgroundColor = UIColor.blue
        // Configure the cell...

        
        
        return cell
    }


    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
