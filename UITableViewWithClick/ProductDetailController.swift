//
//  ProductDetailController.swift
//  UITableViewWithClick
//
//  Created by Alex Cuevas on 18/01/2019.
//  Copyright © 2019 Alex Cuevas. All rights reserved.
//

import UIKit

class ProductDetailController: UIViewController {
    
    @IBOutlet weak var imgDetailProduct: UIImageView!
    @IBOutlet weak var titleDetailProduct: UILabel!
    @IBOutlet weak var descriptionDetailProduct: UITextView!
    
    var product : Product!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imgDetailProduct.image = product.image
        titleDetailProduct.text = product.title
        descriptionDetailProduct.text = product.description
    }

}
