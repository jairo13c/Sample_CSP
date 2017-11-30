//
//  InternetMasterViewController.swift
//  Sample_CSP
//
//  Created by Cortez, Jairo on 11/29/17.
//  Copyright © 2017 Cortez, Jairo. All rights reserved.
//

import UIKit

class InternetMasterViewController: UITableViewController
{
    private (set lazy var intrnetTopics : [String] =
    {
        return [
        
        "Definition"
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
    override public func tableView (_ tableView : UITableView, numberOFRowsInSection section: Int) -> Int
    {
        return internetTopics.count
    }
    override public func tableView: UITableView, cellForRowAtt indexPath: IndexPath)  -> UITableViewCell
    {
    let cell = tableView.dequeueReusbleCell(withIndentifier: "reuseIdentifier", for: indexPath)
    let currentText = internetTopics[indePAth.row]
    cell.textLAbel!.text = currentText
    return cell
    }
}








