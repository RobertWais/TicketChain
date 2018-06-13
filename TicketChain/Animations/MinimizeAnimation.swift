//
//  MinimizeAnimation.swift
//  TicketChain
//
//  Created by Robert Wais on 6/12/18.
//  Copyright © 2018 Robert Wais. All rights reserved.
//

import UIKit

class MinimizeAnimation: NSObject, UIViewControllerAnimatedTransitioning {
    func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
        return 1.0
        
    }
   
    func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
        let fromViewController = transitionContext.viewController(forKey: UITransitionContextViewControllerKey.from)!
        let toViewController = transitionContext.viewController(forKey: UITransitionContextViewControllerKey.to)!
        let finalFrameForVC = transitionContext.finalFrame(for: toViewController)
        let containerView = transitionContext.containerView
        toViewController.view.frame = finalFrameForVC
        toViewController.view.alpha = 0.5
        containerView.addSubview(toViewController.view)
        containerView.sendSubview(toBack: toViewController.view)
        
        let snapshotView = fromViewController.view.snapshotView(afterScreenUpdates: false)
        snapshotView?.frame = fromViewController.view.frame
        containerView.addSubview(snapshotView!)
        
        fromViewController.view.removeFromSuperview()
        
        UIView.animate(withDuration: transitionDuration(using: transitionContext), animations: {
            snapshotView?.frame = finalFrameForVC.insetBy(dx: fromViewController.view.frame.size.width/2, dy: fromViewController.view.frame.size.height/2)
            toViewController.view.alpha = 1.0
        }, completion: {
            finished in
            snapshotView?.removeFromSuperview()
            transitionContext.completeTransition(true)
        })
    }
    
    
}

