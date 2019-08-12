//
//  ViewController.swift
//  emojional
//
//  Created by Mia on 8/12/19.
//  Copyright © 2019 Mia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func showMessage(sender: UIButton){
        
        let alertController = UIAlertController(title: "This is a test", message: "If you see this, it works!", preferredStyle: UIAlertController.Style.alert)
        
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        present(alertController, animated: true, completion: nil)

    }
    
}

