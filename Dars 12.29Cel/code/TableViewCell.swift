//
//  TableViewCell.swift
//  Dars 12.29Cel
//
//  Created by Mac on 29/12/22.
//

import UIKit

class TableViewCell: UITableViewCell {
    let label = UILabel()
    let image = UIImageView()

    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        label.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(label)
        label.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10).isActive = true
        label.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 10).isActive = true
        label.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -10).isActive = true
        label.numberOfLines = 0
        
        image.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(image)
        image.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 10).isActive = true
        image.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 10).isActive = true
        image.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10).isActive = true
        image.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -10).isActive  = true
        image.heightAnchor.constraint(equalToConstant: contentView.frame.size.width / 2).isActive = true
        image.image = UIImage(systemName: "house")
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
