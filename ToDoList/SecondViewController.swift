//
//  SecondViewController.swift
//  ToDoList
//
//  Created by Scott Williams on 9/17/17.
//  Copyright © 2017 Scott Williams. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var newItemLabel: UILabel!
    @IBOutlet weak var newItemNameTextField: UITextField!
    
    //button press handler
    @IBAction func addItemButton(_ sender: Any) {
        self.addItemToList();
    }
    
    func addItemToList() {
        if(newItemNameTextField.text != "") {
            list.append(newItemNameTextField.text!);
        }
        newItemNameTextField.text = "";
    }
    
    //checks if we entered valid input in the text field
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if (textField.text != "") {
            self.newItemNameTextField.resignFirstResponder();
            self.addItemToList();
            return true;
        }
        return false;
    }
    
    override func viewDidLoad() {
        super.viewDidLoad();
        self.newItemNameTextField.delegate = self;
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning();
        // Dispose of any resources that can be recreated.
    }


}

