//
//  PlacesToVisitCell.swift
//  GoDanang
//
//  Created by Марк Пушкарь on 17.06.2023.
//

import UIKit

class PlacesToVisitCell: UICollectionViewCell {
 
       var image: UIImageView = {
           let image = UIImageView()
           image.toAutoLayout()
           image.contentMode = .scaleAspectFill
           image.layer.cornerRadius = 10
           image.clipsToBounds = true
           return image
       }()
       
       
       var nameLabel: UILabel = {
           var view = UILabel()
           view.textColor = .lightGray
           view.text = ""
           view.numberOfLines = 0
           view.lineBreakMode = .byWordWrapping
           view.toAutoLayout()
           return view
       }()
       
       override init(frame: CGRect) {
           super.init(frame: frame)
           setupViews()
       }
       
       
       required init?(coder: NSCoder) {
           fatalError("init(coder:) has not been implemented")
       }
       
       private func setupViews() {
           backgroundColor = UIColor(red: 0.17, green: 0.22, blue: 0.24, alpha: 1)
           layer.borderColor = UIColor.black.cgColor
           layer.borderWidth = 2
           layer.cornerRadius = 10
           contentView.addSubviews(image, nameLabel)

           let constrains = [
               image.leadingAnchor.constraint(equalTo: self.leadingAnchor),
               image.trailingAnchor.constraint(equalTo: self.trailingAnchor),
               image.topAnchor.constraint(equalTo: self.topAnchor),
               image.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -40),
              
               
               nameLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 8),
               nameLabel.topAnchor.constraint(equalTo: image.bottomAnchor),
               nameLabel.widthAnchor.constraint(equalToConstant: 110),
              
           ]
           NSLayoutConstraint.activate(constrains)
       }
}
