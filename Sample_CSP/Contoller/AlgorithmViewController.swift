//
//  AlgorithmsViewController.swift
//  Sample_CSP
//
//  Created by Cortez, Jairo on 11/8/17.
//  Copyright © 2017 Cortez, Jairo. All rights reserved.
//

import UIKit

public class AlgorithmViewController: UIViewController
{
    
    
   
    private func setupAlgorithm() -> Void
    {
        var algorithmSteps : [String] = []
    
        //TODO: Define algorithm and all steps
        let algorithm : String = " these are the instructins to create a project in java using Eclipse and Github /n"
        let stepOne : String = "First, .... "
        let stepTwo : String = "Secound, ..."
        let stepThree :String = ".... ...."
    
        //todo: Finish adding all steps to the algorithm
        algorithmSteps = [stepOne, stepTwo, stepThree]
    
        let attributesDictionary = [NSAttributedStringKey.font : algorithmSteps.font]
        let fullAttributedString = NSMutableAttributedString(String: algorithm, attributes : attributesDictionary)
    
        for step in algorithmSteps
        {
            // mark: - Algorith definition
            let bullet :String="🖤"
            let formattedStep :String = "/n\(bullet) \(step)"
            let attributedStringStep : NSMutableAttributedString = NSMutableAttributedString(string: formattedStep)
            let paragraphStyle = createParagraphStyle()
    
            attributedStringStep.addAttributes([NSAttributedStringKey.paragraphStyle : paragraphStyle], range:
                NSMakeRange(0,attributedStringStep.length))
    
            fullAttributedString.append(attributedStringStep)
    
        }
        algorithm.attributedText = fullAttributedString
    }
    private func createParagraphStyle() -> NSParagraphStyle
    
    {
        
    
    
        let paragraphStyle: NSMuttableParagraphStyle = NSMuttableParagraphStyle();
        paragraphStyle.alignment = .left
        paragraphStyle.defaultTabInterval = 15
        paragraphStyle.firstLineHeadIndent = 20
        paragraphStyle.headIndent = 35
        
    
    return paragraphStyle;
        
    }

    override public func viewDidLoad()
    {
        super.viewDidLoad()
        setupAlgorithm()
        //Do any additional setup after loading the view
    }
    
    
}
