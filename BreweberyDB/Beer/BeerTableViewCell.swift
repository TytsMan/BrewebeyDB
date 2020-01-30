//
//  CollectionViewCellTest.swift
//  BreweberyDB
//
//  Created by Tyts on 29.01.2020.
//  Copyright © 2020 Tyts&Co. All rights reserved.
//

import UIKit

class BeerTableViewCell: UITableViewCell {
    
    @IBOutlet weak var imageCell: UIImageView!
    @IBOutlet weak var ttlLabel: UILabel!
    
    public var beer: Beer? = nil
    
    public func configureImage() -> Void {
        if let labels = self.beer?.labels,
            let imageURLString = labels.icon {
            ImageProvider.image(url: imageURLString) { (image) in
                self.imageCell.image = image
            }
        }
    }
}
