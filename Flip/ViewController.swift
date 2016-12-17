//
//  ViewController.swift
//  Flip
//
//  Created by Brendan Mcmahon on 12/16/16.
//  Copyright © 2016 Brendan Mcmahon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var firstView : UIView!
    var secondView : UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        firstView = UIView(frame: CGRect(x: 32, y: 32, width: 128, height: 128))
        secondView = UIView(frame: CGRect(x: 32, y: 32, width: 128, height: 128))
        
        firstView.backgroundColor = UIColor.red
        secondView.backgroundColor = UIColor.blue
        
        secondView.isHidden = true
        firstView.isHidden = false
        view.addSubview(firstView)
        view.addSubview(secondView)
        
      
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        perform(#selector(flip), with: nil, afterDelay: 0)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func flip() {
        let transitionOptions: UIViewAnimationOptions = [.transitionFlipFromRight, .showHideTransitionViews]
        
        UIView.transition(with: firstView, duration: 1.0, options: transitionOptions, animations: {
            self.firstView.isHidden = !self.firstView.isHidden
        }, completion: nil)
        
        UIView.transition(with: secondView, duration: 1.0, options: transitionOptions, animations: {
            self.secondView.isHidden = !self.firstView.isHidden
        }, completion: nil)
    }

}

