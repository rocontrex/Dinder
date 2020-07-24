//
//  UiImageView.swift
//  Dinger
//
//  Created by Rodrigo Conte on 24/07/20.
//  Copyright © 2020 Rodrigo Conte. All rights reserved.
//

import UIKit

extension UIImageView {
    
    static func photoImageView (named: String? = nil) -> UIImageView {
        let imageView = UIImageView()
        if let named = named {
            imageView.image = UIImage(named: named)
        }
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        return imageView
    }
    
    static func iconCard (named: String) ->UIImageView {
        let imageView = UIImageView()
        imageView.image = UIImage(named: named)
        imageView.size(size: .init(width: 70, height: 70))
        return imageView
    }
    
}
