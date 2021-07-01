//
//  AboutUsView.swift
//  UI
//
//  Created by Asad on 01/07/2021.
//

import UIKit

class AboutUsView: UIView {
    
    
    private let logoImageView: UIImageView = {
       let imageView = UIImageView()
        
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 75
        imageView.backgroundColor = .systemRed
        
        return imageView
        
        
        
    }()
    
    
    public let label : UILabel = {
       let label = UILabel()
        
        label.numberOfLines = 15
//        label.textAlignment = .center
        label.backgroundColor = .red
        return label
        
    }()
    
    
    public let versionLabel : UILabel = {
       let label = UILabel()
        
        label.text = "Version 2.33"
        
        return label
        
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        
        clipsToBounds = true
        layer.cornerRadius = 20
        
//
        addSubview(logoImageView)
        addSubview(label)
        addSubview(versionLabel)
        
        backgroundColor = .lightGray
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        logoImageView.frame = CGRect(x: (width/2) - logoImageView.width/2, y: 50, width: 150, height: 150)
        
        label.frame = CGRect(x: 20, y: logoImageView.bottom, width: width-40, height: 400)
        
        
        versionLabel.frame = CGRect(x: (width/2) - versionLabel.width/2, y: label.bottom, width: 100, height: 30)
        
    }
   
}
