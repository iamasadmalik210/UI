//
//  TextTableViewCell.swift
//  UI
//
//  Created by Asad on 24/06/2021.
//

import UIKit

class TextTableViewCell: UITableViewCell {
   


    
    public let myImageView: UIImageView = {
        let imageView = UIImageView()
        
        imageView.contentMode = .scaleAspectFill
        imageView.image = UIImage(named: "location")
        
        
        
        return imageView
        
    }()
        
        static let identifier = "TextTableViewCell"
    
        public var titleLabel : UILabel = {
           let label = UILabel()
            
            label.font = UIFont.systemFont(ofSize: 15,weight: .light)
            return label
            
            
        }()
        
        
        
        
        
        override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
            super.init(style: style, reuseIdentifier: reuseIdentifier)
            
            contentView.addSubview(titleLabel)
            contentView.addSubview(myImageView)
            contentView.backgroundColor = .systemBackground
            
        }
        
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
        
        
        override func layoutSubviews() {
            super.layoutSubviews()
            
            
            myImageView.frame = CGRect(x: 10, y: 10, width: 40, height: 40)
            titleLabel.frame = CGRect(x: myImageView.right + 5, y: 15, width: contentView.frame.width - 20, height: 25)
//            titleLabel.center = contentView.center
            
            
            
        }
      
}
    


