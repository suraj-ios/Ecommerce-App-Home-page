//
//  ViewController.swift
//  Ecommerce App
//
//  Created by Suraj on 30/10/18.
//  Copyright © 2018 Suraj. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController,UITableViewDelegate,UITableViewDataSource,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.title = "Home"
        
    }
    
    
    //Tableview Delegate & Datasource method
    func numberOfSections(in tableView: UITableView) -> Int {
        return 5
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "HomeTableViewCell", for: indexPath) as! HomeTableViewCell
        
        cell.homePageCollectionview.delegate = self
        cell.homePageCollectionview.dataSource = self
        cell.homePageCollectionview.tag = indexPath.section
        
        
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 100
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0{
            return "Ecommerce Title-1"
        }
        else if section == 1{
            return "Ecommerce Title-2"
        }
        else if section == 2{
            return "Ecommerce Title-3"
        }
        else if section == 3{
            return "Ecommerce Title-4"
        }
        else{
            return "Ecommerce Title-5"
        }
        return "Last"
    }
    
    
    //Collectionview delegate and datasource set here
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return 5
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HomeCollectionViewCell", for: indexPath) as! HomeCollectionViewCell
        
        if collectionView.tag == 0{
            cell.homePageImage.image = UIImage(named: "eCommerce-Shopping-Cart.jpg")
        }
        else if collectionView.tag == 1{
            cell.homePageImage.image = UIImage(named: "2.jpg")
        }
        else if collectionView.tag == 2{
            cell.homePageImage.image = UIImage(named: "3.jpg")
        }
        else if collectionView.tag == 3{
            cell.homePageImage.image = UIImage(named: "4.jpg")
        }
        else{
            cell.homePageImage.image = UIImage(named: "2.jpg")
        }
        
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: 125, height: 100)
    }
    
}

