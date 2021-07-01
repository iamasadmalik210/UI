//
//  AboutUsViewController.swift
//  UI
//
//  Created by Asad on 01/07/2021.
//

import UIKit

class AboutUsViewController: UIViewController {
    
    
    
    let myView = AboutUsView()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        view.addSubview(myView)
        
        
        myView.label.text = "Lorem ipsum dolor sit amet, consectetur adipsiscing elit. Curabitur orci purus, blandit quis velit quis, sollicitudin ornare ligula. Vestibulum henderit non lorem vitae iaculis. Suspendisse eget ullamacorper mi. Mauris vitae mi laoreet ornare. Mauris convallis fermentum varius. Nullam vestibulum turpis lugula, non blandit mi imperdiet id. Nam rhoncus, urna in eleifend blandit, purus mauris faucibius lectus, sed viverra nisi nibh ut nibg. Praesent ac rhoncus est, quis malesuada purus."
        
        
        
        
        
        
        view.backgroundColor = .systemBackground
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        myView.frame = CGRect(x: 0, y: view.safeAreaInsets.top + 10, width: view.width, height: view.height - 150)
    }

}
