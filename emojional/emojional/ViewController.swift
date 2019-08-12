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
    let customMessages = [
        "angry face" : ["Calm down" , "Take a deep breath" , "It is not that big of a deal"],
        "nervous face" : ["Do not worry" , "It is okay" , "Calm down, it will be okay"],
        
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func showMessage(sender: UIButton){
        
        if let selectedEmotion = sender.titleLabel?.text{
            let number = Int.random(in: 0 ... 2)
            let titleText = "Welcome to my App"
            let messageText = emojis[selectedEmotion]!
            
            let emojiMessage = customMessages[emojis[selectedEmotion]!]?[number]

            let alertController = UIAlertController(title: "\(titleText)", message: "\(emojiMessage!)", preferredStyle: UIAlertController.Style.alert)
            
            alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            present(alertController, animated: true, completion: nil)
        }
      

    }
    
}

