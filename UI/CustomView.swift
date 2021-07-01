//
//  CustomView.swift
//  UI
//
//  Created by Asad on 23/06/2021.
//

import UIKit

public class CustomView: UIView {
    
    
    public let usernameLabel : UILabel = {
        let label = UILabel()
        label.textColor = UIColor.black
        
        label.font = UIFont.systemFont(ofSize: 12)
        return label
        
        
    }()
    
    
    public let textfield : UITextField = {
       let textfield = UITextField()
        textfield.becomeFirstResponder()
        
        textfield.returnKeyType = .continue
        textfield.textColor = .black
        
        return textfield
        
        
    }()
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(usernameLabel)
        addSubview(textfield)
        
        backgroundColor = .white
        clipsToBounds = true
        layer.cornerRadius = 10
        layer.borderWidth = 1
        
        textfield.delegate = self
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    public override func layoutSubviews() {
        super.layoutSubviews()
        
        
        usernameLabel.frame = CGRect(x: 10, y: 5, width: frame.width - 20, height: 20)
        textfield.frame = CGRect(x: 10, y: usernameLabel.bottom, width: frame.width - 20, height: 40)
    }
    
    
    var keyboardHeight = CGFloat(0)   // real KB height will be set later

   
    
    
    }

    
    




extension CustomView: UITextFieldDelegate{
    public func textFieldShouldReturn(_ textField: UITextField) -> Bool {

        let nextTag = textField.tag + 1

            if let nextResponder = textField.superview?.viewWithTag(nextTag) {
                nextResponder.becomeFirstResponder()
            } else {
                textField.resignFirstResponder()
            }

            return true

    }
public  func textFieldDidBeginEditing(_ textField: UITextField) {
    
    
            
            layer.borderWidth = 1
        layer.borderColor = UIColor.orange.cgColor
    usernameLabel.textColor = UIColor.orange

        }
        
      public  func textFieldDidEndEditing(_ textField: UITextField) {
            
        
        layer.borderWidth = 1
        layer.borderColor = UIColor.black.cgColor
        usernameLabel.textColor = UIColor.black

            
        }

}
