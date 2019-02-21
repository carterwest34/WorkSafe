//
//  ViewController.swift
//  WorkSafe
//
//  Created by Kaven Eder on 2/14/19.
//  Copyright © 2019 Kaven Eder. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //Creating a color gradient for the background color of the login screen
        let pineColor = UIColor(red: 0/255, green:165/255, blue:114/255, alpha: 1.0)
        let teaColor = UIColor(displayP3Red: 208/255, green: 240/255, blue: 192/255, alpha: 1.0)
        let layer = CAGradientLayer()
        layer.frame = view.bounds
        layer.colors = [pineColor.cgColor, teaColor.cgColor]
        view.layer.insertSublayer(layer, at: 0)
        self.view.addGestureRecognizer(UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing(_:))))
        self.navigationController!.navigationBar.isHidden = true

    }
    
    //MARK Variables
    var adminUsername = "adminUsername"
    var adminPassword = "adminPassword"
    var facultyUsername = "facultyUsername"
    var facultyPassword = "facultyPassword"
    
    //MARK IBOutlets
    @IBOutlet weak var username_text: UITextField!
    @IBOutlet weak var password_text: UITextField!
    @IBOutlet weak var userSegmentedController: UISegmentedControl!
    
    
    //MARK IBActions
    @IBAction func Enter_tapped(_ sender: Any) {
        if userSegmentedController.tag == 1 {
            if username_text.text != "facultyUsername" || password_text.text != "facultyPassword" {
                let loginErrorAlert = UIAlertController(title: "Login Error", message: "Either your username or password was incorrect. Please try again.", preferredStyle: .alert)
                let loginErrorAction = UIAlertAction(title: "Ok", style: .destructive)
                loginErrorAlert.addAction(loginErrorAction)
                self.present(loginErrorAlert, animated: true, completion: nil)
            } else if username_text.text == "facultyUsername" && password_text.text == "facultyPassword" {
                performSegue(withIdentifier: "loginToFacultyHomeScreen", sender: self)
                self.navigationController!.navigationBar.isHidden = false
                
            }
        }
    }
}

