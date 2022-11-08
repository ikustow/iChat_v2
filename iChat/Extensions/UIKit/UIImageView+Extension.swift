//
//  UIImageView+Extension.swift
//  iChat
//
//  Created by Ilya on 07.11.2022.
//

import Foundation
import UIKit

extension UIImageView {
    
    convenience init (image: UIImage?, contentMode: UIView.ContentMode){
        self.init()
        self.image = image
        self.contentMode = contentMode
       
    }
    
}
