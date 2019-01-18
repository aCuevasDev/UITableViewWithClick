//
//  Product.swift
//  UITableViewWithClick
//
//  Created by Alex Cuevas on 18/01/2019.
//  Copyright © 2019 Alex Cuevas. All rights reserved.
//

import Foundation
import UIKit

class Product {
    var image : UIImage = UIImage()
    var title : String = ""
    var description : String = ""
    
    init(title: String, description: String, image: UIImage) {
        self.title = title
        self.description = description
        self.image = image
    }
}
