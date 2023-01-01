//
//  Header.swift
//  Dars 12.29Cel
//
//  Created by Mac on 30/12/22.
//

import UIKit

class Header: UITableViewHeaderFooterView {
    let img = UIImageView()
    let label = UILabel()
    
    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        img.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(img)
        img.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10).isActive = true
        img.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 10).isActive = true
        img.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -10).isActive = true
        //img.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10).isActive = true
        img.heightAnchor.constraint(equalToConstant: 300).isActive = true
        img.image = UIImage(named: "img")
        
        label.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(label)
        label.topAnchor.constraint(equalTo: img.bottomAnchor, constant: 10).isActive = true
        label.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 10).isActive = true
        label.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -10).isActive = true
        label.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10).isActive = true
        label.text = "Baxtiyorni sevimli oshi"
        label.textAlignment = .center
        label.font = UIFont(name: "Botanity", size: 60)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
   

}
