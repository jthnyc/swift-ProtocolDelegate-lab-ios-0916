//
//  EmojiSelectionViewController.swift
//  ShoppingCart
//
//  Created by Jim Campagno on 8/10/16.
//  Copyright © 2016 Gamesmith, LLC. All rights reserved.
//

import UIKit

class EmojiSelectionViewController: UIViewController {
    
    
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    
    var emojiDelegate: EmojiCreation?
    
    @IBAction func saveButton(_ sender: AnyObject) {
        
        let leftFieldText = textField1.text!
        let rightFieldText = textField2.text!
        
      //  let bothTexts = (leftFieldText, rightFieldText)
        
        self.emojiDelegate?.create(emojiGroup: (leftFieldText, rightFieldText))
        
        dismiss(animated: true, completion: nil)
        
        
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red:0.22, green:0.33, blue:0.58, alpha:1.00)
    }
    
}
