//
//  CreativityViewController.swift
//  Sample_CSP
//
//  Created by Cortez, Jairo on 12/7/17.
//  Copyright © 2017 Cortez, Jairo. All rights reserved.
//

import UIKit

public class CreativityViewController:UICollectionViewContoller, UICollectionViewDelegateFlowLayout
{
    private let reuseIdentifier = "artIdentifier"
    private let sectionInsets = UIEdgeInsets(top: 50.0, left: 2.0, bottom: 500, right: 20.0)
    private let itemsPerRow : CGFloat = 3
    
    private lazy var artSelection : [UIImage?] =
    {
        return [
            UIImage (named: "cute"),
            UIImage (named: "husky"),
            UIImage (named: "cars"),
            UIImage (named: "deadpool"),
            UIImage (named: "time line"),
            UIImage (named: "web"),
            UIImage (named: "phone"),
            UIImage (named: "phones"),
            UIImage (named: "1"),
            UIImage (named: "2"),
            UIImage (named: "3")
            ]
    }()

    var largePhotoIndexPath: IndexPath?
    {
        didSet
        {
            var indexPaths = [IndexPath]()
            if let largePhotoIndexPath = largePhotoIndexPath
            {
                indexPaths.append(largePhotoIndexPath)
            }
            if let oldValue = oldValue
            {
                indexPaths.append(oldValue)
            }
            
           collectionView?.performBatchUpdates(
                {
                    self.collectionView?.reloadItems(at: indexPaths)
            })
            {
                completed in
                
                if let largePhotoIndexPath = self.largePhotoIndexPath
                {
                    self.collectionView?.scrollToItem(at: largePhotoIndexPath,
                                                   at: .centeredVertically,
                                                   animated: true)
                }
            }
        }
    }


    override public func viewDidLoad()
    {
        super.viewDidLoad()
    }
   
    override public func numberOfSections(in collectionView: UICollectionView) -> Int
    {
            return 1
    }

    override public func collectionView(_collectionView: UICollectionView,
                                         numberOfItemsInSection section: Int) -> Int
    {
        return artSelection.count
    }
   
    override public func collectionView(_collectionView: UICollectionView,
                                        cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
    {
        let artCell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! ArtCell
        
        artCell.backgroundColor = .blue
        artCell.imageView.image = artSelection [indexPath.row]
        artCell.image.text = " My Art"
        
        return artCell
    }
    
    public func collectionView(_ collectionView: UICollectionView,
                               layout collectionViewLayout: UICollectionViewLayout,
                               sizeForItemAt indexPath: IndexPath) -> CGSize{
        
     if indexPath == largePhotoIndexPath
     {

    let art = artSelection[indexPath.row]
    let size = collectionView.bounds.size
    let widthScale = (size.width / art!.size.with)  * CGFloat(0.80)
    let largeSize = CGSize(width: art!.size.width * widthScale, height: art!.size.height * widthScale)
    
    return largeSize

    }

    let paddingSpace = sectionInsets.left * (itemsPerRow + 1)
    let availableWidth = view.frame.width - paddingSpace
        let widthPerItem = availableWidth / itemsPerRow

        return CGSize(width: widthPerItem, height: widthPerItem)


    public func collectionView(_collectionView:UICollectionView,
                           layout collectionViewLayout: UICollectionViewLayout,
                           insetForSectionAT section: Int) -> UIEdgeInsets
    {
    return sectionInsets
    }

    override public func collectionView(_collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool
    {
        if largePhotoIndexPath == indexPath
        {
            largePhotoIndexPath = nil
        }
        else
        {
            largePhotoIndexPath = indexPath
        }
        
        return false
    }
}




















