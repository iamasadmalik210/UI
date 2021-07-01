//
//  ViewController.swift
//  UI
//
//  Created by Asad on 23/06/2021.
//

import UIKit
import IQKeyboardManager



class ViewController: UIViewController {
    
    var keyboard:IQKeyboardManager?
    
    var tableView = TableView()

    private let titleViewLabel : UILabel = {
        let label = UILabel()
        
        
        label.text = "For your family protection, please select your address from the list below"
        label.font = UIFont.systemFont(ofSize: 18)
        label.numberOfLines = 2
        label.textAlignment = .center
        
        return label
        
        
    }()
  
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        view.addSubview(titleViewLabel)
        
        view.addSubview(tableView)

        title = "Confirm your identity"
        
        view.backgroundColor = .systemGray
        tableView.tableView.backgroundColor = .systemGray
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        titleViewLabel.frame = CGRect(x: 20, y: view.safeAreaInsets.top + 50, width: view.width - 40, height: 50)
        
        tableView.frame = CGRect(x: 20, y: titleViewLabel.bottom + 40, width: view.width - 40 , height: view.frame.height/2)
      
        
    }


}




extension UIView {
    var width: CGFloat {
        return frame.size.width
    }

    var height: CGFloat {
        return frame.size.height
    }

    var left: CGFloat {
        return frame.origin.x
    }

    var right: CGFloat {
        return left + width
    }

    var top: CGFloat {
        return frame.origin.y
    }

    var bottom: CGFloat {
        return top + height
    }
}




