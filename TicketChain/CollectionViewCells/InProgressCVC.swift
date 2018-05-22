//
//  InProgressCVC.swift
//  TicketChain
//
//  Created by Robert Wais on 5/19/18.
//  Copyright © 2018 Robert Wais. All rights reserved.
//

import UIKit

class InProgressCVC: UICollectionViewCell {
    
    @IBOutlet weak var lbl: UILabel!
    
    func configureCell(){
        lbl.text = "Change"
        self.layer.cornerRadius = self.layer.bounds.height/2 
    }
}
