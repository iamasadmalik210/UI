//
//  CreateCredentialsViewController.swift
//  UI
//
//  Created by Asad on 23/06/2021.
//

import UIKit

class CreateCredentialsViewController: UIViewController {
    
    var password:String = ""
    public let scrollView : UIScrollView = {
       let scrollview = UIScrollView()
        
        return scrollview
        
    }()


    var custom1 = CustomView()
    var custom2  = CustomView()
    var custom3 = CustomView()
    var custom4 = CustomView()
    
    
    var userNameField : UITextField!
    var passwordField : UITextField!
    var confirmPasswordField: UITextField!
    var recommendedEmailField: UITextField!
    
    
    
    private let getStartedButton: UIButton = {
       let button = UIButton()
        button.setTitle("Get Started", for: .normal)
        button.backgroundColor = .darkGray
        button.layer.cornerRadius = 10
        button.clipsToBounds = true
        return button
    }()
    private let titleViewLabel : UILabel = {
        let label = UILabel()
        
        label.font = UIFont.systemFont(ofSize: 15)

        label.text = "Password need to contain one special character(#,+,$,@,etc.)"
        label.numberOfLines = 2
//        label.textAlignment = .center
        
        return label
        
        
    }()
    
    private let recommendedTitle : UILabel = {
        let label = UILabel()
        
        label.font = UIFont.systemFont(ofSize: 20,weight: .medium)

        label.text = "Recommended"
        label.numberOfLines = 2
//        label.textAlignment = .center
        
        return label
        
        
    }()
    private let recommendedSideTitle : UILabel = {
        let label = UILabel()
        
        label.font = UIFont.systemFont(ofSize: 15)
        label.text = "Enter email for password recovery. We will notify you if somebody logs in an another device"
        label.numberOfLines = 3
        
        return label
        
        
    }()
    
    
    
    private let myView = UIView()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        title = "Select User Profile"
        
        view.addSubview(getStartedButton)
        view.addSubview(myView)
        
        
        myView.addSubview(custom1)
        myView.addSubview(custom2)
        myView.addSubview(custom3)
        
        myView.addSubview(titleViewLabel)
        
        view.addSubview(recommendedTitle)
        view.addSubview(custom4)
        view.addSubview(recommendedSideTitle)

            settingUPView()
        // Code for setting up UITextField and its gestures....
        
        custom1.textfield.becomeFirstResponder()
        
        
        
        

    }
        
        
        
   

   
    
    
    private func settingUPView(){
        userNameField = custom1.textfield
        passwordField = custom2.textfield
        confirmPasswordField = custom3.textfield
        recommendedEmailField = custom4.textfield
        
        
        custom1.usernameLabel.text = "Username"
//        custom1.textfield.placeholder = "Type Username"
//        custom1.textfield.keyboardType = .emailAddress
//        custom1.textfield.tag = 1
        userNameField.placeholder = "Type Username"
        userNameField.keyboardType = .emailAddress
        userNameField.tag = 1
//
        custom2.usernameLabel.text = "Password"
//        custom2.textfield.placeholder = "Enter Password"
//        custom2.textfield.isSecureTextEntry = true
//        custom2.textfield.tag = 2

        passwordField.placeholder = "Enter Password"
        passwordField.isSecureTextEntry = true
        passwordField.tag = 2
        
        
        custom3.usernameLabel.text = "Confirm Password"
        confirmPasswordField.placeholder = "Enter Confirm Password"
        confirmPasswordField.isSecureTextEntry = true
        confirmPasswordField.tag = 3
        self.password = confirmPasswordField.text!

        
        custom4.usernameLabel.text = "Email"
        custom4.textfield.placeholder = "Enter Email"
        custom4.textfield.tag = 4

        
        print(custom2.textfield.tag)
        

    
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        let height:CGFloat = 70
        
        
        myView.frame = CGRect(x: 20, y: view.safeAreaInsets.top + 30, width: view.width - 40 , height: 300)

        custom1.frame = CGRect(x: 10, y: myView.safeAreaInsets.top+15, width: myView.width - 20, height: height)
        custom2.frame = CGRect(x: 10, y: custom1.bottom+15, width: myView.width - 20, height: height)

        custom3.frame = CGRect(x: 10, y: custom2.bottom+15, width: myView.width - 20, height: height)
        titleViewLabel.frame = CGRect(x: 10, y: custom3.bottom, width: view.width - 40, height: 50)

        
        recommendedTitle.frame = CGRect(x: 25, y: myView.bottom+40, width: view.width - 40, height: 50)
        custom4.frame = CGRect(x: 25, y: recommendedTitle.bottom+15, width: myView.width - 15, height: height)
        recommendedSideTitle.frame = CGRect(x: 25, y: custom4.bottom, width: view.width-45, height: 50)

        
        getStartedButton.frame = CGRect(x: 25, y: recommendedSideTitle.bottom+40, width: view.width-45, height: 50)

        
        
        
        
        



    }


    

}
