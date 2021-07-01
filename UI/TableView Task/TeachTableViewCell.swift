//
//  TeachTableViewCell.swift
//  UI
//
//  Created by Asad on 24/06/2021.
//

import UIKit

class TeachTableViewCell: UITableViewCell {

    static let identifier = "TeachTableViewCell"
    
    
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
        contentView.backgroundColor = .systemBackground
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        
        titleLabel.frame = CGRect(x: 10, y: 10, width: contentView.width/2, height: 40)
        
        kindLabel.frame = CGRect(x: titleLabel.right+40, y: 10, width: contentView.width/2, height: 40)

        
        
        
    }
    
}
