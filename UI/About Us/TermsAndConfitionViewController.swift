//
//  TermsAndConfitionViewController.swift
//  UI
//
//  Created by Asad on 01/07/2021.
//

import UIKit

class TermsAndConfitionViewController: UIViewController {
    
    let myView =  AboutUsView()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        myView.label.font = .systemFont(ofSize: 18)
        
        
        myView.label.text = "Lorem ipsum dolor sit amet, consectetur adipsiscing elit. Curabitur orci purus, blandit quis velit quis, sollicitudin ornare ligula. Vestibulum henderit non lorem vitae iaculis. Suspendisse eget ullamacorper mi. Mauris vitae mi laoreet ornare. Mauris convallis fermentum varius. Nullam vestibulum turpis lugula, non blandit mi imperdiet id. Nam rhoncus, urna in eleifend blandit, purus mauris faucibius lectus, sed viverra nisi nibh ut nibg. Praesent ac rhoncus est, quis malesuada purus."
        
       
//        myView.label.text = "\u{2022} Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur orci purus, blandit quis velit quis, sollictudin ornare ligula. Vestibulum henderit non lorem vitae iaculis.\n Lorem ipusm dolor sit amet, consectetur adipscing elit."
////
//        myView.label.text = "\u{2022} Lorem ipusm dolor sit amet, consectetur adipscing elit."
//        myView.label.text = "\u{2022} Lorem ipsum dolor sit amet, consectetur adimpsicing elit. Curabitur orci purus, bladit quis velit quis, sollicitudin ornare ligula"

//        myView.label.text = "\u{2022} Lorem ipusm dolor sit amet, consectetur adipscing elit.Curabitur orci purus, bladit quis velit quis, sollicitudin ornare ligula"
//        myView.label.text = "\u{2022} Lorem ipusm dolor sit amet, consectetur adipscing elit."
//

       
        myView.versionLabel.text = nil
        
        
        
        view.addSubview(myView)
    }
    

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        
        myView.frame = CGRect(x: 0, y: view.safeAreaInsets.top + 10, width: view.width, height: view.height - 150)
        
    }

}
