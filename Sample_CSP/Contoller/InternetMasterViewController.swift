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
    
    
    private(set lazy var internetTopics : [String] =
    {
        return [
        
        "Definition",
        "CSP",
        "CTEC",
        "Canyons",
        "Twitter",
        "Swift Guide"
        ]
    }()
    
    private var detailViewController : InternetDatailViewContrroller?
    
    private func setup() -> Void
    {
        addresses = [
            "http:www.google.com",
            "http:www.google.com",
            "http:www.google.com",
            "http:www.gogle.com",
            "http:www.gogle.com",
            "http:www.google.com",
            "http:www.google.com"
            
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
        //Uncomment the following line to prese selection between presenttations
        self.clearSelectionViewWillAppear = false
        
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
    override public func tableView(_ UITableView, UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
    let cell = tableView.dequeueReusbleCell(withIndentifier: "reuseIdentifier", for: indexPath)
    let currentText = internetTopics[indexPath.row]
    cell.textLabel!.text = currentText
   
    return cell
    }
    override public func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if seg.identifier! == "showDetail"
        {
            if let indexPath = self.tableView.indexPathForSelectedRow
            {
                let urlString = address [indexPath.row]
                let pageText : String
                if indexPath.row == 0
                {
                    pageText = " All the efinition you wrote"
                }
                else
                }
                    pgeText = innternetTopics[indexPath.row]
                }
                let controller = segue.destination as! InternetDetailViewController
                    
                    controller.detailAddress = urlString
                    controller.detaillText = pageText
                    controller.navigationItem.leftarButtonItem = splitViewController?.displayModeButtonItem
                    controller.navigation.leftItemsSuplementBackButton = true
                
            }
        }










