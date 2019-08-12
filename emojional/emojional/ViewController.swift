//
//  ViewController.swift
//  emojional
//
//  Created by Mia on 8/12/19.
//  Copyright © 2019 Mia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
 
    let emojis = ["😡" : "angry face" , "😬" : "nervous face"]
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func showMessage(sender: UIButton){
        
        if let selectedEmotion = sender.titleLabel?.text{
            let titleText = "Welcome to my App"
            let messageText = emojis[selectedEmotion]
            
            let alertController = UIAlertController(title: "\(titleText)", message: "\(messageText)", preferredStyle: UIAlertController.Style.alert)
            
            alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            present(alertController, animated: true, completion: nil)
        }
      

    }
    
}

