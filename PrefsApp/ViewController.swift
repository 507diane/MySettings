//
//  ViewController.swift
//  PrefsApp
//
//  Created by Diane Christy on 10/27/15.
//  Copyright © 2015 Diane Christy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var txtFullName: UITextField!
    
    @IBOutlet weak var txtAddress: UITextField!
    
    @IBOutlet weak var Date: UIDatePicker!
    
    
    @IBAction func btnSave(sender: UIButton) {
        
        let defaults: NSUserDefaults = NSUserDefaults.standardUserDefaults()
        
        defaults.setObject(self.txtFullName.text, forKey: "fullname")
        defaults.setObject(self.txtAddress.text, forKey: "address")
        defaults.setObject(Date, forKey: "date")
        
        
        defaults.synchronize()
        
       
    }
    
    @IBAction func btnLoad(sender: UIButton) {
         let defaults: NSUserDefaults = NSUserDefaults.standardUserDefaults()
        
        if let fullNameNotNull = defaults.objectForKey("fullname") as? String {
            self.txtFullName.text = defaults.objectForKey("fullname") as? String
        }
        
        if let addressIsNotNill = defaults.objectForKey("address") as? String {
            self.txtAddress.text = defaults.objectForKey("address") as? String
        }
        
        
    }
    
    //date
    
    

    
//new method hiding keyboard
override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
    view.endEditing(true)
    super.touchesBegan(touches , withEvent: event)
}
//set delegate to all uitextfields
func textFieldShouldReturn(textField: UITextField!) -> Bool {
    self.view.endEditing(true)
    return false
}

override func viewDidLoad() {
    super.viewDidLoad()
    txtFullName.becomeFirstResponder()
    // Do any additional setup after loading the view, typically from a nib.
}


override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
}


}

