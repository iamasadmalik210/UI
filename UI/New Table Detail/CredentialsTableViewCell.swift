//
//  CredentialsTableViewCell.swift
//  UI
//
//  Created by Asad on 01/07/2021.
//

import UIKit
struct CredentialsModal{
    
    let kind:String?
    let text:String?
    let kindImage : UIImage?
    
}

class CredentialsTableViewCell: UITableViewCell {

        static let identifier = "CredentialsTableViewCell"
    
    
    private let credImage: UIImageView = {
       let imageView = UIImageView()
        
        imageView.contentMode = .center
        imageView.tintColor = .gray
        
        return imageView
    }()
    
    
    
    public var kindLabel : UILabel = {
       let label = UILabel()
        
        label.font = UIFont.systemFont(ofSize: 12,weight: .light)
        
        return label
        
        
    }()
    
        
        
        public var titleLabel : UILabel = {
           let label = UILabel()
            
            label.font = UIFont.systemFont(ofSize: 14,weight: .medium)
            
            return label
            
            
        }()
        
        
        
        
        override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
            super.init(style: style, reuseIdentifier: reuseIdentifier)
            
            contentView.addSubview(credImage)
            contentView.addSubview(titleLabel)
            contentView.addSubview(kindLabel)
            contentView.backgroundColor = .systemBackground
            
        }
        
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
        
        
        override func layoutSubviews() {
            super.layoutSubviews()
            
            
            credImage.frame = CGRect(x: 10, y: 10, width: 50, height: 50)
            kindLabel.frame = CGRect(x: credImage.right+10, y: 5, width: width - credImage.width, height: 20)
            titleLabel.frame = CGRect(x: credImage.right + 10, y: kindLabel.bottom, width: contentView.width - 40, height: 40)
            
            
            
        }
    
    
    public func configure(_ viewModels: CredentialsModal){
        
        kindLabel.text = viewModels.kind
        titleLabel.text = viewModels.text
        credImage.image = viewModels.kindImage
        
        
    }
    
    
        
    }



