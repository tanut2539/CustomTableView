//
//  Dessert.swift
//  AdvanceTableView
//
//  Created by Tanut.leel on 1/27/2560 BE.
//  Copyright © 2560 BE Tanut Leelaparsert. All rights reserved.
//

import Foundation
import UIKit

class Dessert{
    
    var title : String!
    var images : UIImage!
    
    init(title:String,images:UIImage){
        self.title = title
        self.images = images
    }
    
    static func createCatagory()->[Dessert]{
        
        return [
            Dessert(title:"Strawberry",images:UIImage(named: "item1.jpg")!),
            Dessert(title:"Macaroons",images:UIImage(named: "item2.jpg")!),
            Dessert(title:"Donut",images:UIImage(named: "item3.jpg")!),
            Dessert(title:"Hamburger",images:UIImage(named: "item4.jpg")!),
            Dessert(title:"Yoghurt",images:UIImage(named: "item5.jpg")!),
            Dessert(title:"M&M Cookie",images:UIImage(named: "item6.jpg")!),
            Dessert(title:"Cup Cake",images:UIImage(named: "item7.jpg")!)
        ]
        
    }
    
}
