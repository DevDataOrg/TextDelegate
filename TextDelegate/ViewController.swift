//
//  ViewController.swift
//  TextDelegate
//
//  Created by Artem on 14/02/2019.
//  Copyright © 2019 Artem. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var changedTextLabel: UILabel!
    
    @IBOutlet weak var enterTextEdit: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        enterTextEdit.delegate = self
        enterTextEdit.becomeFirstResponder()
        
        
        
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == enterTextEdit{
           textField.resignFirstResponder()
        }
        else {
           textField.becomeFirstResponder()
        }
        return true
    }
    

    
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        if textField == enterTextEdit {
            changedTextLabel.text = textField.text
            changedTextLabel.textColor = #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)
        }
        else {
        //changedTextLabel.text = textField.text
        //MySEcond.mySecondLabel.text = textField.text
          
        }
    }
    
    
    
    @IBAction func changeTextButton(_ sender: UIButton) {
        changedTextLabel.text = "Default TEXT"
        changedTextLabel.textColor = #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1)
    }
    

}

