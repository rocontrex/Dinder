//
//  CombineCardView.swift
//  Dinger
//
//  Created by Rodrigo Conte on 23/07/20.
//  Copyright © 2020 Rodrigo Conte. All rights reserved.
//

import UIKit

class CombineCardView: UIView {
    
    var user: User? {
        didSet {
            if let user = user {
                photoImageView.image = UIImage(named: user.photo)
                nameLabel.text = user.name
                ageLabel.text = String(user.age)
                descriptionLabel.text = user.phrase
            }
        }
    }
    
    let photoImageView: UIImageView = .photoImageView()
    
    let nameLabel: UILabel = .boldLabel(32, textColor: .white)
    let ageLabel: UILabel = .label(28, textColor: .white)
    let descriptionLabel: UILabel = .label(18, textColor: .white, numberOfLines: 2)
    
    let unlikeImageView: UIImageView = .iconCard(named: "card-deslike")
    let likeImageView: UIImageView = .iconCard(named: "card-like")
    
    override init(frame: CGRect) {
        super.init(frame:frame)
        
        layer.borderWidth = 0.3
        layer.borderColor = UIColor.lightGray.cgColor
        layer.cornerRadius = 8
        clipsToBounds = true
        
        nameLabel.addLabelShadow()
        ageLabel.addLabelShadow()
        descriptionLabel.addLabelShadow()
        
        addSubview(photoImageView)
        
        addSubview(unlikeImageView)
        unlikeImageView.setConstraints(
            top: topAnchor,
            leading: nil,
            trailling: trailingAnchor,
            botton: nil,
            padding: .init(top: 20, left: 0, bottom: 0, right: 20)
        )
        
        addSubview(likeImageView)
        likeImageView.setConstraints(
            top: topAnchor,
            leading: leadingAnchor,
            trailling: nil,
            botton: nil,
            padding: .init(top: 20, left: 20, bottom: 0, right: 0)
        )
        
        photoImageView.fillSuperView()
        
        let nameAgeStackView = UIStackView(arrangedSubviews: [nameLabel, ageLabel, UIView()])
        nameAgeStackView.spacing = 12
        
        let stackView = UIStackView(arrangedSubviews: [nameAgeStackView, descriptionLabel])
        stackView.distribution = .fillEqually
        stackView.axis = .vertical
        
        addSubview(stackView)
        stackView.setConstraints(
            top: nil,
            leading: leadingAnchor,
            trailling: trailingAnchor,
            botton: bottomAnchor,
            padding: .init(top: 0, left: 16, bottom: 16, right: 16))
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
}
