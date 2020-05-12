//
//  ViewController.swift
//  myConnect
//
//  Created by Lev Yakovel on 07.03.2020.
//  Copyright © 2020 Lev Yakovel. All rights reserved.
//

import UIKit

class loginViewController: UIViewController {
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var scrollView: UIScrollView!
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShown(notification:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide(notification:)), name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    @objc func keyboardWillShown( notification: Notification){
        let info = notification.userInfo! as NSDictionary
        let size = (info.value(forKey: UIResponder.keyboardFrameEndUserInfoKey) as! NSValue).cgRectValue.size
        
        let contentInsets = UIEdgeInsets(top: 0, left: 0, bottom: size.height, right: 0)
        self .scrollView?.contentInset = contentInsets
        self.scrollView.scrollIndicatorInsets = contentInsets 
    }
    
    @objc func keyboardWillHide( notification: Notification){
    }
    
    @IBAction func unplug( unwindSeque: UIStoryboardSegue){
        print("Congrats, you'r unpluged.")
    }
    @IBAction func plugButtonTapped(_ sender: UIButton) {
      
    }
    
}
