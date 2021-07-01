//
//  SelectUserProfileViewController.swift
//  UI
//
//  Created by Asad on 23/06/2021.
//

import UIKit

class SelectUserProfileViewController: UIViewController {
    
    var custom1 = CustomView()
    var custom2  = CustomView()
    var custom3 = CustomView()
    
    
    private let titleViewLabel : UILabel = {
        let label = UILabel()
        
        
        label.text = "For your family protection, please select your address from the list below"
        label.numberOfLines = 2
        label.textAlignment = .center
        
        return label
        
        
    }()
    
    private let nextButton: UIButton = {
       let button = UIButton()
        button.setTitle("Next", for: .normal)
        button.backgroundColor = .darkGray
        button.layer.cornerRadius = 10
        button.clipsToBounds = true

        return button
    }()
  
    
    private let myView = UIView()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        title = "Select User Profile"
        
        view.addSubview(titleViewLabel)
        view.addSubview(nextButton)
        view.addSubview(myView)
        
        
        myView.addSubview(custom1)
        myView.addSubview(custom2)
        myView.addSubview(custom3)

settingUPView()
    }
    
    private func settingUPView(){
        custom1.usernameLabel.text = "First Name"
        custom1.textfield.placeholder = "Type first name"
        
        
        custom2.usernameLabel.text = "Last Name"
        custom2.textfield.placeholder = "Type last name"
        
        
        custom3.usernameLabel.text = "Phone Numeber"
        custom3.textfield.placeholder = "Type phone number"

        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        let height:CGFloat = 70
        
        titleViewLabel.frame = CGRect(x: 20, y: view.safeAreaInsets.top + 20, width: view.width - 40, height: 50)
        
        myView.frame = CGRect(x: 20, y: titleViewLabel.bottom + 40, width: view.width - 40 , height: 300)

        custom1.frame = CGRect(x: 10, y: myView.safeAreaInsets.top+15, width: myView.width - 20, height: height)
        custom2.frame = CGRect(x: 10, y: custom1.bottom+15, width: myView.width - 20, height: height)

        custom3.frame = CGRect(x: 10, y: custom2.bottom+15, width: myView.width - 20, height: height)
        
        nextButton.frame = CGRect(x: 20, y: myView.bottom + 20, width: view.width-40, height: 40)
        
        



    }

    

}
