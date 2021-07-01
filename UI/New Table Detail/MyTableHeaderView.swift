//
//  MyTableHeaderView.swift
//  UI
//
//  Created by Asad on 01/07/2021.
//

import UIKit

class MyTableHeaderView: UIView {

        
        private let imageView: UIImageView = {
            let imageView = UIImageView()

            imageView.contentMode = .scaleAspectFill
            imageView.image = UIImage(named: "kidimage")
            
            imageView.clipsToBounds = true
            imageView.layer.cornerRadius = 50
            


            return imageView

        }()
    
    private let nameLabel: UILabel = {
       let label = UILabel()
        label.text = "Bobby Hills"
        label.font = .systemFont(ofSize: 18,weight: .medium)

        
        
        return label
        
    }()
    
    private let guardianLabel: UILabel = {
       let label = UILabel()
        label.text = "Parent"
        label.font = .systemFont(ofSize: 14,weight:.light)
        
        
        return label
        
    }()

        override init(frame: CGRect) {
            super.init(frame: frame)
            
//            addSubview(imageView)
            addSubview(imageView)
            addSubview(nameLabel)
            addSubview(guardianLabel)
            
            backgroundColor = .systemBackground
            
            

        }
        
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
        
        override func layoutSubviews() {
            super.layoutSubviews()
            
            imageView.frame = CGRect(x: 10, y: 10, width: 100, height: 100)
            nameLabel.frame = CGRect(x: imageView.right+10, y: 20, width: width, height: 20)
            guardianLabel.frame = CGRect(x: imageView.right+10, y: nameLabel.bottom+10, width: width, height: 15)
            
        }
    }
   



