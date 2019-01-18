//
//  ViewController.swift
//  UITableViewWithClick
//
//  Created by Alex Cuevas on 16/01/2019.
//  Copyright © 2019 Alex Cuevas. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return products.count
    }
    @IBOutlet weak var tableView: UITableView!
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let myCell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath) as! CustomTableViewCell
        myCell.imgCell.image = products[indexPath.row].image
        myCell.titleCell.text = products[indexPath.row].title
        myCell.descriptionCell.text = products[indexPath.row].description
        
        return myCell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Pokemons"
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            let vc = storyboard!.instantiateViewController(withIdentifier: "detailProduct") as! ProductDetailController
            
            vc.product = products[indexPath.row]
            
            /*Definir un texto especial para el botón de volver según lo que le preceda*/
            let backItem = UIBarButtonItem()
            backItem.title = "Home"
            navigationItem.backBarButtonItem = backItem
            
            self.navigationController?.pushViewController(vc, animated: true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }


}

