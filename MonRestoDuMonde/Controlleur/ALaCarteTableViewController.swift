//
//  ALaCarteTableViewController.swift
//  MonRestoDuMonde
//
//  Created by Marame on 05/10/2018.
//  Copyright © 2018 Gueye Gora. All rights reserved.
//

import UIKit

class ALaCarteTableViewController: UITableViewController {

    let cellID = "PlatCell"
    var tousLesPlats = [ALaCarte]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let vue = UIView(frame: tableView.bounds)
        vue.layer.addSublayer(Degrade())
        tableView.backgroundView = vue
        
        tousLesPlats = LesPlats.obtenir.carteCompete()
       
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return tousLesPlats.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return tousLesPlats[section].plats.count
    }

   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let plat = tousLesPlats[indexPath.section].plats[indexPath.row]
        if let cell = tableView.dequeueReusableCell(withIdentifier: cellID) as? PlatCell {
            cell.miseEnplace(plat: plat)
            return cell
        }
        return UITableViewCell()
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 130
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
       let typeDePlat = tousLesPlats[section].type
       
        switch typeDePlat {
        case .entree: return "Nos entrées"
        case .platPrincipal: return "Nos plats principaux"
        case .dessert: return "Le coin des gourmants"
            
        }
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
