//
//  FeedVC.swift
//  TicketChain
//
//  Created by Robert Wais on 5/19/18.
//  Copyright © 2018 Robert Wais. All rights reserved.
//

import UIKit

class FeedVC: UIViewController {
    
    @IBOutlet var collectionView: UICollectionView!
    @IBOutlet var collectionViewProgress: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionViewProgress.dataSource = self
        collectionViewProgress.delegate = self
        
        collectionView.dataSource = self
        collectionView.delegate = self
        
        //note
        //collectionViewProgress.register(InProgressCVC.self, forCellWithReuseIdentifier: "InProgressCVC")
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

extension FeedVC:  UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if(collectionView.tag==0){
            if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "UnclaimedCVC", for: indexPath) as? UnclaimedCVC {
                cell.configureCell()
                return cell
            }else{
                return UICollectionViewCell()
            }
        }else if(collectionView.tag==1){
            if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "InProgressCVC", for: indexPath) as? InProgressCVC {
                cell.configureCell()
                return cell
            }else{
                return UICollectionViewCell()
            }
        }else{
            return UICollectionViewCell()
        }
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
        
    }
}


