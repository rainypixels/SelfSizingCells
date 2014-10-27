//
//  CollectionViewCell.swift
//  SelfSizingCells
//
//  Created by Nishant Kothary on 10/26/14.
//  Copyright (c) 2014 Nishant Kothary. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var label: UILabel!
    
    var labelText : String? {
        set (newText) {
            label.text = newText
            label.preferredMaxLayoutWidth = 286
        }
        get {
            return label.text
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
    }

}
