//
//  AbstractionViewController.swift
//  Sample_CSP
//
//  Created by Cortez, Jairo on 11/27/17.
//  Copyright © 2017 Cortez, Jairo. All rights reserved.
//

import UIKit

public class AbstractionViewController: UIPageViewController, UIPageViewControllerDataSource

{
    //mark: Array of subviews
    private (set) lazy var orderedAbstractionViews : [UIViewController] =
    {
        return[
            self.newAbstractionViewController(abstractionLevel:"Block"),
            self.newAbstractionViewController(abstractionLevel:"java"),
            self.newAbstractionViewController(abstractionLevel:"byteCode"),
            self.newAbstractionViewController(abstractionLevel:"binary"),
            self.newAbstractionViewController(abstractionLevel:"andGate"),
            ]
    }()
    
    //helper method to retive he correct ViewController
    private func newAbstractionViewController(abstractionLevel : String) -> UIViewController
{
    return UIStorybord(name: "main", bundle: nil).instantiateViewController(withIdentifier: "\(abstractionLevel)ViewController")
    
    }
    override public func viewDidLoad()
    {
        super.ViewDidLoad()
        dataSource = self
        
        if let firstViewController = orderedAbstractionViews.first
        {
            setViewController([firstViewController],
                               direction: .forwod,
                               animated: true,
                               completio:nil)
            
        }
    }
    //mark:- Required protocol methods forr UIPgeViewControllerDatasource
    public func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController?
    {
    guard let viewControllerIndex = orderedAbstractionViews.index(of: viewController)
    else
    {
        return nil
    }

    let nextIndex = viewControllerIndex + 1
        
    guard nextIndex >= 0
    else
    {
        return nil
        
    }
       guard nextIndex < orderedAbstractionViews.count
        else
       {
          return orderedAbstractionViews.first
        }
        return orderedAbstractionViews[nextIndex]

}
    public func presentationIndex(for pageViewController: UIPageViewControllerIndex = orderedAbstractionViews.index(of: firstViewController)
    else
    {
        return orderedAbstractionViews.count
    }
    return firstViewControllerIndex
    
    }
}
    
    












