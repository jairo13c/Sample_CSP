//
//  BucketItemCell.swift
//  Sample_CSP
//
//  Created by Cortez, Jairo on 1/9/18.
//  Copyright © 2018 Cortez, Jairo. All rights reserved.
//

import UIKit

public class BucketItemCell: UITableViewCell
{
    
    @IBOutlet weak var bucketItemText: UILabel!
    @IBOutlet weak var bucketItemSymbol: UILabel!
    @IBOutlet weak var bucketItemSignature: UILabel!
    
}
var bucketItem : BucketItem!
{
    disdSet
        {
            updateCellView()
        }
    private func randomEmoji()->String
    {
        let emojiStart = 0x1F601
        let emojiEnd = 0x1F64F
        let symbolStart = 0x1F680
        let symbolEnd = 0x1FC5
        
        let emojiRange = 79
        let symbolRange = 70
        
        let ascii = emojiStart +
            Int(arc4random_uniform(UInt32(emojiRange)))
        let emoji = UnicodeScalar(ascii)?.description
        return emoji
    }
}
