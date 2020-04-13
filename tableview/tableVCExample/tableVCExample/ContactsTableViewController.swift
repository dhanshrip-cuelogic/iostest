//
//  ContactsTableViewController.swift
//  tableVCExample
//
//  Created by Dhanshri Pawar on 26/03/20.
//  Copyright © 2020 Dhanshri Pawar. All rights reserved.
//


/*
This project contains a table which shows list of states alphabetically.
On selecting any one state, its respective districts list is shown on other table view controller.
 
 NOTE:- Only Andra Pradesh, Arunachal Pradesh, Assam, Bihar, Chattisgarh and Maharashtra contains the list of districts for example purpose.
*/


import UIKit

class ContactsTableViewController: UITableViewController {
    
    let letters = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T",
                   "U","V","W","X","Y","Z"]
    
    let letterA = ["Andra Pradesh", "Arunachal Pradesh", "Assam"]
    let letterB = ["Bihar"]
    let letterC = ["Chattisgarh"]
    let letterD = [""]
    let letterE = [""]
    let letterF = [""]
    let letterG = ["Goa","Gujarat"]
    let letterH = ["Haryana", "Himachal Pradesh"]
    let letterI = [""]
    let letterJ = ["Jharkhand"]
    let letterK = ["Karnataka", "Kerela"]
    let letterL = [""]
    let letterM = ["Madhya Pradesh", "Meghalaya", "Manipur","Maharashtra","Mizoram"]
    let letterN = ["Nagaland"]
    let letterO = ["Orissa"]
    let letterP = ["Punjab"]
    let letterQ = [""]
    let letterR = ["Rajasthan"]
    let letterS = ["Sikkim"]
    let letterT = ["TamilNadu","Telangana","Tripura"]
    let letterU = ["Uttarakhand", "Uttar Pradesh"]
    let letterV = [""]
    let letterW = ["West Bengal"]
    let letterX = [""]
    let letterY = [""]
    let letterZ = [""]

    
    var stateData : [[String]] = [[""]]
    
    
        
    override func viewDidLoad() {
        super.viewDidLoad()

      stateData = [letterA,letterB,letterC,letterD,letterE,letterF,letterG,letterH,letterI,letterJ,letterK,letterL,letterM,letterN,letterO,letterP,letterQ,letterR,letterS,letterT,letterU,letterV,letterW,letterX,letterY,letterZ]
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return letters.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return stateData[section].count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return letters[section]
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier")
        
        if cell == nil
        {
            cell = UITableViewCell(style: .default, reuseIdentifier: "reuseIdentifier")
        }
        
        cell?.textLabel?.text = stateData[indexPath.section][indexPath.row]
        
        return cell!
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let districtPage = DistrictsTableTableViewController(nibName: "DistrictsTableTableViewController", bundle: nil)
    
        districtPage.state = stateData[indexPath.section][indexPath.row]
        
        navigationController?.pushViewController(districtPage, animated: true)
        
        
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
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
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
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
}
