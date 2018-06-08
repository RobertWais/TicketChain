//
//  SignUpVC.swift
//  TicketChain
//
//  Created by Robert Wais on 5/19/18.
//  Copyright © 2018 Robert Wais. All rights reserved.
//

import UIKit

class SignUpVC: UIViewController {

    @IBOutlet var viewPop: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        viewPop.layer.cornerRadius = 20
        
        let blurEffect = UIBlurEffect(style: .regular)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = self.view.frame
        self.view.insertSubview(blurEffectView, at: 0)
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
