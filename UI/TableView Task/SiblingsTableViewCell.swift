//
//  SiblingsTableViewCell.swift
//  UI
//
//  Created by Asad on 24/06/2021.
//

import UIKit

struct Siblings {
    let title:String
    let kind:String
    let image:UIImage?
}

class SiblingsTableViewCell: UITableViewCell {
    static let identifier = "SiblingsTableViewCell"
    
    
    
    public let myImageView: UIImageView = {
        let imageView = UIImageView()
        
        imageView.contentMode = .scaleAspectFill
        imageView.image = UIImage(named: "kidimage")
        
        
        
        return imageView
        
    }()
    
    
    
    public var titleLabel : UILabel = {
       let label = UILabel()
        
        label.font = UIFont.systemFont(ofSize: 15,weight: .medium)
        return label
        
        
    }()
    
    
    public var kindLabel : UILabel = {
       let label = UILabel()
        
        label.font = UIFont.systemFont(ofSize: 12,weight: .light)

        return label
        
        
    }()
    
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        contentView.addSubview(titleLabel)
        contentView.addSubview(kindLabel)
        contentView.addSubview(myImageView)
        contentView.backgroundColor = .systemBackground
        
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        myImageView.frame = CGRect(x: 10, y: 10, width: 50, height: 50)
        titleLabel.frame = CGRect(x: myImageView.right+5, y: 8, width: contentView.frame.width/3, height: 25)
        
        kindLabel.frame = CGRect(x: myImageView.right+5, y: titleLabel.bottom , width: contentView.frame.width/3, height: 25)
        
        myImageView.layer.cornerRadius = myImageView.width/2
        myImageView.clipsToBounds = true
        
        
        
        
    }
    
    public func configure(_ viewModels:Siblings){
        titleLabel.text = viewModels.title
        kindLabel.text = viewModels.kind
        myImageView.image = viewModels.image
        
    }
  

}
