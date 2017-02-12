//
//  ViewController.swift
//  TapTap
//
//  Created by Danial Ahmad on 2/10/17.
//  Copyright © 2017 iohex. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - Overrides
    // Removes the line from Navigation bar
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.shadowImage = UIImage ()
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for:
        UIBarMetrics.default)
    }
    
    
    // MARK: - Outlets
    
    
    @IBOutlet weak var countLabel: UILabel!
    
    var count = 0
    
    
    
    
    // MARK: - Interactions
    

    @IBAction func tapButton(_ sender: UIButton) {
       increaseCount()
    }

    @IBAction func tapResetButton(_ sender: UIBarButtonItem) {
        count = 0
        countLabel.text = "0"
    }
    
    
    @IBAction func hondTapButton(_ sender: UILongPressGestureRecognizer) {
        increaseCount()
        
    }
    
    // MARK: - Functions
    // Upon pressing the button Increase the number by +1
    
    func increaseCount() {
        count += 1
        countLabel.text = String(count)
    }
    
    
    
}

