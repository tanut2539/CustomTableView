//
//  ViewController.swift
//  CustomTableView
//
//  Created by Tanut.leel on 1/27/2560 BE.
//  Copyright © 2560 BE Tanut Leelaparsert. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var pageControll: UIPageControl!
    
    var categories = ["Dessert","Food"]
    
    var timer : Timer!
    var updateCount : Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateCount = 0
        timer = Timer.scheduledTimer(timeInterval: 2.5,target: self, selector: #selector(ViewController.updateTimer), userInfo: nil, repeats: true)
    }
    
    internal func updateTimer()
    {
        if(updateCount <= 2){
            pageControll.currentPage = updateCount
            imageView.image = UIImage(named: String(updateCount+1) + ".jpg")
            updateCount = updateCount + 1
        }
        else{
            updateCount = 0
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}


extension ViewController : UITableViewDataSource,UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return categories[section]
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return categories.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "subClass") as! subClass
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
    {
        return 176.0;
    }
    
}
