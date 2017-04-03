//
//  loginMainScreen.swift
//  carioca
//
//  Created by ripon on 4/3/17.
//  Copyright © 2017 Arnaud Schloune. All rights reserved.
//

import UIKit

class loginMainScreen: UIViewController{
    
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var password: UITextField!
    
    let x = "velometric"
    let y = "test"
    
    
    @IBAction func login(_ sender: Any) {
        
        let alert1 : UIAlertView = UIAlertView(title: "Velometric", message: "The Username or Password is blank", delegate: nil, cancelButtonTitle: "Ahh! Please Fill all")
        
        let alert2 : UIAlertView = UIAlertView(title: "Velometric", message: "The Username or Password did Not Match", delegate: nil, cancelButtonTitle: "Username = velometric & password = test")
        
        
        if(name.text!.isEmpty || password.text!.isEmpty){
            alert1.show()
        } else if(name.text==x && password.text!==y){
            
            let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let newViewController = storyBoard.instantiateViewController(withIdentifier: "pastStory") as! DemoViewController
            self.present(newViewController, animated: true, completion: nil)
        }else{
             alert2.show()
        }
    }
}
