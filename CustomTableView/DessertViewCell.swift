//
//  DessertViewCell.swift
//  AdvanceTableView
//
//  Created by Tanut.leel on 1/27/2560 BE.
//  Copyright © 2560 BE Tanut Leelaparsert. All rights reserved.
//

import UIKit

class DessertViewCell: UICollectionViewCell {
    
    @IBOutlet weak var Img: UIImageView!
    @IBOutlet weak var Title: UILabel!
    
    var myDessert: Dessert!{
        
        didSet{
            updateData()
        }
    }
    
    func updateData(){
        
        Title.text = myDessert.title
        Img.image = myDessert.images
        
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.layer.cornerRadius = 10.0
        self.clipsToBounds = true
    }

    
}
