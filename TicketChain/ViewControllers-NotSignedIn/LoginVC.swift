//
//  ViewController.swift
//  TicketChain
//
//  Created by Robert Wais on 5/16/18.
//  Copyright © 2018 Robert Wais. All rights reserved.
//

import UIKit

class LoginVC: UIViewController, UIViewControllerTransitioningDelegate {

    @IBOutlet var loginBtn: UIButton!
    @IBOutlet var signUpBtn: UIButton!
    @IBOutlet var createBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createButtonBorders()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    let customAnimation = AnimationController()
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showAction" {
            
            let toViewController = segue.destination as UIViewController
            toViewController.transitioningDelegate = self
            
        }
    }
    func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        return customAnimation
    }
    

    func createButtonBorders(){
        addBorder(btn: loginBtn)
        addBorder(btn: signUpBtn)
        addBorder(btn: createBtn)
    }
    
    func addBorder(btn: UIButton!){
        btn.layer.borderColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        btn.layer.borderWidth = 1
        btn.layer.cornerRadius = btn.bounds.height/2
    }

}

