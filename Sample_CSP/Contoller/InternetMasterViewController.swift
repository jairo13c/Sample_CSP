//
//  InternetMasterViewController.swift
//  Sample_CSP
//
//  Created by Cortez, Jairo on 11/29/17.
//  Copyright © 2017 Cortez, Jairo. All rights reserved.
//

import UIKit

public class InternetMasterViewController: UITableViewController
{
    
    
    private (set) lazy var internetTopics : [String] =
    {
        return [
            "Definition",
            "CSP",
            "CTEC",
            "Canyons",
            "Twitter",
            "Swift Language Guide"
        ]
    }()
    
    private lazy var addresses: [String] = []
    
    private var detailViewController : InternetDetailViewController?
    
    private func setup() -> Void
    {
        addresses = [
            "http:www.google.com",
            "https://canyons.instructure.com",
            "https://student.canyonsdistrict.org",
            "https://www.foxsports.com",
            "https://www.facebook.com",
            "https://www.instagram.com",
            "https://www.rainbowsymphonystore.com"
            
        ]
        if let splitView = splitViewController
        {
            let currentControllers = splitView.viewControllers
            detailViewController = currentControllers[0] as? InternetDetailViewController
            
            
        }
    }
    override public func viewDidLoad()
    {
        super.viewDidLoad()
        setup()
        //Uncomment the following line to prese selection between presentations
        self.clearsSelectionOnViewWillAppear = false
        
    }
    
    //Mark: - Table view data source
    
    override public func numberOfSections(in tableView: UITableView) -> Int
    {
        // #warning incomplete implemetation, return the number of sections
        return 1
        
    }
    override public func tableView (_ tableView : UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return internetTopics.count
    }
    override public func tableView(_ tableView : UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        let currentText = internetTopics[indexPath.row]
        cell.textLabel!.text = currentText
        
        return cell
    }
    override public func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.identifier! == "showDetail"
        {
            if let indexPath = self.tableView.indexPathForSelectedRow
            {
                let urlString = addresses [indexPath.row]
                let pageText : String
                if indexPath.row == 0
                {
                    pageText = " All thed efinition you wrote"
                }
                else
                {
                    pageText = internetTopics[indexPath.row]
                }
                let controller = segue.destination as! InternetDetailViewController
                
                controller.detailAddress = urlString
                controller.detailText = pageText
                controller.navigationItem.leftBarButtonItem = splitViewController?.displayModeButtonItem
                controller.navigationItem.leftItemsSupplementBackButton = true
                
            }
        }
    }
}










