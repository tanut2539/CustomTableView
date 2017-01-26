//
//  subClass.swift
//  CustomTableView
//
//  Created by Tanut.leel on 1/27/2560 BE.
//  Copyright © 2560 BE Tanut Leelaparsert. All rights reserved.
//

import UIKit

class subClass: UITableViewCell {
    
    var dessert = Dessert.createCatagory()
    
    @IBOutlet weak var collectionView: UICollectionView!
    
}

extension subClass: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dessert.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let myCell = collectionView.dequeueReusableCell(withReuseIdentifier: "dessertCell", for: indexPath) as! DessertViewCell
        
        myCell.myDessert = dessert[indexPath.row]
        
        return myCell
    }
    
}
