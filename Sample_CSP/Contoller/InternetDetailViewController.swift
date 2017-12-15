//
//  InternetDatailViewController.swift
//  Sample_CSP
//
//  Created by Cortez, Jairo on 11/29/17.
//  Copyright © 2017 Cortez, Jairo. All rights reserved.
//

import UIKit
import WebKit

public class InternetDetailViewController: UIViewController
{

    @IBOutlet weak var webViewer: WKWebView!
    @IBOutlet weak var textLabel: UILabel!
    var detailAddress : String?
    {
        didSet
        {
            configureDetailView()
        }
    }
    
    var detailText : String?
    {
        didSet
        {
            configureDetailView()
        }
    }
    
    override public func viewDidLoad()
        
    {
        super.viewDidLoad()
        setup()
        //do any additional setu after loading the view.
    }
    
        private func setup() -> Void
    {
        super.viewDidLoad()
        configureDetailView()
    }
    
     private func configureDetailView() -> Void
    {
        if detailAddress != nil
        {
            if let currentWebView = webViewer
            {
                let currentURL = URL(string: (detailAddress)!)
                let currentWebRequest = URLRequest(url: currentURL!)
                currentWebView.load(currentWebRequest)
            }
        }
        else
        {
            if let currentWebView = webViewer
            {
                let currentURL = URL (string: "http//www.google.com")
                currentWebView.load(URLRequest(url:currentURL!))
            }
        }
        if detailText != nil
        {
            if let currentText = textLabel
            {
                currentText.text = detailText
            }
        }
        else
        {
            if let currentText = textLabel
            {
                currentText.text = "jairo's CSP app internt screen"
            }
        }
    }
}













