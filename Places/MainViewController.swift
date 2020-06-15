//
//  MainViewController.swift
//  Places
//
//  Created by Анна Гареева on 15.06.2020.
//  Copyright © 2020 Anna Gareeva. All rights reserved.
//

import UIKit

class MainViewController: UITableViewController {

    let places = [ModelCell(name: "Donna pizza", location: "Surgut", image: "pizza", type: .restaruant),
                  ModelCell(name: "Thai Pho", location: "Surgut", image: "pizza", type: .cafe),
                  ModelCell(name: "BK", location: "Surgut", image: "pizza", type: .cafe),
                  ModelCell(name: "KFC", location: "Surgut", image: "pizza", type: .cafe),
                  ModelCell(name: "Las Vegas Pizza", location: "Surgut", image: "pizza", type: .restaruant),
                  ModelCell(name: "Saima", location: "Surgut", image: "pizza", type: .park)]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return places.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CustomCell
        let place = places[indexPath.row]
        cell.NamePlace.text = place.name
        cell.LocationPlace.text = place.location
        cell.imagePlace.image = UIImage(named: place.image)
        cell.imagePlace.layer.cornerRadius = cell.imagePlace.frame.height / 2
        cell.imagePlace.clipsToBounds = true
        return cell
    }
    

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 85
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
